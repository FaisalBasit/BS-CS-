# System Review & Complete Overview

## Quick Answer: Is Everything Ready to Publish?

**Almost — but review these items first:**

### ⚠️ Issues to Resolve Before Publishing

1. **Unsubscribe URL Mismatch** — In `email-outreach-microsoft365.json` and `followup-auto-send.json`, the unsubscribe link points to `https://www.styliquetechnologies.com/unsubscribe?email=...` but the actual webhook handler in `unsubscribe-handler.json` listens at `https://aiagent369.app.n8n.cloud/webhook/unsubscribe?email=...`. These need to match.

2. **~~Schedule Overlap~~** — **RESOLVED.** Follow-up auto-send trigger moved to `7:00 AM` (was `8:00 AM`). The digest still runs at `8:30 AM`, giving a **1.5-hour buffer** — enough to process 540+ emails at the 10s rate limit. No action needed.

3. **~~`email-outreach.json` `.first()` bug~~** — **RESOLVED.** `email-outreach-microsoft365.json` now correctly uses `$('Generate Tracking ID & Prep Data2').item.json` to reference the current loop item. No action needed.

---

## Complete System Overview

### What This System Does

The Stylique Lead Automation Agent is a fully automated n8n-based pipeline that **finds fashion brands** (via Instagram, Google Search, and LinkedIn), **enriches their data**, **classifies them into service tiers**, **assigns them to sales team members**, **sends personalized AI-generated emails via Microsoft 365 Outlook**, **follows up automatically at Day 3, 7, and 14**, **tracks email opens**, and **sends daily team digests via Microsoft Teams and Email**.

---

### System Architecture (End to End)

```
┌──────────────────────────────────────────────────────────────────────┐
│                    DAILY EXECUTION TIMELINE                          │
│                                                                      │
│  2:00 AM ─── Instagram Scraper (Apify) → New leads → Google Sheet   │
│  3:00 AM ─── Google Search Scraper (Serper) → New leads → Sheet     │
│  5:00 AM ─── Classification & Team Assignment → Sheet updated       │
│  Daily ───── Apollo Enrichment → Email/phone → Sheet updated        │
│  7:00 AM ─── Auto Follow-Up Emails (Day 3/7/14) → Outlook → Sheet  │
│  8:30 AM ─── Daily Team Digest → Teams + Email                      │
│  9:00 AM ─── Initial Outreach Emails (new leads) → Outlook → Sheet  │
│  9:00 AM ─── LinkedIn/Evaboot Import → New leads → Sheet            │
│  On-demand ─ Email Open Tracking (webhook) → Sheet updated          │
│  On-demand ─ Unsubscribe Handler (webhook) → Sheet updated          │
└──────────────────────────────────────────────────────────────────────┘
```

---

### Module-by-Module Breakdown

#### MODULE 1: Lead Scraping (3 Sources)

| Source | Workflow File | Trigger | What It Does |
|--------|--------------|---------|-------------|
| **Instagram** | `instagram.json` | Daily 2:00 AM | Uses Apify's Instagram Search Scraper to find fashion brands. Reads keywords/cities from `Instagram_Search_Config` sheet tab. Filters by minimum followers. Saves to CRM Sheet1. |
| **Google Search** | `googlesearch.json` | Daily 3:00 AM | Uses Serper API to find fashion brand websites. Reads queries from `GoogleSearch_Search_Config` sheet tab. Scrapes contact page, about page, and homepage for emails/phones. Detects e-commerce platform (Shopify, WooCommerce, etc). |
| **LinkedIn** | `linkedin.json` | Daily 9:00 AM | Reads Evaboot CSV exports from Google Drive. Reads file references from `LinkedIn_Search_Config` sheet tab. Saves to both CRM Sheet1 and a separate Contacts sheet. |

**Weekly Rotation:** All three scrapers use a weekly rotation system. The config sheet has multiple weeks of search parameters. The system automatically calculates which week to use based on `floor((now - Jan 1 2025) / 7 days) % total_weeks`.

#### MODULE 2: Data Enrichment

| Workflow | Trigger | What It Does |
|----------|---------|-------------|
| `apollo-enrichment.json` | Daily (scheduled) | Two parallel paths: **LinkedIn path** — loops through LinkedIn contacts, checks for LinkedIn URL, calls Apollo's people/match API to find verified email. **Other leads path** — loops through Google Search/Maps/Instagram leads, calls Apollo's domain search API. Both paths extract decision-maker name, role, verified email, phone. Includes rate-limiting wait nodes between API calls and `continueOnFail` for resilience. |

#### MODULE 3: Classification & Assignment

| Workflow | Trigger | What It Does |
|----------|---------|-------------|
| `classification-assignment.json` | Daily 5:00 AM | Reads leads where `Assigned_Sales_Owner` is empty. Classifies into tiers based on website + followers. Reads team roster from `Team_Config` sheet tab. Round-robin assigns to team members. Sets `Outreach_Status` based on enrichment state (e.g., "Ready for Outreach", "Pending Enrichment", "Manual Research Required"). **Note:** Follow-up dates are NOT set here — they are set by the email-outreach workflow after the email is successfully sent. |

