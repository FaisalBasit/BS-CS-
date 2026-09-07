# 📚 SPM Final Exam - Complete Study Notes

**Course:** CS-467 Software Project Management  
**Semester:** 7th Semester | Sir Syed University  
**Exam Type:** Final (Theory + Numerical)  
**Prepared:** February 2, 2026

---

# 📋 TABLE OF CONTENTS

| # | Topic | Priority | Page |
|---|-------|----------|------|
| 1 | [Selenium Testing](#1-selenium-testing) | ⭐⭐⭐ | Code-based |
| 2 | [Scrum and Agile](#2-scrum-and-agile) | ⭐⭐⭐⭐⭐ | Scenario |
| 3 | [COCOMO Estimation](#3-cocomo-estimation) | ⭐⭐⭐⭐ | Numerical |
| 4 | [Procurement Contracts](#4-procurement-contracts) | ⭐⭐⭐⭐ | Scenario |
| 5 | [PM Responsibilities](#5-pm-responsibilities) | ⭐⭐⭐⭐ | Theory |
| 6 | [Quality Management](#6-quality-management) | ⭐⭐ | Theory |
| 7 | [Configuration Management](#7-configuration-management) | ⭐⭐ | Theory |
| 8 | [Earned Value Management](#8-earned-value-management-evm) | ⭐⭐⭐⭐⭐ | Numerical |
| 9 | [Communication Management](#9-communication-management) | ⭐⭐⭐⭐ | Numerical + Theory |
| 10 | [Maslow & Herzberg](#10-motivation-theories) | ⭐⭐⭐⭐ | Scenario |
| 11 | [Cost Management](#11-project-cost-management) | ⭐⭐⭐⭐ | Numerical |
| 12 | [Stakeholder Register](#12-stakeholder-register) | ⭐⭐⭐ | Table Creation |
| 13 | [Organizational Structure](#13-organizational-structure) | ⭐⭐⭐⭐ | Theory |

---

# PART A: THEORY TOPICS

---

## 1. SELENIUM TESTING

### What is Selenium?
- **Definition:** Web application testing framework for automated testing
- **Purpose:** Test web pages, forms, buttons, validation
- **Exam Expectation:** ~50 lines of code

### Code Structure (5 Steps)
```
1. DECLARATION    → Initialize browser driver & variables
2. BROWSER LAUNCH → Open target URL
3. FIELD INPUT    → Enter values into form fields
4. SUBMIT ACTION  → Click submit button
5. VERIFICATION   → Check if submission was successful
```

### URL Validation Logic
| After Submit | Meaning |
|--------------|---------|
| Same URL + Success message | Form submitted, page refreshed |
| Different URL (e.g., "Thank you") | Redirected = Success |
| Same URL + Error message | Validation failed |

### What to Test
- Form fields (name, email, password, etc.)
- Submit button click
- URL change after submission
- Validation/error messages

### ⚠️ Important Notes
- ✅ **DO:** Modify sample code to show individual effort
- ✅ **DO:** Choose 5-7 fields if not specified
- ❌ **DON'T:** Copy sample exactly (professor checks!)
- 📦 **Professor will provide:** Sample code (~40-50 lines)

---

## 2. SCRUM AND AGILE

### ⚠️ CRITICAL: Study ALL lectures - No shortcuts!

### What is Agility?
**Definition:** Capability to efficiently adapt to an ever-changing environment.

### Three Drivers of Agility
| Driver | Meaning |
|--------|---------|
| **Flow** | Steady, sustainable rate of work processing |
| **Learning** | Learn from past experiences, mistakes, knowledge discovery |
| **Collaboration** | Ways people work together for a single goal |

### Adaptive vs Predictive Approach

| Aspect | Predictive (Waterfall) | Adaptive (Agile) |
|--------|------------------------|------------------|
| **Focus** | Planning future in detail | Flexibility to respond |
| **Assumption** | Stable, predictable environment | Fast, unpredictable changes |
| **Phases** | Sequential steps | Integrated, iterated |
| **Output** | Complete at end | Incremental deliverables |

### Agile Manifesto - 4 Core Values ⭐ MEMORIZE

| We Value | Over |
|----------|------|
| **Individuals and interactions** | Processes and tools |
| **Working software** | Comprehensive documentation |
| **Customer collaboration** | Contract negotiation |
| **Responding to change** | Following a plan |

### Agile Manifesto - 12 Principles ⭐

1. **Early & continuous delivery** of valuable software
2. **Welcome changing requirements**, even late in development
3. **Deliver working software frequently** (weeks, not months)
4. **Daily cooperation** between business and developers
5. Projects built around **motivated individuals** who are trusted
6. **Face-to-face conversation** is best communication
7. **Working software** = primary measure of progress
8. **Sustainable development** - maintain constant pace
9. **Continuous attention** to technical excellence
10. **Simplicity** - maximize work NOT done
11. Best work emerges from **self-organizing teams**
12. Team **reflects regularly** on how to improve

---

### SCRUM FRAMEWORK ⭐⭐⭐

### Three Scrum Roles

| Role | Responsibility |
|------|----------------|
| **Product Owner** | Represents stakeholders, manages product backlog, prioritizes features |
| **Scrum Master** | Manages Scrum process, removes impediments, protects team |
| **Development Team** | ~7 people who develop the software (self-organizing) |

### Four Scrum Events (Ceremonies)

| Event | Purpose | When | Duration |
|-------|---------|------|----------|
| **Sprint Planning** | Plan work for upcoming sprint | Start of sprint | 2-4 hours |
| **Daily Scrum** | Sync team, identify blockers | Daily | 15 minutes |
| **Sprint Review** | Demo completed work to stakeholders | End of sprint | 1-2 hours |
| **Sprint Retrospective** | Reflect on process, plan improvements | End of sprint | 1-2 hours |

### Three Scrum Artifacts

| Artifact | Description |
|----------|-------------|
| **Product Backlog** | Ordered list of ALL requirements (user stories with story points) |
| **Sprint Backlog** | Items selected for CURRENT sprint |
| **Increment** | Sum of all completed items at sprint end |

### Sprint Workflow
```
Product Backlog → Sprint Planning → Sprint Backlog → 
Daily Scrum → Development → Sprint Review → 
Sprint Retrospective → REPEAT
```

### Velocity Example
| User Story | Story Points |
|------------|--------------|
| User Login | 3 |
| Dashboard | 5 |
| Reports | 8 |
| Settings | 2 |
| **Total** | **18** |

*If Velocity = 10 points/sprint → Complete in ~2 sprints*

---

### SCRUM VS KANBAN

| Aspect | Scrum | Kanban |
|--------|-------|--------|
| **Scheduling** | Fixed sprints with deadlines | Continuous flow |
| **Roles** | Specific duties (PO, SM, Team) | Not strictly determined |
| **Changes** | No changes mid-sprint | Encourages modifications |
| **KPIs** | Sprint velocity | Time to completion |
| **Best For** | Fixed deliverables | Flexible teams |

---

### SCENARIO QUESTIONS - How to Answer

**Question Type:** "In a project, X happened. What should PM do?"

**Answer Approach:**
1. Identify which Scrum activity/event is relevant
2. Explain what SHOULD have been done
3. State the correct Scrum process

**Example Scenario:**
> "Team is confused about what to work on. What went wrong?"

**Answer:** Sprint Planning was not done properly. Product Owner should have clearly defined Sprint Backlog with prioritized items.

---

## 3. COCOMO ESTIMATION

### What is COCOMO?
**COnstructive COst MOdel** - Software cost estimation model

### ⚠️ Note: Functional Point method NOT in exam

---

### BASIC COCOMO ⭐

**Formulas:**
```
Effort (Person-Months) = a × (KLOC)^b
Development Time (Months) = c × (Effort)^d
```

**ABCD Values Table:**

| Project Mode | a | b | c | d |
|--------------|---|---|---|---|
| **Organic** | 2.4 | 1.05 | 2.5 | 0.38 |
| **Semi-detached** | 3.0 | 1.12 | 2.5 | 0.35 |
| **Embedded** | 3.6 | 1.20 | 2.5 | 0.32 |

**Project Modes Explained:**

| Mode | Team Size | Experience | Requirements | Example |
|------|-----------|------------|--------------|---------|
| **Organic** | Small | Experienced | Flexible | Payroll, inventory |
| **Semi-detached** | Medium | Mixed | Some rigid | Banking, database |
| **Embedded** | Large | Less familiar | Very rigid | ATM, flight control |

---

### INTERMEDIATE COCOMO ⭐⭐

**Formulas:**
```
Effort = EAF × a × (KLOC)^b
Development Time = c × (Effort)^d

EAF = Product of ALL cost driver values
```

**EAF (Effort Adjustment Factor):**
- Multiply ALL cost driver ratings together
- Values typically range from 0.70 to 1.65

**Cost Driver Categories (15 drivers):**

| Category | Drivers |
|----------|---------|
| **Product** | RELY, DATA, CPLX |
| **Hardware** | TIME, STOR, VIRT, TURN |
| **Personnel** | ACAP, AEXP, PCAP, VEXP, LEXP |
| **Project** | MODP, TOOL, SCED |

---

### WORKED EXAMPLE 1: Basic COCOMO

**Problem:** A project has 32 KLOC. It's an Organic project. Find Effort and Time.

**Solution:**
```
Given: KLOC = 32, Mode = Organic (a=2.4, b=1.05, c=2.5, d=0.38)

Step 1: Calculate Effort
Effort = a × (KLOC)^b
Effort = 2.4 × (32)^1.05
Effort = 2.4 × 38.05
Effort = 91.32 Person-Months

Step 2: Calculate Time
Time = c × (Effort)^d
Time = 2.5 × (91.32)^0.38
Time = 2.5 × 5.83
Time = 14.58 Months
```

---

### WORKED EXAMPLE 2: Intermediate COCOMO

**Problem:** Project has 50 KLOC, Semi-detached mode. Cost drivers given:
- RELY = 1.15
- DATA = 1.08
- CPLX = 1.15
- TIME = 1.11
- ACAP = 0.86

Find Effort.

**Solution:**
```
Given: KLOC = 50, Mode = Semi-detached (a=3.0, b=1.12)

Step 1: Calculate EAF
EAF = 1.15 × 1.08 × 1.15 × 1.11 × 0.86
EAF = 1.36

Step 2: Calculate Effort
Effort = EAF × a × (KLOC)^b
Effort = 1.36 × 3.0 × (50)^1.12
Effort = 1.36 × 3.0 × 75.18
Effort = 306.73 Person-Months
```

---

### KEY POINTS FOR EXAM
- ✅ Learn BOTH Basic and Intermediate
- ✅ Know how to read values from tables
- ✅ Show ALL calculation steps
- ✅ If you know Intermediate, Basic is covered
- ❌ EAF only in Intermediate, NOT in Basic

---

## 4. PROCUREMENT CONTRACTS

### What is Procurement?
Obtaining goods/services from outside vendors (Supplier/Contractor/Seller).

### Four Procurement Processes

| Process | Description |
|---------|-------------|
| **Plan Procurement** | Identify what to outsource |
| **Conduct Procurement** | RFI → RFP → Vendor Selection |
| **Control Procurement** | Monitor performance, three-way matching |
| **Close Procurement** | Final payment, contract closure |

---

### THREE MAIN CONTRACT TYPES ⭐⭐⭐

### 1. FIXED-PRICE CONTRACT

**Key Characteristics:**
- Price fixed at contract signing
- **Seller bears most risk**
- Best for well-defined scope
- No price change unless scope changes

**Subdivisions:**

| Type | Description | Risk |
|------|-------------|------|
| **Firm Fixed Price (FFP)** | Fixed amount, no adjustments | All on Seller |
| **Fixed Price Incentive Fee (FPIF)** | Fixed price + bonus for good performance | Mostly Seller |
| **FP-EPA** | Multi-year with inflation adjustment | Shared |

**Use When:**
- ✅ Scope is CLEAR
- ✅ Requirements are DEFINED
- ✅ Want to CONTROL COST

**Examples:**
- Purchasing apartment
- Off-the-shelf software
- Holiday package (all-inclusive)
- Road construction

---

### 2. COST REIMBURSABLE CONTRACT

**Key Characteristics:**
- Buyer reimburses ALL costs + fee
- **Buyer bears most risk**
- Best for uncertain/evolving scope
- Watch for scope creep!

**Subdivisions:**

| Type | Description | Fee |
|------|-------------|-----|
| **Cost Plus Fixed Fee (CPFF)** | All costs + fixed fee | Fixed regardless of performance |
| **Cost Plus Incentive Fee (CPIF)** | All costs + incentive | Based on objective metrics |
| **Cost Plus Award Fee (CPAF)** | All costs + award | Based on subjective satisfaction |

**Use When:**
- ✅ Scope is UNCLEAR
- ✅ Requirements will EVOLVE
- ✅ R&D or creative projects
- ✅ Need specialized vendor skills

**Examples:**
- Research & Development
- Event decoration
- Media campaigns

---

### 3. TIME AND MATERIALS (T&M) CONTRACT

**Key Characteristics:**
- Pay for time spent + materials used + profit
- **Risk shared** between buyer and seller
- Hybrid of fixed-price and cost-reimbursable

**Components:**
- **Time:** Hourly/daily rate
- **Materials:** Physical inputs

**Use When:**
- ✅ Moderate certainty
- ✅ Scope partially defined
- ✅ Support and maintenance work

**Examples:**
- Post-launch support
- Staff augmentation
- Consulting services

---

### CONTRACT SELECTION DECISION FLOW

```
Is scope WELL-DEFINED?
        │
   ┌────┴────┐
   YES       NO
   │         │
   ▼         ▼
Fixed    Is it research/
Price    creative?
            │
       ┌────┴────┐
       YES       NO
       │         │
       ▼         ▼
   Cost       Time &
Reimbursable  Materials
```

---

### SCENARIO: Development + Support Contract

**Situation:** Company needs both software development AND ongoing support.

**Analysis:**

| Aspect | Development | Support |
|--------|-------------|---------|
| Scope | Clear deliverables | Unknown workload |
| Duration | Fixed timeline | Ongoing |
| Effort | Predictable | Varies (10 hrs to 1000 hrs/month) |
| **Contract** | **Fixed Price** | **Time & Materials** |

**Result:** TWO different contracts needed!

---

### REAL-TIME PROCUREMENT SCENARIO (Mobile Banking App)

**Phase 1: Plan Procurement**
- Mobile app development (Android & iOS)
- Cybersecurity testing
- Cloud hosting
- UI/UX design

**Phase 2: Conduct Procurement**
- RFI → Understand vendor capabilities
- RFP → Get technical + financial proposals
- Select Vendor ABC Technologies

**Phase 3: Contracts Used**

| Work | Contract Type | Reason |
|------|---------------|--------|
| Core App Development | FFP ($200,000) | Scope is clear |
| Early Delivery Bonus | FPIF ($15,000) | Incentive |
| Cybersecurity Testing | CPFF | Scope uncertain (threats evolve) |
| Post-Launch Support | T&M ($50-70/hr) | Effort varies |
| Cloud Services | PO ($10,000/month) | Commodity purchase |

---

### QUICK REFERENCE TABLE

| Scenario | Contract Type |
|----------|---------------|
| Clear scope, fixed requirements | FFP |
| Want early delivery incentive | FPIF |
| Multi-year with inflation | FP-EPA |
| R&D, uncertain scope | CPFF/CPIF |
| Creative work, client satisfaction matters | CPAF |
| Support/maintenance | T&M |
| Buying commodities | Purchase Order |

---

## 5. PM RESPONSIBILITIES

### What is Project Management?
Application of **knowledge, skills, tools, and techniques** to meet project requirements.

### 8 Core Management Activities

| Activity | Description |
|----------|-------------|
| **Planning** | Deciding what is to be done |
| **Organizing** | Making arrangements |
| **Staffing** | Selecting right people |
| **Directing** | Giving instructions |
| **Monitoring** | Checking on progress |
| **Controlling** | Taking action to remedy hold-ups |
| **Innovating** | Coming up with new solutions |
| **Representing** | Liaising with users |

### 5 Process Groups

| Process | Description |
|---------|-------------|
| **Initiating** | Project gets selected, sponsored, launched |
| **Planning** | Determine HOW work will be accomplished |
| **Executing** | Team does the work |
| **Monitoring & Controlling** | Track, review, regulate progress |
| **Closing** | Tie up loose ends, close project |

### 10 Knowledge Areas

| # | Knowledge Area | Key Focus |
|---|----------------|-----------|
| 1 | **Integration** | Coordinate all processes |
| 2 | **Scope** | Define boundaries, what's included/excluded |
| 3 | **Time** | Scheduling, deadlines |
| 4 | **Cost** | Budgeting, cost control |
| 5 | **Quality** | Standards, QA/QC |
| 6 | **Human Resource** | Team management, motivation |
| 7 | **Communications** | Information distribution |
| 8 | **Risk** | Identify, analyze, respond to risks |
| 9 | **Procurement** | Acquire external goods/services |
| 10 | **Stakeholder** | Manage expectations |

---

### PM STRATEGY PARAGRAPH ⭐ (Professor's Template)

> **Building a software project naturally involves uncertainty, evolving requirements, and need for strong communication. As PM, my role revolves around applying core management responsibilities:**
>
> 1. **Stakeholder Management:** Communicate clearly about realistic deliverables. Set expectations early that software may need iterative refinement.
>
> 2. **Team Coordination:** Use core activities - planning, organizing, directing, monitoring, controlling. Break work into manageable tasks, clarify responsibilities, hold daily check-ins.
>
> 3. **Change Management:** Planning is iterative. Maintain prioritized requirements list, evaluate impact of changes on time/cost, update plan accordingly. No change accepted without checking feasibility.
>
> 4. **Communication:** Document all project information (requirements, decisions, progress) transparently. Establish single source of truth.
>
> **Summary:** By communicating clearly, planning iteratively, coordinating team, managing change, and monitoring progress—PM guides project through shifting requirements while keeping stakeholders confident.

---

## 6. QUALITY MANAGEMENT

### Three Quality Management Processes

| Process | Description |
|---------|-------------|
| **Quality Planning** | Define quality standards, metrics, create QM plan |
| **Quality Assurance (QA)** | Process audits, continuous improvement, PREVENTION |
| **Quality Control (QC)** | Inspection, testing, defect identification, DETECTION |

### QA vs QC

| Aspect | Quality Assurance | Quality Control |
|--------|-------------------|-----------------|
| Focus | Process | Product |
| When | During development | After development |
| Purpose | Prevent defects | Detect defects |
| Approach | Proactive | Reactive |

### Key Quality Concepts

| Term | Definition |
|------|------------|
| **Quality** | Degree to which product meets requirements |
| **Grade** | Category assigned to deliverables (High/Low) |
| **Precision** | Consistency of measurements |
| **Accuracy** | Correctness of measurements |

⚠️ **Note:** Professor will provide 3-4 slides before exam

---

## 7. CONFIGURATION MANAGEMENT

### What is Configuration Management?
Managing and tracking changes to project artifacts (code, documents, deliverables).

### Key Concepts

| Concept | Description |
|---------|-------------|
| **Version Control** | Track all changes to files |
| **Configuration Item** | Element under configuration control |
| **Baseline** | Approved version at a point in time |
| **Change Control** | Process to manage changes to baseline |

### Configuration Management Activities

1. **Identification** - Identify items to control
2. **Control** - Manage changes
3. **Status Accounting** - Track status of items
4. **Audit** - Verify integrity of items

⚠️ **Note:** Professor will provide overview slides

---

# PART B: NUMERICAL TOPICS

---

## 8. EARNED VALUE MANAGEMENT (EVM)

### ⚠️ CRITICAL: Focus on COMPLEX END (Professor's Hint!)

### What is EVM?
Method to measure project performance by comparing planned vs actual progress.

### Project Status Assessment
- **Budget:** Under / Over / On Budget
- **Schedule:** Ahead / Behind / On Schedule

---

### THREE CORE EVM ELEMENTS ⭐

### 1. Planned Value (PV)
**Definition:** Approved value of work to be completed by a given time.

**Also called:** Budgeted Cost of Work Scheduled (BCWS)

**Formula:**
```
PV = (Planned % Complete) × BAC
```

### 2. Actual Cost (AC)
**Definition:** Total cost actually incurred for work completed.

**Also called:** Actual Cost of Work Performed (ACWP)

**Note:** No formula - this is GIVEN (actual money spent)

### 3. Earned Value (EV)
**Definition:** Value of work actually completed to date.

**Also called:** Budgeted Cost of Work Performed (BCWP)

**Formula:**
```
EV = (Actual % Complete) × BAC
```

**BAC = Budget at Completion (Total project budget)**

---

### VARIANCE FORMULAS ⭐⭐

### Schedule Variance (SV)
```
SV = EV - PV
```

| SV Result | Meaning |
|-----------|---------|
| SV > 0 (Positive) | **Ahead of schedule** |
| SV = 0 | On schedule |
| SV < 0 (Negative) | **Behind schedule** |

### Cost Variance (CV)
```
CV = EV - AC
```

| CV Result | Meaning |
|-----------|---------|
| CV > 0 (Positive) | **Under budget** |
| CV = 0 | On budget |
| CV < 0 (Negative) | **Over budget** |

**Memory Trick:** EV always comes first!
- **SV** = EV - **P**V (Schedule uses **P**lanned)
- **CV** = EV - **A**C (Cost uses **A**ctual)

---

### PERFORMANCE INDEX FORMULAS ⭐⭐

### Schedule Performance Index (SPI)
```
SPI = EV / PV
```

| SPI Result | Meaning |
|------------|---------|
| SPI > 1 | **Ahead of schedule** |
| SPI = 1 | On schedule |
| SPI < 1 | **Behind schedule** |

### Cost Performance Index (CPI)
```
CPI = EV / AC
```

| CPI Result | Meaning |
|------------|---------|
| CPI > 1 | **Under budget** (earning more than spending) |
| CPI = 1 | On budget |
| CPI < 1 | **Over budget** (earning less than spending) |

**CPI Interpretation:** For every $1 spent, you earn $CPI.
- CPI = 0.67 → Earning $0.67 per $1 spent (33% over budget)
- CPI = 1.25 → Earning $1.25 per $1 spent (25% under budget)

---

### FORECASTING FORMULAS ⭐⭐⭐ (COMPLEX END)

### Estimate to Complete (ETC)
**Definition:** Expected cost to finish REMAINING work.

**Formula:**
```
ETC = (BAC - EV) / CPI
```

### Estimate at Completion (EAC)
**Definition:** Expected TOTAL cost of completing ALL work.

**Four Methods:**

| Scenario | Formula |
|----------|---------|
| One-time variance (atypical) | `EAC = AC + (BAC - EV)` |
| Based on CPI (typical) | `EAC = BAC / CPI` or `EAC = AC + [(BAC - EV) / CPI]` |
| Based on CPI and SPI | `EAC = AC + [(BAC - EV) / (CPI × SPI)]` |
| New estimate produced | `EAC = AC + ETC` |

### Variance at Completion (VAC)
**Definition:** Forecast of cost variance at project end.

```
VAC = BAC - EAC
```

| VAC Result | Meaning |
|------------|---------|
| Positive | Under budget (savings) |
| Negative | Over budget (overrun) |

### To Complete Performance Index (TCPI)
**Definition:** Cost efficiency required to complete within budget.

**Two Cases:**

| Condition | Formula |
|-----------|---------|
| If on/under budget (use BAC) | `TCPI = (BAC - EV) / (BAC - AC)` |
| If over budget (use EAC) | `TCPI = (BAC - EV) / (EAC - AC)` |

**Interpretation:**
- TCPI > 1 → Must work more efficiently to meet budget
- TCPI < 1 → Can relax slightly
- TCPI = 1 → Continue at current efficiency

---

### EVM FORMULAS QUICK REFERENCE

| Metric | Formula | > 0 or > 1 | < 0 or < 1 |
|--------|---------|------------|------------|
| **SV** | EV - PV | Ahead | Behind |
| **CV** | EV - AC | Under budget | Over budget |
| **SPI** | EV / PV | Ahead | Behind |
| **CPI** | EV / AC | Under budget | Over budget |
| **ETC** | (BAC - EV) / CPI | - | - |
| **EAC** | BAC / CPI | - | - |
| **VAC** | BAC - EAC | Savings | Overrun |
| **TCPI** | (BAC - EV) / (BAC - AC) | Work harder | Can relax |

---

### WORKED EXAMPLE 1: Basic EVM

**Problem:**
- Project Duration: 12 months
- Budget (BAC): $100,000
- Time Elapsed: 6 months
- Planned % Complete: 50%
- Actual % Complete: 40%
- Amount Spent (AC): $60,000

**Solution:**

```
Step 1: Calculate PV
PV = Planned % × BAC
PV = 50% × $100,000 = $50,000

Step 2: Calculate EV
EV = Actual % × BAC
EV = 40% × $100,000 = $40,000

Step 3: AC is given
AC = $60,000

Step 4: Calculate SV
SV = EV - PV = $40,000 - $50,000 = -$10,000
→ BEHIND SCHEDULE (negative)

Step 5: Calculate CV
CV = EV - AC = $40,000 - $60,000 = -$20,000
→ OVER BUDGET (negative)

Step 6: Calculate SPI
SPI = EV / PV = $40,000 / $50,000 = 0.8
→ BEHIND SCHEDULE (less than 1)

Step 7: Calculate CPI
CPI = EV / AC = $40,000 / $60,000 = 0.67
→ OVER BUDGET (earning 67¢ per $1 spent)
```

**Conclusion:** Project is behind schedule and over budget!

---

### WORKED EXAMPLE 2: Forecasting (Complex)

**Continuing from Example 1...**

```
Step 8: Calculate ETC
ETC = (BAC - EV) / CPI
ETC = ($100,000 - $40,000) / 0.67
ETC = $60,000 / 0.67 = $89,552

Step 9: Calculate EAC (using CPI)
EAC = BAC / CPI
EAC = $100,000 / 0.67 = $149,254

OR

EAC = AC + ETC = $60,000 + $89,552 = $149,552

Step 10: Calculate VAC
VAC = BAC - EAC
VAC = $100,000 - $149,254 = -$49,254
→ Expected $49,254 OVERRUN

Step 11: Calculate TCPI (to complete within original budget)
TCPI = (BAC - EV) / (BAC - AC)
TCPI = ($100,000 - $40,000) / ($100,000 - $60,000)
TCPI = $60,000 / $40,000 = 1.5
→ Must be 50% MORE efficient to meet original budget (very difficult!)
```

---

### WORKED EXAMPLE 3: Table-Based Problem

**Given Monthly Data:**

| Month | PV | AC | EV |
|-------|-----|-----|-----|
| Jan | 10 | 10 | 5 |
| Feb | 15 | 20 | 15 |
| Mar | 25 | 30 | 25 |
| Apr | 20 | 40 | 35 |
| May | 25 | 50 | 45 |
| Jun | 30 | 60 | 55 |

**Find CV and SV on June 30:**

```
Step 1: Sum values to June
PV (Jan-Jun) = 10 + 15 + 25 + 20 + 25 + 30 = 125
AC (Jan-Jun) = 10 + 20 + 30 + 40 + 50 + 60 = 210
EV (Jan-Jun) = 5 + 15 + 25 + 35 + 45 + 55 = 180

Step 2: Calculate CV
CV = EV - AC = 180 - 210 = -30
→ OVER BUDGET by 30 units

Step 3: Calculate SV
SV = EV - PV = 180 - 125 = +55
→ AHEAD OF SCHEDULE by 55 units
```

**Interpretation:** Project is ahead of schedule but over budget!

---

## 9. COMMUNICATION MANAGEMENT

### Communication Channels Formula ⭐

```
Number of Channels = n(n-1) / 2

Where n = number of stakeholders/team members
```

**Examples:**

| Team Size (n) | Channels | Calculation |
|---------------|----------|-------------|
| 5 | 10 | 5×4/2 = 10 |
| 10 | 45 | 10×9/2 = 45 |
| 15 | 105 | 15×14/2 = 105 |
| 20 | 190 | 20×19/2 = 190 |

### Effect of Adding Team Members

**Problem:** Team has 10 members. 3 more join. How many NEW channels?

```
Original channels: 10(10-1)/2 = 45
New team size: 10 + 3 = 13
New channels: 13(13-1)/2 = 78
Additional channels: 78 - 45 = 33 new channels
```

---

### Three Communication Methods

| Method | Description | Examples |
|--------|-------------|----------|
| **Interactive** | Real-time, multi-directional | Meetings, calls, video conferences |
| **Push** | One-way, sent to specific receivers | Emails, memos, reports |
| **Pull** | Receiver accesses when needed | Intranet, shared drives, wikis |

---

### STRATEGIES FOR REDUCING COMMUNICATION COMPLEXITY ⭐

> **Professor's Paragraph - Use as Template:**
>
> Too many communication channels can lead to confusion. PM can simplify by:
>
> 1. **Create sub-teams** - Let each group communicate through a single representative
> 2. **Set up clear communication plan** - Define who talks to whom, how often, which tools
> 3. **Single source of truth** - Keep all information in one project management tool
> 4. **Reduce meeting overload** - Combine similar meetings, remove low-value ones
> 5. **Limit direct stakeholder access** - Route through PM or team leads only
>
> These actions make communication cleaner, simpler, and easier for everyone.

---

## 10. MOTIVATION THEORIES

### ⭐ Professor's Favorite Topic - Scenario Questions!

---

### MASLOW'S HIERARCHY OF NEEDS ⭐⭐

```
                    /\
                   /  \
                  /    \      5. SELF-ACTUALIZATION
                 / S-A  \     (Creativity, personal growth,
                /────────\     reaching full potential)
               /          \
              /  ESTEEM    \  4. ESTEEM NEEDS
             /──────────────\ (Recognition, respect,
            /                \ achievement, status)
           /     SOCIAL       \
          /────────────────────\ 3. SOCIAL/BELONGING
         /                      \ (Relationships, team,
        /       SAFETY           \ friendship, family)
       /──────────────────────────\
      /                            \ 2. SAFETY NEEDS
     /      PHYSIOLOGICAL           \ (Security, stability,
    /────────────────────────────────\ job security)
                                      
                                      1. PHYSIOLOGICAL (BASE)
                                      (Food, water, shelter, sleep)
```

### Key Points:
- People move UP as lower needs are satisfied
- Cannot focus on higher needs if lower needs are unmet
- PM must identify which level employee is at

### Level Examples:

| Level | Examples in Workplace |
|-------|----------------------|
| **Physiological** | Salary for food/shelter, breaks, comfortable workspace |
| **Safety** | Job security, safe work environment, health insurance |
| **Social** | Team activities, good relationships, belonging to team |
| **Esteem** | Recognition, promotions, respect from colleagues |
| **Self-Actualization** | Challenging work, creativity, personal development |

---

### HERZBERG'S TWO-FACTOR THEORY ⭐⭐

| Factor Type | Effect | Examples |
|-------------|--------|----------|
| **Hygiene Factors** (Dissatisfiers) | Cause dissatisfaction if MISSING, but DON'T motivate if present | Salary, policies, working conditions, job security, relationships, status |
| **Motivation Factors** (Satisfiers) | TRULY motivate and increase satisfaction | Achievement, recognition, the work itself, responsibility, growth, advancement |

### Key Insight ⭐
```
Hygiene factors met ≠ Motivation

A person can have good salary, house, car, family
BUT still be unmotivated!

True motivation comes from MOTIVATION FACTORS.
```

---

### SCENARIO EXAMPLE 1: Maslow

**Question:** "A project manager has a good house, good car, and happy family. But he is not happy at work. Explain why using Maslow's theory."

**Answer:**
Using Maslow's Hierarchy of Needs:

1. **Physiological needs** - MET (has salary for food, shelter)
2. **Safety needs** - MET (job security, stable life)
3. **Social needs** - MET (happy family, relationships)
4. **Esteem needs** - MAY NOT BE MET (needs recognition, achievement, respect)
5. **Self-actualization** - NOT MET (needs personal growth, challenging work)

The PM is unhappy because lower-level needs are satisfied, but higher-level needs (esteem, self-actualization) are NOT met. He needs:
- Recognition for his work
- Challenging projects
- Opportunities for growth
- Respect from peers

---

### SCENARIO EXAMPLE 2: Herzberg

**Question:** "An employee has all material comforts - good salary, nice office, job security. How would you motivate this person?"

**Answer:**
Using Herzberg's Two-Factor Theory:

**Hygiene factors present:**
- ✅ Good salary
- ✅ Nice office (working conditions)
- ✅ Job security

These only PREVENT dissatisfaction but don't MOTIVATE.

**To truly motivate, provide Motivation Factors:**
1. **Give challenging work** - interesting, meaningful tasks
2. **Provide recognition** - acknowledge achievements publicly
3. **Offer growth opportunities** - training, new skills, career advancement
4. **Increase responsibility** - delegate important decisions
5. **Enable achievement** - set goals that lead to accomplishment

---

### QUICK COMPARISON

| Aspect | Maslow | Herzberg |
|--------|--------|----------|
| **Focus** | Human needs hierarchy | Job satisfaction factors |
| **Levels** | 5 levels (pyramid) | 2 categories |
| **Key Idea** | Satisfy lower needs first | Hygiene ≠ Motivation |
| **Application** | Identify which level person is at | Identify if missing hygiene or motivation factors |

---

## 11. PROJECT COST MANAGEMENT

### Cost Management Processes

| Process | Description |
|---------|-------------|
| **Plan Cost** | Develop cost management approach |
| **Estimate Costs** | Approximate monetary resources needed |
| **Determine Budget** | Aggregate costs to establish baseline |
| **Control Costs** | Monitor and control project costs |

---

### BUDGET FORMULA ⭐⭐

```
Cost Baseline = Cost Estimate + Contingency Reserve

Project Budget = Cost Baseline + Management Reserve
```

### Visual Representation:
```
┌────────────────────────────────────────┐
│          PROJECT BUDGET                │
├────────────────────────────────────────┤
│  ┌──────────────────────────────────┐  │
│  │        COST BASELINE             │  │
│  │  ┌────────────────────────────┐  │  │
│  │  │      COST ESTIMATE         │  │  │
│  │  │   (All work packages)      │  │  │
│  │  └────────────────────────────┘  │  │
│  │   + Contingency Reserve          │  │
│  └──────────────────────────────────┘  │
│  + Management Reserve                  │
└────────────────────────────────────────┘
```

### Two Types of Reserves ⭐

| Reserve Type | Purpose | Part of Baseline? | Authority |
|--------------|---------|-------------------|-----------|
| **Contingency** | Known/identified risks | ✅ YES | PM can use |
| **Management** | Unknown risks | ❌ NO | Needs management approval |

---

### WORKED EXAMPLE: Budget Calculation

**Given Project Costs:**

| Component | Cost |
|-----------|------|
| HR Costs | $50,000 |
| Equipment | $30,000 |
| Materials | $10,000 |
| Services | $5,000 |
| **Cost Estimate** | **$95,000** |

**Risk Reserves:**
- Contingency Reserve (for identified risks): $9,500 (10% of estimate)
- Management Reserve (for unknown risks): $10,450 (10% of baseline)

**Calculation:**
```
Cost Estimate = $50,000 + $30,000 + $10,000 + $5,000 = $95,000

Cost Baseline = Cost Estimate + Contingency Reserve
Cost Baseline = $95,000 + $9,500 = $104,500

Project Budget = Cost Baseline + Management Reserve
Project Budget = $104,500 + $10,450 = $114,950
```

---

### ⚠️ Important Clarification

**SPI and CPI are NOT in Cost Management!**

| Metric | Belongs To |
|--------|------------|
| SPI, CPI | EVM Chapter |
| Budget Baseline | Cost Management Chapter |

---

## 12. STAKEHOLDER REGISTER

### What is a Stakeholder?
Individuals, groups, or organizations who may affect, be affected by, or perceive themselves affected by the project.

### Stakeholder Register Components

| Column | Description |
|--------|-------------|
| **Name/Role** | Stakeholder identification |
| **Job Title** | Position in organization |
| **Contact** | Phone, email |
| **Category** | Internal/External |
| **Expectation** | What they want from project |
| **Communication Req.** | How/when to update them |
| **Power/Interest** | Grid position |
| **Engagement Level** | Current & Desired |

---

### POWER/INTEREST GRID ⭐⭐

```
              HIGH POWER
                  │
   ┌──────────────┼──────────────┐
   │   KEEP       │    MANAGE    │
   │  SATISFIED   │    CLOSELY   │
   │              │              │
LOW├──────────────┼──────────────┤HIGH
INT│              │              │INT
   │   MONITOR    │    KEEP      │
   │    ONLY      │   INFORMED   │
   │              │              │
   └──────────────┴──────────────┘
              LOW POWER
```

### Four Quadrants

| Quadrant | Power | Interest | Strategy | Examples |
|----------|-------|----------|----------|----------|
| **Manage Closely** | High | High | Work closely, full engagement | Sponsor, PM, Key client |
| **Keep Satisfied** | High | Low | Keep happy, don't bore with details | Senior executives, Regulators |
| **Keep Informed** | Low | High | Regular updates, can help with details | End-users, Team members |
| **Monitor** | Low | Low | Minimal effort, newsletters | General public |

---

### STAKEHOLDER REGISTER EXAMPLE

| Name | Job Title | Contact | Category | Expectation | Communication | Power/Interest | Engagement |
|------|-----------|---------|----------|-------------|---------------|----------------|------------|
| Qasim | Project Lead | 0333-2244768 | Internal | On time, within budget | Email & Tel | Keep Satisfied | Leading |
| Ali | Sponsor | ali@company.com | Internal | ROI, success | Weekly report | Manage Closely | Supportive |
| Users | End Users | - | External | Easy to use | Monthly demo | Keep Informed | Neutral |

---

### LEVELS OF ENGAGEMENT

| Level | Description |
|-------|-------------|
| **Unaware** | Doesn't know project exists |
| **Resistant** | Doesn't want project to happen |
| **Neutral** | Fine either way |
| **Supportive** | Wants project to succeed |
| **Leading** | Actively helping project succeed |

---

## 13. ORGANIZATIONAL STRUCTURE

### Three Main Types

| Structure | PM Authority | Func. Mgr Authority | Team Reporting |
|-----------|--------------|---------------------|----------------|
| **Functional** | Very Low | Very High | To Func. Manager |
| **Projectized** | Very High | Very Low | To PM |
| **Matrix** | Varies | Varies | Dual reporting |

---

### MATRIX STRUCTURE VARIANTS ⭐⭐

| Type | PM Authority | Func. Mgr Authority | Conflict Level |
|------|--------------|---------------------|----------------|
| **Weak Matrix** | 20-30% | 70-80% | Medium |
| **Balanced Matrix** | 50% | 50% | **HIGHEST** |
| **Strong Matrix** | 70-80% | 20-30% | Medium |

### Why Balanced Matrix Has HIGHEST Conflicts?
- Equal power = both want control
- Team member has TWO bosses with equal authority
- Competing priorities
- Unclear decision-making authority

---

### COMPLETE COMPARISON TABLE

| Aspect | Functional | Weak Matrix | Balanced Matrix | Strong Matrix | Projectized |
|--------|------------|-------------|-----------------|---------------|-------------|
| PM Authority | None/Little | Limited | Low-Moderate | Moderate-High | High-Total |
| Func. Mgr Role | Controls | Controls | Mixed | Limited | Little/None |
| PM Role | Part-time | Part-time | Full-time | Full-time | Full-time |
| Resource Avail. | Little | Limited | Low-Moderate | Moderate-High | High-Total |
| Budget Control | Func. Mgr | Func. Mgr | Mixed | PM | PM |
| PM Admin Staff | Part-time | Part-time | Part-time | Full-time | Full-time |

---

### SCENARIO QUESTION

**Question:** "In an organization, team members report to both project manager and department heads. Equal power distribution creates frequent conflicts. What structure is this?"

**Answer:** This is a **Balanced (Standard) Matrix** structure because:
1. Dual reporting to both PM and Functional Manager
2. Equal (50-50) authority distribution
3. Highest conflict level due to equal power
4. Neither manager dominates decisions

---

# PART C: QUICK REFERENCE TABLES

---

## ALL FORMULAS IN ONE PLACE

### Communication
```
Channels = n(n-1) / 2
```

### COCOMO Basic
```
Effort = a × (KLOC)^b
Time = c × (Effort)^d
```

### COCOMO Intermediate
```
Effort = EAF × a × (KLOC)^b
EAF = Product of all cost drivers
```

### Cost Management
```
Cost Baseline = Cost Estimate + Contingency Reserve
Project Budget = Cost Baseline + Management Reserve
```

### EVM Core
```
PV = Planned % × BAC
EV = Actual % × BAC
AC = Given (actual spent)
```

### EVM Variance
```
SV = EV - PV
CV = EV - AC
```

### EVM Performance
```
SPI = EV / PV
CPI = EV / AC
```

### EVM Forecasting
```
ETC = (BAC - EV) / CPI
EAC = BAC / CPI
VAC = BAC - EAC
TCPI = (BAC - EV) / (BAC - AC)
```

---

## COCOMO ABCD VALUES

| Mode | a | b | c | d |
|------|---|---|---|---|
| Organic | 2.4 | 1.05 | 2.5 | 0.38 |
| Semi-detached | 3.0 | 1.12 | 2.5 | 0.35 |
| Embedded | 3.6 | 1.20 | 2.5 | 0.32 |

---

## EVM INTERPRETATION

| Metric | > 0 or > 1 | = 0 or = 1 | < 0 or < 1 |
|--------|------------|------------|------------|
| **SV** | Ahead of schedule | On schedule | Behind schedule |
| **CV** | Under budget | On budget | Over budget |
| **SPI** | Ahead of schedule | On schedule | Behind schedule |
| **CPI** | Under budget | On budget | Over budget |

---

## CONTRACT SELECTION

| Scope Clarity | Risk Preference | Contract |
|---------------|-----------------|----------|
| Clear | Control cost | Fixed Price |
| Unclear | Accept uncertainty | Cost Reimbursable |
| Partial | Share risk | Time & Materials |

---

## MATRIX AUTHORITY %

| Type | PM | Functional Mgr |
|------|-----|----------------|
| Weak | 20-30% | 70-80% |
| Balanced | 50% | 50% |
| Strong | 70-80% | 20-30% |

---

# 📋 EXAM CHECKLIST

## ⭐⭐⭐⭐⭐ CRITICAL
- [ ] Scrum/Agile - All roles, events, artifacts, principles
- [ ] EVM - ALL formulas including forecasting (COMPLEX END!)

## ⭐⭐⭐⭐ HIGH
- [ ] COCOMO - Basic AND Intermediate with EAF
- [ ] Procurement - All 3 types with subdivisions
- [ ] PM Responsibilities - 10 knowledge areas
- [ ] Maslow & Herzberg - Scenario practice
- [ ] Matrix Structures - All types with conflict levels

## ⭐⭐⭐ MEDIUM
- [ ] Communication - Channels formula + paragraph
- [ ] Stakeholder Register - Table creation
- [ ] Cost Management - Baseline formula

## ⭐⭐ MATERIALS PROVIDED
- [ ] Selenium - Sample code from professor
- [ ] Quality Management - Slides from professor
- [ ] Configuration Management - Slides from professor

---

## 💡 PROFESSOR'S HINTS

1. **EVM:** Focus on COMPLEX END, not simple
2. **Scrum:** Study ALL lectures - no shortcuts
3. **Selenium:** Modify sample code, don't copy exactly
4. **Contracts:** Complex scenarios may need TWO contracts
5. **Maslow/Herzberg:** Think practically about workplace scenarios

---

## 🎯 EXAM STRATEGY

1. **For Selenium:** Modify sample code to show individual effort
2. **For Scenarios:** Think as a Project Manager
3. **For Numerical:** Show ALL calculation steps
4. **For Scrum:** Reference specific activities/processes
5. **For EVM:** Double-check positive/negative interpretations

---

**Document Version:** 1.0  
**Last Updated:** February 2, 2026  
**Pages:** ~30

---

# 🎓 GOOD LUCK WITH YOUR SPM FINAL EXAM!
