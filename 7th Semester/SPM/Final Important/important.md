# SPM Final Exam - Important Topics & Study Guide

**Course:** Software Project Management  
**Semester:** 7th Semester  
**Exam Type:** Final Examination  
**Date Prepared:** February 2, 2026

---

## 📋 Table of Contents

1. [Selenium Testing](#1-selenium-testing)
2. [Scrum and Agile](#2-scrum-and-agile)
3. [Project Code Estimation (COCOMO)](#3-project-code-estimation-cocomo)
4. [Procurement Contracts](#4-procurement-contracts)
5. [Responsibilities of Project Manager](#5-responsibilities-of-project-manager)
6. [Quality Management](#6-quality-management)
7. [Configuration Management](#7-configuration-management)
8. [Earned Value Management (EVM)](#8-earned-value-management-evm)
9. [Communication Management](#9-communication-management)
10. [Motivation Theories (Maslow & Herzberg)](#10-motivation-theories-maslow--herzberg)
11. [Project Cost Management](#11-project-cost-management)
12. [Stakeholder Register](#12-stakeholder-register)
13. [Organizational Structure](#13-organizational-structure)

---

## 1. Selenium Testing

### Overview
- **Definition:** A web application testing framework
- **Purpose:** Automated testing of web pages and forms
- **Languages Supported:** Multiple programming languages
- **Exam Expectation:** ~50 lines of code

### Key Concepts

#### What to Test
- **Form Fields:** Input validation and data entry
- **Submit Buttons:** Click actions and form submission
- **URL Verification:** Check if page redirects or stays on same page after submission
- **Validation Messages:** Check for success/error messages

#### Testing Approach
1. **Declaration Phase:** Initialize variables and browser driver
2. **Browser Launch:** Open the target URL
3. **Field Population:** Enter values into form fields
4. **Submit Action:** Click the submit button
5. **Verification:** Check if submission was successful

#### URL Validation Logic
- **Same URL:** Page refreshes with success message → Form submitted successfully
- **Different URL:** Page redirects (e.g., "Thank you" page) → Successful submission
- **Validation Check:** Verify expected URL matches actual current URL

### Expected Question Types

#### Scenario-Based Questions
- You will be given a **specific page** to test (e.g., signup page, complaint submission form, student information form)
- **Number of fields:** You may choose 5-7 fields if not specified
- **Common forms:** Simple forms like signup, feedback, complaint submission, student registration

#### Important Notes
- ✅ **DO:** Modify the sample code to show individual effort
- ✅ **DO:** Use the sample as a reference and adapt to exam requirements
- ❌ **DON'T:** Copy the sample code exactly (instructor will check for identical submissions)
- ❌ **DON'T:** Panic - this is not overly complex

### Materials to be Provided
> 📦 **Professor will provide:**
> - Sample Selenium code (~40-50 lines) for reference
> - Example with validation checks (if validation is required in exam)
> - Code structure breakdown and explanation

### Study Tips
- Focus on understanding **what each part of the code does**
- Understand the **structure:** declarations → browser launch → field input → submit → verification
- Practice modifying field names and values
- Know how to check for URL changes

---

## 2. Scrum and Agile

### Overview
- **Reference:** Multiple lectures conducted on this topic
- **Importance:** ⭐⭐⭐⭐⭐ CRITICAL - All content is important
- **Question Type:** Scenario-based with practical application

### Key Concepts

#### Scrum Framework
- **Scrum Activities:** All activities covered in lectures are important
- **Scrum Processes:** Must understand the complete workflow
- **Scrum Roles:** Product Owner, Scrum Master, Development Team
- **Scrum Events:** Sprint Planning, Daily Scrum, Sprint Review, Sprint Retrospective

#### What You Need to Know
1. **Project Manager Role in Scrum:** How PM manages the project in Agile environment
2. **Activity Identification:** Which Scrum activity addresses specific issues
3. **Problem Analysis:** Identify which activity was not properly followed when issues occur
4. **Decision Making:** Act as a project manager and make appropriate decisions

### Expected Question Types

#### Scenario Questions
- Given a project situation, identify what the project manager should do
- Which Scrum part/activity includes specific processes
- Identify which activity was incorrectly implemented causing project issues
- Determine if activities are being properly followed

#### Application-Based
- **Real-world scenarios** where you must think as a project manager
- Explain how things should be done correctly
- No shortcuts available - must study all Scrum content thoroughly

### Study Guidelines
- ⚠️ **No exemptions** on this topic
- Read **all lectures** on Agile and Scrum
- Understand the **practical application** of each concept
- Practice **thinking like a project manager** in Scrum scenarios

### Materials to be Provided
> 📦 **Professor will provide:**
> - Complete lecture notes review
> - Scenario examples for practice

---

## 3. Project Code Estimation (COCOMO)

### Overview
- **Full Form:** COnstructive COst MOdel
- **Importance:** ⭐⭐⭐⭐ HIGH - Focus on COCOMO only
- **Question Type:** Numerical calculations
- **Note:** Functional Point method NOT included in exam

### Models and Formulas

#### Basic COCOMO Model
**Simple formula involving:**
- **Development Time** calculation
- **Effort** calculation

**Formula Structure:**
```
Effort = a × (KLOC)^b
Time = c × (Effort)^d
```
*Values of a, b, c, d provided in tables or scenarios*

#### Intermediate COCOMO Model
**Additional Component: Effort Adjustment Factor (EAF)**

**Formula:**
```
Effort = EAF × a × (KLOC)^b
Time = c × (Effort)^d

EAF = Product of all cost drivers
```

**EAF Calculation:**
- Multiple cost driver values will be **provided in tables**
- Pick appropriate values based on scenario
- **Multiply all selected values** to get EAF
- Apply EAF in the main formula

#### ABCD Parameters
- Values given in **tables** or **easy format** (possibly paragraph form)
- Extract and use in formula
- Mention clearly which values you're using

### Expected Question Types

#### Numerical Problems
1. Calculate **Effort** for given project size
2. Calculate **Development Time**
3. Calculate **EAF** from multiple cost drivers
4. Complete project estimation with all parameters

### Important Notes
- ✅ **DO:** Practice both Basic and Intermediate COCOMO
- ✅ **DO:** Understand how to read and extract values from tables
- ❌ **DON'T:** Confuse Basic COCOMO (no EAF) with Intermediate (has EAF)
- ⚠️ **Confirm:** Check if EAF is in Intermediate model (verify in class)

### Study Strategy
- Master the formulas
- Practice picking values from tables
- Understand when to use Basic vs Intermediate
- If you learn Intermediate, Basic is automatically covered

### Materials to be Provided
> 📦 **Already covered in lectures:**
> - ABCD value tables
> - Formula explanations
> - Cost driver tables for EAF

---

## 4. Procurement Contracts

### Overview
- **Number of Types:** Three main contract types
- **Question Type:** Scenario-based and examples
- **Complexity Level:** Moderate - requires scenario analysis

### Three Main Contract Types

#### 1. Fixed Price Contract
- **Characteristics:** Fixed cost agreed upfront
- **Best For:** Well-defined scope, clear requirements
- **Risk:** Mostly on the contractor
- **Example Use:** Development projects with clear specifications

#### 2. Reimbursable Contract (Cost Plus)
- **Characteristics:** Actual costs reimbursed plus fee
- **Best For:** Uncertain scope, evolving requirements
- **Risk:** Mostly on the client
- **Example Use:** R&D projects, exploratory development

#### 3. Time and Material (T&M) Contract
- **Characteristics:** Payment based on time spent and materials used
- **Best For:** Undefined scope, ongoing work
- **Risk:** Shared between client and contractor
- **Example Use:** Support and maintenance services

### Subdivisions and Examples

Each contract type has **subdivisions** that you should know:
- **Fixed Price:** Firm Fixed Price (FFP), Fixed Price Incentive Fee (FPIF)
- **Cost Reimbursable:** Cost Plus Fixed Fee (CPFF), Cost Plus Incentive Fee (CPIF)
- **Time & Material:** Standard T&M, T&M with ceiling

### Practical Application Scenario

#### Development + Support Example
**Situation:** A software company needs both development and ongoing support

**Analysis:**
- **Development Contract:**
  - Can be **Fixed Price** (scope is clear)
  - Can be **Reimbursable** (if requirements evolve)
  - Known timeline and deliverables

- **Support Contract:**
  - **Should be Time & Material**
  - **Why?** Unpredictable workload
    - One day: 10 hours of work
    - One month: 100 hours of work
    - Next month: 1000 hours of work
  - Cannot be Fixed (scope undefined)
  - Cannot be Reimbursable easily (cost unpredictable)

**Result:** TWO different contracts for same project

### Expected Question Types

#### Type 1: Provide Examples
- Give 1-2 examples for each contract type
- Provide subdivisions for each type

#### Type 2: Scenario Analysis
- Given a situation, identify which contract type applies
- **Complex scenarios** where multiple contract types might apply
- Analyze and determine if ONE or TWO contracts are needed
- Justify your contract selection

#### Type 3: Mixed Requirements
- Scenario mentions changes/evolving requirements
- Determine appropriate contract type based on:
  - Scope clarity
  - Risk distribution
  - Project nature (development/support/maintenance)

### Key Decision Factors
1. **Scope Definition:** Clear vs Unclear
2. **Risk Tolerance:** Who bears the risk?
3. **Budget Certainty:** Fixed vs Variable costs
4. **Project Duration:** Short-term vs Long-term
5. **Work Nature:** Development vs Support vs Maintenance

### Important Notes
- ✅ **DO:** Analyze the situation carefully
- ✅ **DO:** Consider that multiple contracts might be needed
- ✅ **DO:** Understand the reasoning behind each contract type
- ❌ **DON'T:** Assume only one contract applies
- ⚠️ **Remember:** Simple contract identification is easy; complex scenarios require analysis

---

## 5. Responsibilities of Project Manager

### Overview
- **Reference:** Lecture 1 - Slide 1 (Areas of Project Management Discussion)
- **Importance:** ⭐⭐⭐⭐ HIGH
- **Question Type:** Scenario-based application

### Key Management Areas

#### Core Responsibilities
1. **Stakeholder Management**
   - How to manage stakeholder expectations
   - Communication strategies
   - Conflict resolution

2. **Human Resource Management**
   - Team building and motivation
   - Resource allocation
   - Performance management

3. **Scope Management**
   - Defining project boundaries
   - Change control
   - Requirement management

4. **Time Management**
   - Scheduling and timeline management
   - Critical path analysis
   - Milestone tracking

5. **Budget Management**
   - Cost estimation and control
   - Financial reporting
   - Resource cost management

6. **Risk Management**
   - Risk identification and assessment
   - Mitigation strategies
   - Contingency planning

7. **Quality Management**
   - Quality standards and processes
   - Quality assurance and control

8. **Communication Management**
   - Communication planning
   - Information distribution
   - Performance reporting

### Expected Question Types

#### Scenario-Based Questions
**Format:** Given a specific project scenario with certain conditions:
- How would the Project Manager handle **human resource management**?
- How should the PM approach **scope management**?
- What **time management** or **budgeting** strategies should be applied?

#### Question Structure
- **Context:** A project with specific characteristics (e.g., tight deadline, limited budget, new technology)
- **Task:** Explain how PM will manage specific area(s)
- **Expected Answer:** Particular processes and approaches from lecture content

### Study Approach
- All content from **Lecture 1 (Chapter 1)** areas of discussion
- Small details (2-3 lines per area) are important
- Understand **particular processes** used for each management area
- Focus on **practical application** rather than just definitions

### Important Notes
- Questions will reference **specific scenarios**
- Must know **which processes** to apply in each situation
- Links back to other topics (Quality Management, Configuration Management, etc.)

### Materials to be Provided
> 📦 **Professor will provide:**
> - Detailed breakdown of management areas from Lecture 1
> - Scenario examples for each responsibility area

---

## 6. Quality Management

### Overview
- **Reference:** Covered in lectures (specific lecture number to be confirmed)
- **Related Topic:** Configuration Management
- **Question Type:** Process-based and scenario application

### Key Concepts

#### Quality Management Processes
1. **Quality Planning**
   - Define quality standards
   - Quality metrics identification
   - Quality management plan creation

2. **Quality Assurance (QA)**
   - Process audits
   - Quality system evaluation
   - Continuous improvement

3. **Quality Control (QC)**
   - Inspection and testing
   - Defect identification
   - Corrective actions

### Expected Question Types

#### Process Identification
- **Question:** What are the processes in Quality Management?
- **Question:** Which quality processes are being applied in a given scenario?
- **Question:** How should quality management be implemented in specific context?

### Study Guidelines
- Focus on **understanding processes** and their application
- Know **when to apply** each process
- Understand the **difference** between QA and QC

### Important Notes
- ⚠️ Not covered thoroughly in class by professor
- ⚠️ Additional materials will be provided for study

### Materials to be Provided
> 📦 **Professor will provide:**
> - 3-4 slides (not small slides - substantial content)
> - Important concepts extracted from quality management chapter
> - Process explanations and examples
> - ⏰ **Will be shared before exam**

---

## 7. Configuration Management

### Overview
- **Core Concept:** Version Control
- **Related Field:** Software Engineering (if studied previously)
- **Purpose:** Managing changes in project artifacts

### Key Concepts

#### What is Configuration Management?
- **Version Control:** Tracking and managing changes to documents, code, and deliverables
- **Configuration Items:** Elements under configuration control
- **Baseline Management:** Establishing and maintaining baselines
- **Change Control:** Managing changes to baselines

#### In Project Management Context
- How configuration management is implemented in PM
- Relationship with project deliverables
- Change management processes
- Documentation and tracking

### Study Resources
- Refer to **Software Engineering** concepts if studied before
- Configuration Management lecture slides
- Focus on **PM-specific application** of version control

### Materials to be Provided
> 📦 **Professor will provide:**
> - Configuration Management lecture slides
> - Overview of how it works in project management
> - Topic list for focused study
> - Minimum required reading materials

---

## 8. Earned Value Management (EVM)

### Overview
- **Previous Coverage:** Appeared in midterm exam
- **Importance:** ⭐⭐⭐⭐⭐ VERY IMPORTANT
- **Complexity Level:** High - Focus on complex scenarios
- **Question Type:** Numerical calculations

### ⚠️ Critical Hint from Professor
> **"Rather than giving something simple, we are focusing toward giving something complex."**
> 
> **Smart students should understand:** Focus on the **COMPLEX END** rather than the **SIMPLE END**
> 
> **Hint about approach:** Think about which **SIDE** to read from:
> - Left side or Right side of the chapter?
> - **Figure this out based on complexity hint!**

### Key Performance Metrics

#### Essential Formulas

**Planned Value (PV):**
```
PV = Planned % Complete × Budget at Completion (BAC)
```

**Earned Value (EV):**
```
EV = Actual % Complete × BAC
```

**Actual Cost (AC):**
```
AC = Actual cost spent so far
```

#### Performance Indices

**Schedule Performance Index (SPI):**
```
SPI = EV / PV

Interpretation:
- SPI > 1.0 : Ahead of schedule
- SPI = 1.0 : On schedule
- SPI < 1.0 : Behind schedule
```

**Cost Performance Index (CPI):**
```
CPI = EV / AC

Interpretation:
- CPI > 1.0 : Under budget
- CPI = 1.0 : On budget
- CPI < 1.0 : Over budget
```

#### Variance Analysis

**Schedule Variance (SV):**
```
SV = EV - PV
```

**Cost Variance (CV):**
```
CV = EV - AC
```

### Expected Question Types

#### Complex Calculations
- Multiple project phases or activities
- Integrated scenarios with multiple metrics
- Interpretation of results
- Forecasting and estimation

#### Areas of Focus
- Understanding **complex scenarios** over simple ones
- **Weight** of complex questions is higher
- **Application** of formulas in multi-step problems

### Important Notes
- ✅ **DO:** Study the complex end of the chapter
- ✅ **DO:** Practice interpretation of CPI and SPI values
- ✅ **DO:** Understand practical implications of metrics
- ⚠️ **Professor's hint:** Direction matters - left or right side reading
- 📚 **Theory knowledge:** Understanding formulas helps with numerical problems

---

## 9. Communication Management

### Overview
- **Reference:** Lecture on Communication Management
- **Importance:** ⭐⭐⭐⭐ HIGH
- **Question Types:** Numerical + Paragraph-based theory

### Key Components

#### Communication Channels Formula
**Formula for number of communication channels:**
```
Number of Channels = n(n-1)/2

Where n = number of stakeholders/team members
```

**Application:**
- Calculate total communication channels in a project
- Understand communication complexity
- Plan communication strategies

#### Communication Methods
1. **Interactive Communication:** Real-time, multi-directional (meetings, calls)
2. **Push Communication:** One-way, sender to specific receivers (emails, reports)
3. **Pull Communication:** Receiver accesses information as needed (intranet, repositories)

### Numerical Problem

#### Important Question
**Status:** Professor mentioned this numerical is **IMPORTANT**
- Specific numerical problem was taught in class
- Same type expected in exam
- Review class notes for this particular problem

### Theory Component

#### Scenario-Based Questions
- **Format:** Scenario or paragraph will be provided
- **Nature:** Not extremely complex
- **Content:** Practical communication management situations

### Materials to be Provided
> 📦 **Professor will provide:**
> - One **specific paragraph** on a particular topic from Communication Management lecture
> - This paragraph is **very important** for exam
> - Read this paragraph carefully
> - Exam question will come from this paragraph
> - ⚠️ **Note:** "Paragraph means paragraph" - NOT a full page
> 
> **What to expect:**
> - Specific topic will be selected by professor
> - Focused content for understanding
> - Scenario-based application

### Study Strategy
- ✅ **DO:** Practice the numerical problem taught in class
- ✅ **DO:** Review communication channel calculations
- ✅ **DO:** Read the provided paragraph thoroughly
- ⚠️ **WAIT FOR:** Paragraph material from professor

---

## 10. Motivation Theories (Maslow & Herzberg)

### Overview
- **Reference:** Lecture 14 - "Managing People in Software Environment"
- **Location in Lecture:** End section (same lecture that includes RACI Chart)
- **Importance:** ⭐⭐⭐⭐ HIGH - Professor's favorite theories
- **Question Type:** Scenario-based application

### Maslow's Hierarchy of Needs

#### The Triangle Theory
**Five Levels (Bottom to Top):**
1. **Physiological Needs** (Base)
   - Food, water, shelter, sleep
   - Basic survival needs

2. **Safety Needs**
   - Security, stability, protection
   - Job security, safe work environment

3. **Social Needs (Love/Belonging)**
   - Relationships, friendships, family
   - Team membership, social connections

4. **Esteem Needs**
   - Recognition, respect, achievement
   - Status, reputation, responsibility

5. **Self-Actualization** (Top)
   - Personal growth, fulfillment
   - Creativity, problem-solving, reaching full potential

#### Application in PM
- People move up the hierarchy as lower needs are satisfied
- Cannot focus on higher needs if lower needs are unmet
- PM must identify which level employee is on

### Herzberg's Two-Factor Theory

#### Two Categories of Factors

**1. Hygiene Factors (Dissatisfiers)**
- **Definition:** Factors that can cause dissatisfaction if missing, but don't motivate if present
- **Examples:**
  - Salary and benefits
  - Company policies
  - Working conditions
  - Job security
  - Relationships with supervisors
  - Good car, house, family stability

**2. Motivation Factors (Satisfiers)**
- **Definition:** Factors that truly motivate and increase job satisfaction
- **Examples:**
  - Achievement and recognition
  - The work itself (interesting, challenging)
  - Responsibility and growth
  - Advancement opportunities
  - Personal development

#### Key Insight
**Having hygiene factors met ≠ Motivation**
- A person can have good salary, house, car, family BUT still be unmotivated
- True motivation comes from motivation factors

### Expected Question Types

#### Scenario Example (Maslow)
**Question Format:**
> "A project manager has a good house, good car, and family. But he is not happy. Explain why he is not happy."

**Answer Approach:**
- Use Maslow's triangle/hierarchy
- Identify which level needs are satisfied (lower levels: physiological, safety, social)
- Identify which needs are NOT satisfied (likely esteem or self-actualization)
- Explain that higher-level needs (recognition, achievement, personal growth) are unmet

#### Scenario Example (Herzberg)
**Question Format:**
> "A person has all material comforts. What hygiene factors are present? How would you motivate this person?"

**Answer Approach:**
- **Identify hygiene factors present:** Salary, security, working conditions
- **Explain:** These only prevent dissatisfaction
- **Identify needed motivation factors:** 
  - Give challenging work
  - Provide recognition
  - Offer growth opportunities
  - Increase responsibility
- **Explain how** to maintain motivation using motivation factors

### Important Notes
- ❌ **DON'T:** Expect overly complex questions
- ✅ **DO:** Understand practical application of theories
- ✅ **DO:** Practice identifying which theory applies to scenarios
- ✅ **DO:** Know the difference between hygiene and motivation factors

### Study Resources
- **Lecture 14:** Managing People in Software Environment
- Focus on **last part of lecture** where theories are explained
- Also includes RACI Chart (separate topic)

---

## 11. Project Cost Management

### Overview
- **Importance:** ⭐⭐⭐⭐ HIGH
- **Question Type:** Numerical calculations
- **Focus Area:** Cost calculation with risk reserves

### Components of Project Cost

#### 1. Direct Project Costs
- **Human Resources:** Salaries, wages, contractor fees
- **Machines/Equipment:** Hardware, software licenses, tools
- **Services:** Cloud services, subscriptions, external services
- **Materials:** Office supplies, equipment

#### 2. Risk Management Reserves
- **Contingency Reserve:** For identified risks
- **Management Reserve:** For unknown risks
- Calculated from Risk Management chapter

### Project Baseline Budget

#### Formula Concept
```
Project Baseline = Direct Project Costs + Risk Reserves

Where:
- Direct Costs = HR Cost + Machine Cost + Service Cost + Materials
- Risk Reserves = Calculated from Risk Management (multiplication formula)
```

### Calculation Approach

#### Data Format
- All values provided in **TABULAR FORM**
- Pick values from tables
- Apply simple calculations

#### Simple Multiplication
**Basic calculation structure:**
1. Sum all direct costs from table
2. Calculate risk reserves (using Risk Management formulas)
3. Add both to get baseline budget

### Important Clarifications

#### ⚠️ What's NOT in Cost Management Section

**SPI and CPI:**
- **Schedule Performance Index (SPI)** → Part of EVM (Earned Value Management)
- **Cost Performance Index (CPI)** → Part of EVM (Earned Value Management)
- **NOT** calculated in Project Cost Management chapter

**Where these belong:**
- SPI/CPI already covered in **Earned Value Management (EVM)**
- EVM chapter handles performance metrics
- Cost Management chapter = baseline and budget calculation only

### Expected Question Types

#### Numerical Problem Format
**Question will ask:**
- Calculate project baseline budget
- Include project costs + risk reserves
- Show breakdown of cost components

**Given in question:**
- Tables with cost data
- Risk factors or probabilities
- All necessary values for calculation

**Your task:**
1. Extract data from tables
2. Calculate direct costs (addition)
3. Calculate risk reserves (multiplication based on risk factors)
4. Sum everything for baseline

### Study Strategy
- ✅ **DO:** Focus on numerical calculations
- ✅ **DO:** Practice reading tables and extracting values
- ✅ **DO:** Understand risk reserve calculation from Risk Management
- ✅ **DO:** Know the baseline formula
- ❌ **DON'T:** Confuse with EVM metrics (SPI/CPI)

### Cross-Reference
- **Risk Management:** Review how to calculate reserves
- **EVM:** Different topic - performance measurement

---

## 12. Stakeholder Register

### Overview
- **Reference:** Chapter 3 or Chapter 4 (related to Power-Interest Grid)
- **Importance:** ⭐⭐⭐ MEDIUM-HIGH
- **Question Type:** Table creation based on scenario
- **Related Concept:** Power-Interest Grid

### Components of Stakeholder Register

#### Table Structure
A stakeholder register includes the following columns:

1. **Stakeholder Name/Role**
   - Individual or group identification
   - Position or title

2. **Power Level**
   - High or Low
   - Ability to influence project decisions

3. **Interest Level**
   - High or Low
   - Degree of concern about project outcomes

4. **Focus Area**
   - What aspect of project they care about
   - Their primary concerns or interests

5. **Update Requirements**
   - How often they need updates
   - Communication frequency and method

6. **Additional Information** (may include)
   - Contact information
   - Expectations
   - Potential impact on project
   - Strategy for engagement

### Power-Interest Grid Connection

#### Four Quadrants
```
         High Power
            │
Low         │        High
Interest ───┼─── Interest
            │
         Low Power
```

**Stakeholder Categories:**
1. **High Power, High Interest:** Manage Closely (Key stakeholders)
2. **High Power, Low Interest:** Keep Satisfied
3. **Low Power, High Interest:** Keep Informed
4. **Low Power, Low Interest:** Monitor

### Expected Question Format

#### Table Creation Task
**Scenario-based question:**
- Project scenario will be described
- Multiple stakeholders mentioned with their characteristics
- You must create a Stakeholder Register table

**Example scenario elements:**
- CEO (high power, moderate interest, wants monthly updates)
- Development Team (low power, high interest, daily updates)
- End Users (low power, high interest, focus on usability)
- Sponsor (high power, high interest, weekly updates)

**Your task:**
1. Identify all stakeholders from scenario
2. Analyze their power and interest levels
3. Determine their focus areas
4. Specify update requirements
5. Create complete table

### Table Format Example

| Stakeholder | Power | Interest | Focus Area | Updates | Management Strategy |
|-------------|--------|----------|------------|---------|-------------------|
| [To be filled based on scenario] |

### Study Approach
- ✅ **DO:** Review Chapter 3/4 lectures on Power-Interest Grid
- ✅ **DO:** Practice identifying power and interest levels
- ✅ **DO:** Understand what information goes in each column
- ❌ **Professor admits:** Exact details not fully remembered - check the lecture
- 🔍 **Action Required:** Find the Stakeholder Register table example in lecture slides

### Materials Reference
> 📦 **In lectures:**
> - Power-Interest Grid explanation
> - Stakeholder Register table format
> - Example of completed register
> 
> **Location:** Chapter 3 or 4 (where Power-Interest Grid was taught)

---

## 13. Organizational Structure

### Overview
- **Importance:** ⭐⭐⭐⭐ HIGH - Very straightforward topic
- **Question Type:** Structure identification and responsibility analysis
- **Focus Area:** Matrix structures and conflict management

### Three Types of Organizational Structures

#### 1. Functional Structure
**Characteristics:**
- Organized by function/department (IT, HR, Finance, etc.)
- Clear hierarchy within each function
- Project Manager has **limited authority**
- Functional managers have **high authority**

**Pros:**
- Clear career paths
- Efficient resource utilization within functions
- Deep functional expertise

**Cons:**
- Poor cross-functional coordination
- Slow response to changes
- Weak project focus

#### 2. Projectized Structure
**Characteristics:**
- Organized by projects
- Project Manager has **high authority**
- Functional managers have **limited/no authority**
- Team members report to PM

**Pros:**
- Strong project focus
- Fast decision making
- Clear authority lines

**Cons:**
- Resource duplication
- Unclear career paths
- Inefficient resource utilization

#### 3. Matrix Structure (Hybrid)
**Characteristics:**
- **Combination** of functional and projectized
- **Dual reporting:** Team members report to BOTH functional manager AND project manager
- **Three types:** Weak, Balanced (Standard), Strong

### Matrix Structure Variants ⭐ IMPORTANT

#### Weak Matrix
- **Functional Manager:** HIGH authority (70-80%)
- **Project Manager:** LOW authority (20-30%)
- PM acts more like a coordinator
- Functional manager makes most decisions

#### Balanced/Standard Matrix
- **Functional Manager:** MODERATE authority (50%)
- **Project Manager:** MODERATE authority (50%)
- Shared decision-making
- **Conflict potential:** HIGHEST (due to equal power)
- Both managers want control

#### Strong Matrix
- **Functional Manager:** LOW authority (20-30%)
- **Project Manager:** HIGH authority (70-80%)
- PM makes most project decisions
- Similar to projectized structure

### Responsibility Division in Matrix

#### Key Conflict Area
**Why conflicts occur:**
- Team member has TWO bosses
- Both want employee's time and effort
- Competing priorities
- Unclear authority boundaries

**Professor's Description:**
> "One person is interfering in another person's work"

**In Weak & Strong Matrix:**
- ONE manager has clear dominance
- Conflicts easier to resolve
- Authority is clear (though dual reporting exists)

**In Balanced Matrix:**
- EQUAL power creates friction
- More conflicts occur
- Requires strong conflict resolution processes

### Expected Question Types

#### Type 1: Structure Identification
- Given organization description, identify structure type
- Explain characteristics of each structure

#### Type 2: Responsibility Analysis
- Describe how responsibilities are divided in matrix structures
- Explain authority levels for PM vs Functional Manager

#### Type 3: Conflict Management
- Why do conflicts occur in matrix structures?
- Which matrix type has most conflicts? (Answer: Balanced/Standard)
- How are responsibilities managed to minimize conflicts?

### Study Strategy
- ✅ **DO:** Understand all three main structures clearly
- ✅ **DO:** Focus on matrix structure variations (Weak, Balanced, Strong)
- ✅ **DO:** Understand authority percentages
- ✅ **DO:** Explain conflict reasons in balanced matrix
- ⭐ **Professor's emphasis:** Matrix structure explanation was taught very well in class

### Quick Reference Table

| Structure Type | PM Authority | Functional Manager Authority | Conflict Level |
|----------------|--------------|------------------------------|----------------|
| Functional | Very Low | Very High | Low |
| Weak Matrix | Low | High | Medium |
| Balanced Matrix | Medium | Medium | **HIGHEST** |
| Strong Matrix | High | Low | Medium |
| Projectized | Very High | Very Low | Low |

---

## 📚 Study Priority Summary

### ⭐⭐⭐⭐⭐ CRITICAL (Must Study Thoroughly)
1. **Scrum and Agile** - All content, no shortcuts
2. **Earned Value Management** - Focus on complex end

### ⭐⭐⭐⭐ HIGH Priority
1. **COCOMO** - Both Basic and Intermediate
2. **Responsibilities of Project Manager** - All management areas
3. **Motivation Theories** - Practical application
4. **Project Cost Management** - Baseline calculations
5. **Organizational Structure** - Matrix structures

### ⭐⭐⭐ MEDIUM-HIGH Priority
1. **Procurement Contracts** - Scenario analysis
2. **Communication Management** - Numerical + paragraph
3. **Stakeholder Register** - Table creation
4. **Selenium Testing** - Code understanding (sample provided)

### ⭐⭐ MEDIUM Priority
1. **Quality Management** - Processes (materials provided)
2. **Configuration Management** - Basic concepts (materials provided)

---

## 📋 Materials Checklist - To Be Provided by Professor

### ✅ Confirmed Materials

- [ ] **Selenium Sample Code** (~40-50 lines with explanation)
- [ ] **Selenium Code with Validation** (if needed for exam)
- [ ] **Quality Management Slides** (3-4 substantial slides)
- [ ] **Configuration Management Slides** (overview and topic list)
- [ ] **Communication Management Paragraph** (specific important topic)
- [ ] **Lecture 1 Management Areas** (detailed breakdown)

### 📖 Self-Study from Lectures

- [ ] Scrum and Agile - All lectures
- [ ] COCOMO - Formula tables and examples
- [ ] EVM - Complex scenarios (hint: which side to read?)
- [ ] Maslow & Herzberg - Lecture 14 (end section)
- [ ] Matrix Structures - Well-explained in class
- [ ] Stakeholder Register - Chapter 3/4 example

---

## 💡 Professor's Key Hints

### General Advice
> "Don't panic. If you study these things, your paper will be fine. There are no major surprises as such."

### Exam Day Support
> "I will come to the exam and will explain things, but I won't make halwa and dissolve it in water to spoon-feed you."
> 
> **Translation:** Professor will be available for questions during exam, but students must do their own work.

### Important Reminders
1. **Tell professor your exam room numbers** when you get admit cards
2. **Study all mentioned topics** - they are all important
3. **Focus on application** rather than pure memorization
4. **Understand concepts** to handle scenario-based questions

---

## 📞 Action Items

### Before Exam
1. ✅ Get admit card and share room number with professor
2. ⏳ Wait for materials from professor (code, slides, paragraphs)
3. 📖 Study all lecture content mentioned in this guide
4. 💻 Review COCOMO formulas and practice calculations
5. 🧮 Practice EVM complex scenarios
6. 📝 Understand Selenium code structure
7. 🤝 Review Scrum activities and processes

### During Study
- Make notes for each topic
- Practice numerical problems
- Create scenario solution frameworks
- Review lecture slides systematically

### Exam Strategy
- Read questions carefully
- For Selenium: Modify, don't copy sample code
- For scenarios: Think as a Project Manager
- For numerical: Show all calculation steps
- For Scrum: Reference specific activities/processes

---

## 🎯 Final Notes

**Exam Complexity:**
- Mix of **numerical**, **scenario-based**, and **practical** questions
- Emphasis on **application** over theory
- **Complex problems** weighted more heavily (especially EVM)
- **Cross-topic integration** possible

**Success Strategy:**
- Study ALL topics (no shortcuts on Scrum/Agile)
- Wait for professor's materials
- Practice different question types
- Understand WHY, not just WHAT
- Stay calm and systematic during exam

---

**Document Version:** 1.0  
**Last Updated:** February 2, 2026  
**Status:** ⏳ Awaiting professor's supplementary materials

**Good luck with your preparation! 🎓**