**Classification Rules:**
```
No website + <10K followers   →  Stylique Lite
Has website + <10K followers  →  Stylique Pro
Has website + ≥10K followers  →  Stylique Ultimate
No website + ≥10K followers   →  Stylique Pro (fallback)
```

**Outreach Status Logic (set by classification):**
- `Ready for Outreach` — enrichment complete + has email, OR already had email from scraper
- `Manual Research Required` — enrichment returned no email / no LinkedIn URL
- `Pending Enrichment` — not yet enriched

**Team Assignment:**
- Reads `Team_Config` tab dynamically (no hardcoded names)
- Filters for `Active=TRUE` and `Receives_Leads=TRUE`
- Matches lead's tier to team member's `Tier_Assignment` column
- Round-robin within matching members

#### MODULE 4: Initial Email Outreach

| Workflow | Trigger | What It Does |
|----------|---------|-------------|
| `email-outreach-microsoft365.json` | Daily 9:00 AM | Reads leads where `Outreach_Status = "Ready for Outreach"`. Generates personalized email using Groq Llama 3.3 70B. Builds branded HTML email with banner, CTA button, unsubscribe link, and tracking pixel. Sends via Microsoft 365 Outlook. Updates CRM status to "Email Sent". |

**AI Email Generation:**
- System prompt positions Stylique as a "confidence layer" (not a design tool)
- Includes brand-specific data: name, website, Instagram, city, platform
- Returns JSON with subject, headline, body
- Fallback template exists if AI fails

#### MODULE 5A: Auto Follow-Up Emails

| Workflow | Trigger | What It Does |
|----------|---------|-------------|
| `followup-auto-send.json` | Daily 7:00 AM | Reads all leads. Filters where `Follow_Up_Date ≤ today` AND status is "Email Sent", "Follow-Up 1 Sent", or "Follow-Up 2 Sent". Determines round (1, 2, or 3). Generates AI follow-up with round-specific tone. Sends via Outlook. Updates next follow-up date. |

**Cadence:**
```
Day 0:  Initial email sent (Follow_Up_Date set to +3 days)
Day 3:  Follow-Up 1 (gentle nudge, next in +4 days)
Day 7:  Follow-Up 2 (more direct/urgent, next in +7 days)
Day 14: Follow-Up 3 (breakup email, "Should I close your file?", closure in +3 days)
Day 17: Round 4 — CLOSURE (NO email sent, status update only)
        → If email was opened: mark "Warm - Email Opened"
        → If never opened: mark "Cold - No Response"
```

#### MODULE 5B: Team Digests & Reminders

| Workflow | Trigger | What It Does |
|----------|---------|-------------|
| `followup-reminders.json` | Daily 8:30 AM | Reads Team_Config and all leads. Deduplicates leads by `Lead_Key`. Builds personalized digest per team member (assigned leads only) or full-team summary for report-only members. Sends Microsoft Teams **Adaptive Card v1.4** + branded HTML email via Outlook to each member. |

**Digest Sections (10 total):**
1. **🆕 New Leads Today** — leads scraped today, broken down by source
2. **🔬 Enrichment Pipeline** — status counts (Completed, Has Email, Pending Apollo, Manual Research, Failed, Pending) with email coverage percentage
3. **🔥 Hot Leads** — emails that were opened, sorted by open count, with location/tier/status
4. **📬 Follow-Ups** — Due Today + Overdue, showing follow-up round (Day 3/7/14)
5. **📊 Engagement Activity** — opens today, total unique opens, responses, meetings booked, plus full funnel visualization
6. **✅ Auto Follow-Ups Sent Today** — follow-ups processed this morning
7. **📈 Source & Tier Distribution** — lead counts by discovery source and service tier
8. **👥 Team Performance** — (report-only viewers) per-member stats: assigned, emails sent, opens, responses, response rate
9. **🩺 Email Delivery Health** — failed emails, unsubscribes, leads missing email addresses
10. **❄️ Recently Marked Cold** — leads marked cold in last 3 days

**Summary Bar:** 6 key metrics displayed at top — Hot, New Today, Due Today, Overdue, Sent Today, Pipeline

---

### Supporting Webhooks

| Workflow | Endpoint | What It Does |
|----------|----------|-------------|
| `email-tracking-webhook.json` | `GET /webhook/track/open?id=UUID` | Embedded as 1x1 pixel in every email (initial + all follow-ups). On load: looks up lead in CRM by tracking ID, increments `Email_Open_Count`, sets `Email_Opened=TRUE`, records `Email_First_Opened_At` (only on first open). Returns transparent 1x1 GIF. |
| `unsubscribe-handler.json` | `GET /webhook/unsubscribe?email=X` | Sets `Outreach_Status = "Unsubscribed"`, clears `Follow_Up_Date`. Returns styled confirmation page. |

