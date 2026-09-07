# Professional Practices — Exam-Ready Notes

> **7th Semester | Sir Syed University**
> Covers: Week 8, 9-10, 11-12, 15, 15-16 (CV/Resume), 16 (CPD)

---

## Table of Contents

1. [Week 8 — Ethics & Real-Life Scenarios](#1-week-8--ethics--real-life-scenarios)
2. [Week 9-10 — Human Resource Management (HRM)](#2-week-9-10--human-resource-management-hrm)
3. [Week 11-12 — Software Liability](#3-week-11-12--software-liability)
4. [Week 15 — Cashflow Quadrant](#4-week-15--cashflow-quadrant)
5. [Week 15-16 — CV vs Resume](#5-week-15-16--cv-vs-resume)
6. [Week 16 — Continuing Professional Development (CPD)](#6-week-16--continuing-professional-development-cpd)
7. [Quick Revision Cheat Sheet](#7--quick-revision-cheat-sheet)

---

## 1. Week 8 — Ethics & Real-Life Scenarios

### Key Ethics Codes to Remember

- **ACM Code** — Honor contracts, agreements, and assigned responsibilities
- **Fairness & Discrimination** — Treat everyone equally; no favoritism or bullying
- **Security & Unauthorized Access** — Never give unauthorized access to data
- **Cyber Bullying** — Threatening or harassing others online is illegal

### Case-by-Case Summary

| Case | Scenario (in short) | Ethics Code Violated | Correct Response |
|------|---------------------|----------------------|------------------|
| **Case 2** | Ahmed used 3 teammates' code without giving them credit; also added friend Rashid's code without telling management | **ACM Code** — Not giving credit, lack of transparency | Always **acknowledge others' contributions**; inform management of all external code |
| **Case 3** | Canadian software house delivered tax software with wrong formulae; clients got penalized by Tax Dept | **ACM Code** — Did not honor contract | **Thoroughly test** software before delivery; do not sign false contracts |
| **Case 5** | CEO asks junior developer to spy on project manager in exchange for benefits | **Fairness & Discrimination** | **Refuse** the offer politely; it is unethical to spy on your boss; follow proper organogram |
| **Case 6** | Students send threatening emails to a teacher | **Fairness & Discrimination / Cyber Bullying** | **Counsel** students first → involve parents via director/chairman → if still threatening, **report to NR3C** (National Response Centre for Cyber Crime) |
| **Case 7** | Political party chief asks Election Commission secretary for voter database access | **Security & Unauthorized Access** | **Immediately refuse**; your duty is transparency and fair elections; if pressured, **resign** rather than compromise |

### Memory Aid

> **"ACE-FS"** — **A**CM Code, **C**yber Bullying, **E**thics, **F**airness, **S**ecurity
> These are the 5 ethics codes that appear across all cases.

---

## 2. Week 9-10 — Human Resource Management (HRM)

### What is HRM?

- **HRM** = Managing employees so their performance is **maximized** according to the company's **strategic objectives** (aims & goals)
- Very important in **software development** organizations

### HRM Responsibilities

- Organization has **expectations** from employees → employees must manage themselves and their work
- HRM is the **responsibility of management**
- Management ensures **maximum utilization** of human resources

### Three Levels of Management

| Level | Also Called | Who? | What They Do |
|-------|-----------|------|-------------|
| **Strategic** | Top Level | Chairman, MD, CEO, Board of Directors (BOD) | Develop **organizational goals** & strategic objectives (e.g., new branch, new product) |
| **Tactical** | Middle Level | Department Heads, Managers | **Implement** strategies set by top management |
| **Operational** | Front-line | Supervisors, Team Leads | **Day-to-day** operations & direct employee supervision |

### Memory Aid

> **"STO"** — **S**trategic (Top) → **T**actical (Middle) → **O**perational (Front-line)
> Think of it as a pyramid: few people at the top, many at the bottom.

---

## 3. Week 11-12 — Software Liability

### Types of Bugs

- **Out of Bound Bugs** — User enters a value **beyond the allowed limit** (too large, too small, wrong data type)
- **Security Bugs** — Developer adds security restrictions but they **don't actually work** (e.g., password check is bypassed)

### Operating System Failures

An OS failure = computer gives **strange messages** or **hangs** while running applications.

| Cause Type | Examples |
|-----------|----------|
| **Software Problems** | OS not properly installed; malware/virus infection; unauthentic internet downloads |
| **Hardware Problems** | Damaged storage device; faulty power supply (sudden shutdown); bad processor; incorrect RAM chip |

### OLTP (Online Transaction Processing)

- **Definition**: A data processing system that executes **many transactions over the internet**
- **Examples**: Online banking, shopping, order entry, admissions, job hunting, messaging

#### OLTP Performance Issues

- Must handle **hundreds/thousands of simultaneous users**
- Must allow **many users to work on the same data** with **immediate updating** (e.g., airline reservations)
- Must handle **errors properly**

### Distributed vs Centralized Databases

| Feature | Distributed Database | Centralized Database |
|---------|---------------------|---------------------|
| **Data Location** | Multiple files at **different sites** | Single file at **one central location** |
| **Multi-user Access** | Allows multiple users to access & manipulate data **simultaneously** | **Bottleneck** when many users access same file simultaneously |
| **Delivery Speed** | Files delivered **quickly** from the nearest location | Files **may take longer** to deliver |
| **Fault Tolerance** | If one site fails, **data is still retrievable** from other sites | Single site failure = **downtime for everyone** |

#### Real-World Examples of Distributed Databases

- **Facebook** messages → uses **Apache HBase** (streams data to Hadoop clusters)
- **YouTube** → uses **Kubernetes-aware** cloud-native distributed database
- **TikTok** (ByteDance) → uses **ByteGraph** (distributed graph database)

### Memory Aid

> **"Distributed = Durable"** — data is spread out, so it survives failures.
> **"Centralized = Convenient but fragile"** — one place, one point of failure.

---

## 4. Week 15 — Cashflow Quadrant

### The ESBI Quadrant — 4 Ways to Produce Income

| | **Works for others** | **Works for self / owns** |
|---|---|---|
| **Time = Money** (income stops when you stop) | **E — Employee** | **S — Self-Employed** |
| **System/Money works for you** (income continues) | **B — Business Owner** | **I — Investor** |

### Detailed Breakdown

| Quadrant | Description | Key Point | Example |
|----------|-------------|-----------|---------|
| **E — Employee** | Has a J.O.B., works for someone else | Income **stops** when work stops; financial destiny depends on **employer's success** | Low, Mid, Top level employees |
| **S — Self-Employed** | Own boss, works for themselves | More **control** than E, but still **trades time for money**; leads to tiredness & fatigue | Dentists, lawyers, restaurant owners, insurance/property agents |
| **B — Business Owner** | Owns a **system**, hires people to run it | Earns money **without constant involvement**; system runs automatically | Law firm owner (juniors plead cases), franchise owners |
| **I — Investor** | Owns **assets** that produce income | **Passive income**; greatest financial freedom; money works for them | Shareholders, property investors, business traders, influencers |

### Key Example to Remember

> A **lawyer who pleads cases himself** = **S** (Self-Employed)
> A **lawyer who owns a law firm** and juniors plead = **B** (Business Owner)
> Same profession, different quadrant!

### Famous Investment Quotes

- *"Investing in yourself is the best investment you will ever make."* — **Robin Sharma**
- *"The more you learn, the more you earn."* — **Warren Buffett**
- *"Your career is the engine of your wealth."* — **Warren Buffett**
- *"Given a 10% chance of 100x payoff, you should take that bet every time."* — **Jeff Bezos**

### Memory Aid

> **"E-S-B-I"** = **E**mployed → **S**olo → **B**oss → **I**nvestor
> Financial freedom **increases** as you move from E → I.

---

## 5. Week 15-16 — CV vs Resume

### Cover Letter (Opening of CV/Resume)

A cover letter has **4 paragraphs**:

| Paragraph | Content |
|-----------|---------|
| **1st** | How you **came to know** about the job |
| **2nd** | Your **experience and skills** |
| **3rd** | How your skills **match the job** requirements |
| **4th** | Express your **wish to meet** the interviewer |

> **Memory Aid**: **"Know → Show → Match → Meet"**

### What is a CV?

- **CV** = Curriculum Vitae = describes your **whole career**
- Length: Usually **2-3 pages**, can be **10+ pages** if needed
- Used for **academic purposes**
- Presents: education, professional career, publications, awards, etc.

#### CV Sections (Full List)

- Contact information
- Research objective / personal profile / personal statement
- Education
- Professional academic appointments
- Books & Book chapters
- Peer-reviewed publications & Other publications
- Awards and honors
- Grants and fellowships
- Conferences
- Teaching experience
- Research / lab experience / graduate fieldwork
- Non-academic activities
- Languages and skills
- Memberships
- References

### What is a Resume?

- A **short, concise** document for **job applications**
- Length: **1-2 pages** only
- **Targeted** at a specific job — only includes **relevant** details
- Purpose: give recruiters a **brief overview** of work history

#### Resume Sections

- Contact information (including job title)
- Resume summary or objective
- Work experience
- Education section
- Skills section
- Additional details (awards, courses, certifications, personal interests)

### CV vs Resume — Quick Comparison

| Feature | CV | Resume |
|---------|-----|--------|
| **Length** | No limit (2-3 to 10+ pages) | **1-2 pages** only |
| **Content** | **Entire career** history | Only **relevant** experience & skills |
| **Purpose** | **Academic** (research, teaching, fellowships) | **Job applications** |
| **Customization** | Same CV for all applications | **Tailored** to each specific job |

### Resume Do's

- Keep it **1-2 pages**
- **No picture** unless applying for: brand ambassador, sales, marketing, receptionist, anchoring, modeling
- Summary statement should include:
  - **Soft skills**: enthusiastic, passionate, hard-working
  - **Technical skills**: industry experience, strengths
- Education listed in **reverse chronological order** (newest first)

---

## 6. Week 16 — Continuing Professional Development (CPD)

### What is CPD?

- **CPD** = The ongoing process of **identifying professional goals**, **developing a plan** to achieve them, and **documenting** the experience
- It is a **cycle** — it never stops (lifelong learning)

### The 5 Stages of the CPD Cycle

| Stage | Name | What to Do | Key Action |
|-------|------|-----------|------------|
| **1** | **Identify Needs** | What is your goal? Summarize your career path, imagine milestones, build a **roadmap** of small achievable goals | Define your destination |
| **2** | **Planning** | Identify gaps & growth areas; set **SMART goals**; outline activities & resources needed | Map the path |
| **3** | **Action** | Attend training, coaching, certificate courses, webinars, conferences; use platforms like **Udemy, Coursera, Udacity, Google free courses** | Start learning |
| **4** | **Reflect** | Consider what you learned and how it influenced your work; **write down** observations; identify areas for further improvement | Look back & evaluate |
| **5** | **Implement** | Apply your new learning; promote internal training; request online courses; **never stop** after 1-2 certificates — participate in **lifelong learning** | Put it into practice |

### Memory Aid

> **"I-PARI"** — **I**dentify → **P**lan → **A**ct → **R**eflect → **I**mplement
> Think: *"I PARI (I read/study)"* — the cycle of continuous learning!

### SMART Goals (with Example)

**SMART** = **S**pecific, **M**easurable, **A**ttainable, **R**elevant, **T**ime-bound

**Example: Learning English for Freelancing**

| Letter | Meaning | Example |
|--------|---------|---------|
| **S** — Specific | Clearly define what you want | *"I want to learn conversational English for client communication"* |
| **M** — Measurable | How will you track progress? | *"I will use a daily language app to track progress"* |
| **A** — Attainable | Is it realistically achievable? | *"I know English speakers on social media to practice with"* |
| **R** — Relevant | Does it matter to your career? | *"Most of my freelance clients are native English speakers"* |
| **T** — Time-bound | Set a deadline | *"I want to learn in the next 3 months"* |

---

## 7. Quick Revision Cheat Sheet

> **One-liner per topic — read this 5 minutes before the exam!**

| Week | Topic | One-Liner to Remember |
|------|-------|-----------------------|
| **8** | Ethics | 5 ethics codes: **ACM, Fairness, Security, Cyber Bullying, Discrimination** — always refuse unethical offers, report to **NR3C** if cyberbullied |
| **9-10** | HRM | HRM maximizes employee performance; 3 management levels: **Strategic** (CEO) → **Tactical** (Managers) → **Operational** (Supervisors) |
| **11-12** | Software Liability | Bugs: **Out of Bound** & **Security**; OS fails from **software** (virus, bad install) or **hardware** (RAM, PSU); OLTP = online transactions; **Distributed DB > Centralized DB** for fault tolerance |
| **15** | Cashflow Quadrant | **E-S-B-I**: Employee → Self-Employed → Business Owner → Investor; financial freedom increases left-to-right; *"The more you learn, the more you earn"* |
| **15-16** | CV vs Resume | **CV** = full career, no page limit, academic; **Resume** = 1-2 pages, job-specific; Cover letter: **Know → Show → Match → Meet** |
| **16** | CPD | **I-PARI**: Identify → Plan → Act → Reflect → Implement; use **SMART** goals; **never stop learning** |

---

> **Good luck with your exam!** Remember: understand the concepts, don't just memorize.
> Focus on the **tables** and **memory aids** — they'll help you recall quickly under pressure.