---

### Google Sheets Architecture

**Spreadsheet:** `Stylique_Lead_CRM` (ID: `1nBCc2_p6s1mQznskmHf5HUH9pJ8P8qXDhzI5gDRVlTs`)

| Tab | Purpose | Managed By |
|-----|---------|-----------|
| **Sheet1** (gid=0) | Main CRM — all leads, 40+ columns | System (automated) |
| **Team_Config** (gid=250695418) | Team roster — names, emails, tiers, active status | Client (manual edits) |
| **Instagram_Search_Config** | Instagram scraping keywords, cities, min followers per week | Client (manual edits) |
| **GoogleSearch_Search_Config** | Google Search queries, results per query per week | Client (manual edits) |
| **LinkedIn_Search_Config** | LinkedIn/Evaboot file names, folder IDs per week | Client (manual edits) |

**Secondary Spreadsheet:** `Contacts` (ID: `1zM2XI6kJFrjJoCoaB6Md6HoLRMF7_UwMmgkeviDKV0M`)
- Stores LinkedIn individual contacts (separate from company-level CRM)
- Used by Apollo enrichment to match LinkedIn URLs to emails

---

### What the Client Needs to Do

#### One-Time Setup (Already Done)
- [x] n8n cloud instance configured
- [x] Google Sheets OAuth connected
- [x] Microsoft 365 Outlook OAuth connected (hello@styliquetechnologies.com)
- [x] Groq API key configured
- [x] Apify account connected (Instagram scraping)
- [x] Serper API key (for header auth)
- [x] Apollo.io API key (for header auth)
- [x] Microsoft Teams incoming webhook created
- [x] Google Drive OAuth connected (for Evaboot CSV access)
- [x] Cloudinary banner image uploaded

#### Ongoing Client Responsibilities

1. **Manage Team Roster** — Edit the `Team_Config` tab:
   - Add/remove team members (no code changes needed)
   - Toggle `Active` to pause a member
   - Change `Tier_Assignment` to reassign tier responsibilities
   - Set `Receives_Report=TRUE` for exec-level visibility without lead assignments

2. **Manage Search Configurations** — Edit the config tabs weekly/monthly:
   - `Instagram_Search_Config`: Add new keywords, cities, adjust min followers
   - `GoogleSearch_Search_Config`: Add new search queries, adjust results count
   - `LinkedIn_Search_Config`: Update Evaboot file references after new exports

3. **Upload Evaboot Exports** — Place new LinkedIn CSV exports in the configured Google Drive folder

4. **Monitor CRM** — Review Sheet1 for:
   - Hot leads (Email_Opened = TRUE) → Manually engage
   - Responded leads → Update `Outreach_Status` to "Responded"
   - Meeting booked → Update status, add call notes
   - Manual research needed → Fill in missing emails for leads marked "Manual Research Required"

5. **Check Teams/Email Digests** — At 8:30 AM daily, team members receive:
   - Which leads opened emails (priority action)
   - Which follow-ups went out automatically
   - Which leads went cold

---

### Lead Lifecycle (Status Flow)

```
New
 └→ Pending Enrichment
     └→ Pending Apollo (enrichment needed)
         └→ Enriched / No Email Found / Manual Research Required / No LinkedIn URL
             └→ Ready for Outreach (has email + assigned)
                 └→ Email Sent (Day 0)
                     ├→ Follow-Up 1 Sent (Day 3)
                     │   ├→ Follow-Up 2 Sent (Day 7)
                     │   │   ├→ Follow-Up 3 Sent (Day 14)
                     │   │   │   ├→ Warm - Email Opened (Round 4 closure, opened)
                     │   │   │   └→ Cold - No Response (Round 4 closure, not opened)
                     │   │   └→ Warm - Email Opened
                     │   └→ Warm - Email Opened
                     └→ Email Failed
                 └→ Skipped - No Email
 └→ Unsubscribed (via webhook)
 └→ Responded (manual update by team)
 └→ Meeting Booked (manual update by team)
 └→ Not Interested (manual update by team)
```

---

### Final Publish Checklist

- [x] **Fix** `.first().json` → `.item.json` in email template nodes — **DONE** (`email-outreach-microsoft365.json` now uses `.item.json`)
- [ ] **Fix** unsubscribe URL in email templates to point to `https://aiagent369.app.n8n.cloud/webhook/unsubscribe` (or configure a redirect from styliquetechnologies.com)
- [ ] **Test** each workflow individually with 1-2 test leads before enabling schedules
- [ ] **Verify** all OAuth credentials are active (Google Sheets, Outlook, Google Drive, Apify)
- [ ] **Confirm** Teams webhook URL is still active
- [ ] **Enable** all scheduled triggers in n8n

Once those items are resolved, the system is ready for production.
