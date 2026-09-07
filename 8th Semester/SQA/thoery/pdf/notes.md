# Software Quality Assurance & Testing Notes

These notes combine all available Markdown lecture files and the attached images into one easy-to-study guide. The wording is simplified, but the content is kept complete.

## 1. Course Snapshot

- Course: CS-468 Software Quality Assurance & Testing
- Credit hours: 3
- Pre-requisite: Software Engineering
- Instructor: Farhana Ashraf
- Office: HS-12B
- Website: https://cseducationlecture.wordpress.com/
- Password shown in the lecture notes: `abc123`
- Course Information Sheet: CIS

### Assessment

- Quizzes / Assignments: 20%
- Midterm Exam: 30%
- Final Exam: 50%
- Total: 100 marks

### Text Books

- Daniel Galin, *Software Quality Assurance: From Theory to Implementation*, Pearson, latest edition
- Brian Hambling, *Software Testing, ISTQB-ISEB Foundation Guide*, latest edition

### Reference Books

- Kshirasagar Naik, Priyadarshi Tripathy, *Software Testing and Quality Assurance: Theory and Practice*, Wiley, latest edition
- Rex Black, *Advanced Software Testing Guide to the ISTQB Advanced Certification as an Advanced Technical Test Analyst*, ISTQB, latest edition

### Course Outline

- Software error, fault and failure
- Causes of software errors
- Software quality factors
- Software process and process improvement
- Models, standards and guidelines
- Capability Maturity Model (CMM)
- ISO software quality standard
- Introduction to testing
- Principles of testing
- Fundamental test process
- Test cases
- Testing and test case design techniques
- Psychology of testing
- Code of ethics
- Test management
- Incident management
- Configuration management
- Introduction to automated mode of testing
- Testing Maturity Model
- Defect-based and experience-based testing

## 2. Foundation of SQA

### What is software from the SQA point of view?

Software is not only code. In SQA, software includes:

- Computer programs (code)
- Procedures
- Documentation
- Data

All four are needed to ensure quality during development and during long-term maintenance.

### What is software quality?

According to Pressman, software quality is the degree of conformance to:

- Specific functional requirements
- Specified software quality standards
- Good Software Engineering Practices (GSEP)

### What is Software Quality Assurance (SQA)?

According to the IEEE expanded definition, SQA is a systematic and planned set of actions used to provide confidence that software development or maintenance:

- Conforms to established functional and technical requirements
- Conforms to managerial requirements such as schedule and budget

### Main objectives of SQA

- Assure conformance to functional and technical requirements
- Assure conformance to schedule and budget requirements
- Initiate and manage improvement of software development and SQA activities

### Quality assurance vs quality control

Quality assurance and quality control are related, but they are not the same.

#### Quality Assurance (QA)

- QA is process related
- It focuses on the process used to develop a product
- It works throughout development, not only at the end
- It aims to prevent the causes of errors, and to detect and correct them early
- Its overall goal is to reduce the cost of guaranteeing quality
- In software, QA becomes SQA

#### Quality Control (QC)

- QC is product related
- It focuses on evaluating or testing the developed product
- It is concerned with withholding products that do not qualify
- It usually takes place after development or manufacturing is completed, but before the product is shipped
- In software, QC is closely associated with the tester's role

### Easy difference

- QA = improve the process so fewer defects are created
- QC = inspect or test the product so bad output does not reach the customer

### Relationship between software engineering and SQA

Software engineering is a systematic, disciplined and measurable approach to software development, operation and maintenance. Because of this, software engineering provides a strong environment for achieving SQA goals.

Important idea:

- Software engineers and the SQA team must cooperate
- This cooperation helps achieve quality in an efficient and economical way

## 3. Why SQA in Software is Different

The attached comparison image shows why software quality assurance is harder than quality assurance for many other industrial products.

| Characteristic | Software products | Other industrial products |
|---|---|---|
| Complexity | Usually very complex, with a very large number of operational options | Much lower complexity, often with at most a few thousand operational options |
| Visibility of product | Invisible product, so defects or omissions cannot be detected by sight. Example: a diskette or CD only stores the software. | Visible product, so many defects can be detected by sight |
| Nature of development and production process | Opportunities to detect defects mainly arise in one phase: product development | Opportunities to detect defects arise in many phases: product development, production planning, and manufacturing |

Because of these differences, software needs SQA methods and tools designed specifically for software and firmware, rather than simply copying quality methods from ordinary manufacturing.

### Easy way to remember

Software is harder to assure because it is:

- More complex
- Less visible
- More dependent on the development process itself

## 4. Characteristics of SQA Environments

The attached SQA environment image shows that software development usually happens inside a large network of cooperating teams, not in isolation.

### Main parties shown in the image

- Our software development team
- Other software development teams inside the same organization
- Hardware development team
- Customer's development team
- Other suppliers' development teams
- A cooperation and coordination function

### Meaning

SQA must work in an environment where:

- Many internal teams interact
- External suppliers may provide parts of the system
- The customer may also have a development team
- Coordination is essential because defects can appear at interfaces between teams, systems and responsibilities

### Environmental characteristics mentioned in the lecture

- Contract conditions and commitments may define both scope and timetable
- Customer-supplier relationships often require consultation and customer approval
- Teamwork requirements are strong
- Cooperation and coordination are needed with other software and hardware teams, both internal and external
- Interfaces with other software systems must be managed carefully
- The project may have to continue even when team members change
- Maintenance may continue for several years after development
- These same issues also apply to internal development, even if the contracts or customer-supplier relationships are informal

### Key implication

Because of these environmental pressures, SQA needs not only technical effort but also continuous managerial effort in parallel with the development work.

## 5. Software Error, Fault and Failure

The attached diagram shows a chain inside the software development process:

- Human errors happen during development
- Some errors create software faults
- Some faults later appear as software failures

### Important terminology note

The lecture material uses two closely related wordings:

- In general testing language, an error is a human mistake
- In the Week 2 slides, a software error can also mean an incorrect part of the software created by that mistake

For exam understanding, it is safest to remember the chain as:

- Human mistake -> software defect/fault -> observed failure

### Simple definitions

- Error: a human mistake made by an analyst, programmer or another team member
- Fault: a software defect that can cause incorrect functioning in a specific application
- Failure: incorrect behavior observed when a fault is activated during execution

### Lecture interpretation

- A software error may be a section of code that is partially or totally incorrect because of a grammatical, logical or similar mistake
- A software fault is a software error that causes incorrect functioning
- A software fault becomes a software failure only when it is activated
- The root of any software failure is a software error

### Important relationships

- Not every error becomes a fault
- Not every fault causes a visible failure immediately
- A fault may remain hidden until a certain condition triggers it
- If a faulty component is built into a larger system, the whole system may fail

### Quick memory line

Error -> Fault -> Failure

Human action -> Defect in software -> Wrong behavior during execution

### Why software errors occur

People make mistakes because they are fallible, but mistakes also become more likely because of pressures such as:

- Deadlines
- System complexity
- Organizational complexity
- Changing technology

These pressures increase the chance of errors in:

- Specifications
- Design
- Code

### Why systems fail

- An error can lead to a defect or fault, and that fault can lead to an observed failure
- If a document contains an error and is used to build a component, that component may become faulty
- If the faulty component is used in a full system, the system may fail
- Environmental conditions such as radiation, magnetism, electronic fields and pollution can also affect hardware or firmware and lead to system failure

### What testing should do

To avoid failure, we must either:

- Prevent errors and faults from being introduced
- Find them and correct them before serious failures occur

Testing helps with both avoidance and rectification, which is why it should begin early and continue throughout development.

### Problems caused by faulty software

Faulty software can harm:

- People
- Companies
- The environment

Examples mentioned in the lecture:

- Aircraft crashes
- Failure of hospital life-support systems
- Incorrect billing
- Release of harmful chemicals or radiation

Possible consequences include:

- Loss of money
- Loss of time
- Loss of business reputation
- Injury
- Death

## 6. Nine Causes of Software Errors

The lectures list these 9 causes of software errors:

1. Faulty requirements definition
2. Client-developer communication failures
3. Deliberate deviations from software requirements
4. Logical design errors
5. Coding errors
6. Non-compliance with documentation and coding instructions
7. Shortcomings of the testing process
8. Procedure errors
9. Documentation errors

### 1. Faulty requirements definition

This means the requirements themselves are wrong or weak. Examples:

- Wrong definition of requirements
- Missing vital requirements
- Incomplete definition of requirements
- Inclusion of unnecessary requirements that are not expected to be needed soon

### 2. Client-developer communication failures

These happen when the developer misunderstands what the client said or changed. Examples:

- Misunderstanding the client's instructions in the requirements document
- Misunderstanding written requirement changes during development
- Misunderstanding oral requirement changes during development
- Misunderstanding the client's responses to design questions
- Ignoring or missing client messages about requirement changes

### 3. Deliberate deviations from software requirements

Sometimes developers knowingly move away from the approved requirements. Examples:

- Reusing modules from an old project without enough analysis or adaptation
- Omitting required functions because of time or budget pressure
- Adding developer-initiated improvements without client approval

Even small unapproved changes can later become software errors.

### 4. Logical design errors

These are mistakes in how the system logic is designed. Examples:

- Wrong algorithms
- Sequencing errors in processes
- Wrong boundary conditions
- Omission of required software states
- Missing definitions for reactions to illegal operations

### 5. Coding errors

Coding errors are mistakes introduced while translating design into code.

Common reasons mentioned in the lecture:

- Misunderstanding the design documentation
- Linguistic errors in programming languages
- Errors in the application of development tools
- Errors in data selection

### 6. Non-compliance with documentation and coding instructions

When team members do not follow agreed standards:

- Other team members struggle to understand their code
- Replacement team members find the work harder to understand
- Design reviews become harder
- Testing becomes less efficient and may leave more defects undetected
- Error correction becomes harder and may introduce new defects
- Maintenance becomes more costly and error-prone

### 7. Shortcomings of the testing process

Testing weaknesses can leave many defects undetected or uncorrected. Causes include:

- Incomplete test plans
- Untested software functions or system states
- Failure to document and report detected errors and faults
- Failure to promptly correct detected faults
- Incomplete correction because of negligence or time pressure

### 8. Procedure errors

Procedures guide users through each process step. Errors in procedures are especially dangerous in complex multi-step systems where:

- Different kinds of data can be entered
- Intermediate results may need to be checked

### 9. Documentation errors

These include errors in design documents, internal software documentation, user manuals and help screens.

Examples:

- Omission of software functions
- Wrong explanations or instructions that lead users into dead ends
- Listing functions that do not exist
- Listing functions planned earlier but later removed
- Listing functions from old versions that no longer exist in the current version

## 7. Five Views of Software Quality

As software use has spread widely, customer expectations have increased. At the same time, developers are under pressure to deliver better quality at lower cost.

Important factors that influence the making and buying of software products include:

- User needs and expectations
- Manufacturer's considerations
- Inherent characteristics of the product
- Perceived value of the product

Software quality can be understood from five different views.

### 1. Transcendental view

- Quality is recognized through experience
- It is difficult to define exactly
- A high-quality product "stands out"
- No concrete measurement is emphasized

### 2. User view

- Quality means meeting user needs and expectations
- It is about fitness for use
- It includes subjective ideas such as usability and reliability
- Service conditions in the sales contract can also affect user satisfaction
- This view is highly personalized in nature

### 3. Manufacturing view

- This view comes from manufacturing sectors such as automobiles and electronics
- Quality means conformance to requirements
- Any deviation from requirements reduces quality
- Process is very important
- Goal: build the product right the first time to reduce development and maintenance cost

### 4. Product view

- Good internal properties lead to good external quality
- Example: high modularity improves maintainability and testability

### 5. Value-based view

- This view combines excellence and worth
- Quality is linked with customer willingness to pay
- Quality is a measure of excellence, and value is a measure of worth
- Quality must make economic sense
- This view is a trade-off between cost and quality

## 8. Need for Comprehensive Requirements

Correctness alone is not enough. A software product may satisfy its basic functional requirements and still disappoint users if it performs poorly in other areas.

Requirements should also address:

- Usability
- Reusability
- Maintainability
- Reliability
- Training needs
- Other quality-related aspects across the full life cycle

### Why this matters

Many cases of low customer satisfaction happen because software was correct in a narrow sense, but weak in other important qualities.

### Quality factors

The issues related to software attributes and use are grouped into content groups called quality factors.

Not every project gives equal emphasis to every factor, but teams should examine all factors before deciding what to include.

This means requirements documents may differ from project to project, and not every quality factor will be represented equally in every document.

## 9. Who is Interested in Software Quality Requirements?

The client is not the only interested party.

### Client's interest

- Wants requirements that assure the desired product quality

### Developer's interest

Developers may also want additional requirements such as:

- Reusability
- Verifiability
- Portability

These may not always be important to the client, so a project may use:

- The client's requirements document
- The developer's additional requirements document

## 10. McCall's Software Quality Factor Model

McCall's classic model contains 11 software quality factors grouped into 3 categories.

### The three categories

| Category | Main idea | Factors |
|---|---|---|
| Product operation | Quality during day-to-day use | Correctness, Reliability, Efficiency, Integrity, Usability |
| Product revision | Quality when changing or maintaining the software | Maintainability, Flexibility, Testability |
| Product transition | Quality when moving to new environments or interacting with other systems | Portability, Reusability, Interoperability |

### Easy memory trick

- Operation = using the product now
- Revision = changing the product later
- Transition = moving the product elsewhere

### McCall's factor model tree idea

The attached tree image shows:

- Root idea: quality software
- Three major branches: product operation, product revision, product transition
- Each branch splits into its related quality factors

## 11. Product Operation Quality Factors

These factors directly affect the daily operation of software.

### 1. Correctness

Correctness requirements define the required outputs of the software system.

Examples and dimensions:

- Accuracy of outputs
- Completeness of output information
- Up-to-dateness of information
- Availability or response time
- Standards for coding and documentation

Example from the notes:

- Displaying a customer's account balance correctly in a sales accounting information system

### 2. Reliability

Reliability requirements deal with failures to provide service.

They may define:

- The maximum allowed failure rate
- Reliability expectations for the full system or specific functions

### 3. Efficiency

Efficiency requirements deal with the hardware resources needed to perform all required functions while still satisfying the other requirements.

Resources mentioned in the notes:

- Processing capability
- Memory and disk storage
- Communication line capacity
- Power usage for portable units

Typical measures:

- MIPS
- MHz
- MB, GB, TB
- Kbps, Mbps, Gbps

### 4. Integrity

Integrity requirements deal with software system security.

Examples:

- Preventing unauthorized access
- Differentiating read permission and write permission
- Restricting who may add or change data

### 5. Usability

Usability requirements deal with the staff resources needed to:

- Train new employees
- Operate the software system

### Product operation sub-factors from the attached image

| Software quality factor | Sub-factors |
|---|---|
| Correctness | Accuracy, Completeness, Up-to-dateness, Availability (response time), Coding and documentation guidelines compliance (consistency) |
| Reliability | System reliability, Application reliability, Computational failure recovery, Hardware failure recovery |
| Efficiency | Efficiency of processing, Efficiency of storage, Efficiency of communication, Efficiency of power usage (for portable units) |
| Integrity | Access control, Access audit |
| Usability | Operability, Training |

## 12. Product Revision Quality Factors

These factors affect software maintenance activities.

### Maintenance activities supported by this category

- Corrective maintenance: fixing faults and failures
- Adaptive maintenance: changing software to fit new conditions or customers without changing its core identity
- Perfective maintenance: improving or enhancing the existing software

### 1. Maintainability

Maintainability requirements determine the effort needed by users and maintenance staff to:

- Find the reasons for failures
- Correct failures
- Verify that corrections were successful

Related items mentioned in the notes:

- Modular structure
- Internal program documentation
- Programmer's manual

### 2. Flexibility

Flexibility requirements cover the capabilities and effort needed for adaptive maintenance.

Examples:

- Adapting a software package for different customers in the same business area
- Adjusting software to different sizes of operation
- Handling different product ranges
- Supporting later improvements or additions

### 3. Testability

Testability requirements deal with testing both the information system and its operation.

Examples:

- Features that help testers, such as predefined intermediate results
- Log files
- Automatic diagnostics before system startup
- Diagnostic checks used by maintenance technicians to find causes of failures

### Product revision sub-factors from the attached image

| Software quality factor | Sub-factors |
|---|---|
| Maintainability | Simplicity, Modularity, Self-descriptiveness, Coding and documentation guidelines compliance (consistency), Document accessibility |
| Flexibility | Modularity, Generality, Simplicity, Self-descriptiveness |
| Testability | User testability, Failure maintenance testability, Traceability |

## 13. Product Transition Quality Factors

These factors deal with adaptation to other environments and interaction with other systems.

### 1. Portability

Portability requirements support moving the software to different environments, such as:

- Different hardware
- Different operating systems

This makes it possible to use the same basic software in many situations.

### 2. Reusability

Reusability requirements support using software modules built for one project in another project.

Benefits:

- Saves development effort
- Shortens development time
- Often improves quality because reusable modules may already have been tested and used before

### 3. Interoperability

Interoperability requirements focus on interfaces with:

- Other software systems
- Other equipment firmware

They may specify:

- The names of required external software or firmware
- The standard output structure accepted in a certain industry or application area

### Product transition sub-factors from the attached image

| Software quality factor | Sub-factors |
|---|---|
| Portability | Software system independence, Modularity, Self-descriptive |
| Reusability | Modularity, Document accessibility, Software system independence, Application independence, Self-descriptive, Generality, Simplicity |
| Interoperability | Commonality, System compatibility, Software system independence, Modularity |

## 14. Testing Basics

### What is testing?

Testing is an activity used to reduce risk and improve quality by finding defects.

Important point:

- Testing does not directly remove defects
- Testing does not directly improve quality by itself
- Testing reports defects so the development team can fix them

Testing also helps measure some aspects of software quality through systematic coverage.

One major role of testing is to examine important functional and non-functional requirements before the system enters service.

### Testing as part of quality assurance

Testing is one component of the broader SQA effort that aims to ensure systems enter service without defects that could cause serious failures.

## 15. Resources Triangle

The attached image shows a triangle with:

- Time
- Money
- Quality
- Features shown in the center

### Meaning

Software projects always work under trade-offs. If you change one side of the triangle, the others are affected.

Easy interpretation:

- More features usually need more time or more money
- Better quality also needs time, money and good testing effort
- Tight deadlines often pressure quality unless scope or resources are adjusted

## 16. Static Testing and Dynamic Testing

### Static testing

Static testing means testing without executing the code.

Examples:

- Reviews
- Checking specifications and documents

Why it matters:

- Many failures begin with human errors in documents such as specifications
- Such errors are cheaper to fix early than later defects and failures
- Reviews can remove ambiguities and errors before coding

### Dynamic testing

Dynamic testing means executing the program with test data.

### Key point

Software testing includes both:

- Static testing
- Dynamic testing

## 17. Retesting and Regression Testing

Whenever something changes in software, data, installation procedures or user documentation, two kinds of testing are needed.

### Retesting

- Run tests again to confirm that the reported problem has been fixed
- Focus closely on the changed functionality

### Regression testing

- Check that changes have not damaged other parts of the software
- Cover major functions to detect unintended side effects

### Quick difference

| Retesting | Regression testing |
|---|---|
| Checks the specific fix | Checks for side effects elsewhere |
| Narrow focus | Broader focus |
| Confirms correction | Protects existing functionality |

## 18. Effectiveness of Tests

To make testing effective:

- Use well-proven test design techniques
- Apply the principles of testing

## 19. Principles of Testing

### 1. Testing shows the presence of bugs

Testing can show that defects exist, but it cannot prove that no defects exist.

### 2. Exhaustive testing is impossible

For large and complex systems, it is impossible to test every possible input and condition.

So testing should focus on:

- Risk
- Priority
- Important areas

### 3. Early testing

The earlier a defect is found, the cheaper it is to fix.

If a requirement defect is found very late, many work-products may need rework and retesting.

### 4. Defect clustering

Defects are not spread evenly.

Often:

- A small number of modules contain most of the problems

Possible reasons:

- System complexity
- Volatile code
- Change after change
- Developer experience
- Developer inexperience

This follows the Pareto idea:

- About 80% of problems are found in about 20% of modules

### 5. The pesticide paradox

If the same tests are repeated again and again, they eventually stop finding new defects.

So test cases should be reviewed and refreshed.

### 6. Testing is context dependent

Different kinds of software need different kinds of testing.

### 7. Absence of errors fallacy

Even if no known defects remain, the software may still be unfit for release if it does not meet user needs.

## 20. SDLC and Work-Products

### What is a work-product?

A work-product is an intermediate deliverable created while building the final system.

Work-products can be:

- Documentation
- Code

When the system is ready for release, the code and its associated documentation become the product.

### SDLC idea

In software development, work-products are usually created in defined stages:

- Capturing customer requirements
- Creating specifications and design
- Building the system
- Delivering the system

## 21. Waterfall Model

The attached image shows this flow:

Requirement specification -> Functional specification -> Technical specification -> Program specification -> Coding -> Test

### Main idea

In the waterfall model:

- Testing is carried out after coding has been fully developed
- Testing acts as a quality check near the end
- A release decision is made after testing

### Main drawback

If the product fails testing late in the process, the cost of fixing problems can be high because so much has already been built.

### Easy summary

- Strength: clear stages
- Weakness: defects may be discovered too late

## 22. Verification and Validation

The remedy for late discovery of problems is to check work-products throughout the life cycle.

### Verification

Verification checks whether the work-product meets its specified requirements.

Simple meaning:

- Are we building the product the right way?

Example from the lecture:

- Checking whether a website follows usability guidelines

### Validation

Validation checks whether the work-product matches user needs.

Simple meaning:

- Are we building the right product?

Example from the lecture:

- Even if a website follows guidelines, novice users should still be able to use it easily

## 23. Development Models that Support Early Evaluation

The notes mention two kinds of models that allow earlier evaluation:

- The V-model
- Cyclical or iterative models

In cyclical or iterative models, coding often begins once the initial user needs have been captured, instead of waiting for every detail to be finalized first.

The lecture focuses on the V-model.

## 24. The V-Model

The attached image shows the V-model clearly.

### Left side of the V: development work-products

- Requirement specification
- Functional specification
- Technical specification
- Program specification
- Coding at the bottom

These work-products become more detailed as development moves downward.

### Middle of the V: test planning starts early

For each work-product, the related test is planned as soon as that work-product exists.

Example:

- Acceptance testing is planned while working on requirements

### Right side of the V: test execution levels

- Unit testing
- Integration testing
- System testing
- Acceptance testing

### Mapping from specification to testing

| Development work-product | Test planning / execution |
|---|---|
| Requirement specification | Acceptance test planning -> Acceptance testing |
| Functional specification | System test planning -> System testing |
| Technical specification | Integration test planning -> Integration testing |
| Program specification | Unit test planning -> Unit testing |
| Coding | Actual code to be tested |

### Why the V-model is useful

- Testing starts conceptually early
- Each specification can be reviewed for correctness and testability
- Defects can be found earlier than in pure waterfall

### Limits of the V-model

User validation still happens late in the life cycle. If requirements were wrong or changed, the problem may not be discovered until acceptance testing.

### What should be reviewed on the left side?

Each specification can be reviewed to check:

- Conformance to the previous work-product
- Enough detail for the next work-product
- Testability

## 25. V-Model and Verification / Validation

The V-model usually includes these work-products and activities:

1. Requirement specification
2. Functional specification
3. Technical specification
4. Program specification
5. Code
6. Unit testing
7. Integration testing
8. System testing
9. Acceptance testing

### Verification in the V-model

Work-products 1 to 5 are verified to ensure they follow the rules and satisfy the previous specification.

### Validation in the V-model

Activities 6 to 9 progressively assess the software against user needs captured in the specifications.

## 26. Test Levels

Testing helps ensure:

- Work-products are developed correctly
- The final product meets user needs

### Test basis

In the V-model, each document on the left side is a test basis for a testing activity on the right side.

### General test levels

- Unit (component) testing
- Integration testing
- System testing
- Acceptance testing

### Focus of each level

| Test level | Main focus |
|---|---|
| Unit testing | Code inside a single unit |
| Integration testing | Interfaces and interaction between units or systems |
| System testing | End-to-end functionality of the full system |
| Acceptance testing | User perspective and business expectations |

### Tester involvement in reviews

Testers should review requirements and other documents before they are released.

In iterative development, each release is tested before the next one begins.

## 27. Unit (Component) Testing

### Purpose

Unit testing checks that a single component or unit:

- Meets its specification
- Can execute all code written for it

### Other names for a unit

- Program
- Module
- Component

### Test bases for unit testing

- Component requirements
- Detailed design
- Code itself

In practice, developers may use the code itself to decide test inputs and expected results, not only the specification.

### Test objects

- Components
- Programs
- Data conversion or migration programs
- Database modules

### Important notes

- Unit testing requires access to the code
- It is usually done by the developer who wrote the code
- Defects found and fixed during unit testing are often not recorded

### Tools and methods

- Unit test frameworks
- Debugging tools
- Test-Driven Development (TDD): write tests first, then code, then improve until the tests pass

## 28. Integration Testing

### Purpose

Integration testing exposes defects in:

- Interfaces
- Interactions between integrated components or systems

### Test bases

- Software and system design
- System architecture diagrams
- Workflows
- Use cases

### Test objects

- Interface code
- Subsystems
- Database implementations at interfaces

### Integration strategies

#### Big Bang integration

All units are linked at once to form the complete system.

#### Top-down integration

Build the system in stages, starting with higher-level components that call lower-level ones.

#### Bottom-up integration

Build the system from lower-level components upward.

### Levels of integration testing

#### Component integration testing

- Focuses on interactions between software components
- Done after unit testing
- Usually carried out by developers

#### System integration testing

- Focuses on interactions between different systems
- May happen after system testing of individual systems
- Usually carried out by testers

Example from the notes:

- A trading system interacting with a stock exchange system for market prices

### Extra risks in system integration testing

- Cross-platform technical issues
- Business workflow issues
- Ownership of regression problems caused by changes in one system affecting another

## 29. System Testing

### Purpose

System testing examines the full system from an end-to-end perspective.

It checks:

- Functional requirements
- Non-functional requirements

### Factors affecting amount of system testing

- How much testing was done earlier
- How much verification was done on requirements

### Test bases

- System and software requirement specifications
- Use cases
- Functional specifications
- Risk analysis reports
- System, user and operation manuals

### Test object

- The full system under test

## 30. Acceptance Testing

### Purpose

Acceptance testing gives end users confidence that the system behaves according to their expectations.

### Test basis

Acceptance testing is mainly based on the requirement specification.

Possible test bases:

- User requirements
- System requirements
- Use cases
- Business processes
- Risk analysis reports

### Test objects

- Fully integrated system
- Forms and reports produced by the system

### Responsibility

Acceptance testing is often done by customers or users, though other project team members may also help.

### Forms of acceptance testing

- User acceptance testing: users check that business needs are met
- Operational acceptance testing: checks operational readiness, support processes and maintenance procedures
- Contract and regulation acceptance testing
- Alpha testing: at the developer's site
- Beta testing: at the customer's site

### Additional point

Acceptance testing may also assess readiness for deployment and use.

## 31. Test Types

The notes group test types into these categories:

- Functional testing: checks specific functions of the system
- Non-functional testing: checks behavioral or quality-related aspects
- Structural testing: checks structural aspects such as code or architecture
- Testing after code changes: retesting and regression testing

## 32. Maintenance Testing

Maintenance testing is needed after release when a change becomes necessary.

Important point:

- Impact analysis is needed to decide how much regression testing should be done after the change

## 33. Quick Comparisons for Revision

### Error vs Fault vs Failure

| Term | Meaning |
|---|---|
| Error | Human mistake |
| Fault | Defect created in software or documentation |
| Failure | Observable incorrect behavior during execution |

### Verification vs Validation

| Verification | Validation |
|---|---|
| Checks against specification | Checks against user needs |
| Are we building the product right? | Are we building the right product? |

### Static vs Dynamic Testing

| Static testing | Dynamic testing |
|---|---|
| No code execution | Code is executed |
| Reviews and document checks | Running tests with data |

### Waterfall vs V-Model

| Waterfall | V-Model |
|---|---|
| Testing mainly at the end | Test planning starts early |
| Late defect discovery risk | Earlier alignment between specs and tests |
| Simple sequential flow | Clear mapping from development to test levels |

### Product Operation vs Product Revision vs Product Transition

| Category | Meaning |
|---|---|
| Product operation | Quality during actual use |
| Product revision | Quality during maintenance and change |
| Product transition | Quality during migration, reuse and interaction with other systems |

## 34. Short Exam-Friendly Summary

- SQA is a planned and systematic way to ensure software meets technical, functional, schedule and budget requirements.
- Software quality is not only correctness. It also includes reliability, usability, maintainability, portability and more.
- Software is harder to assure than many physical products because it is invisible, highly complex and mainly evaluated during development.
- Error, fault and failure are different: a human error can create a fault, and a fault can cause a failure.
- McCall's model groups 11 quality factors into product operation, product revision and product transition.
- Testing helps reduce risk by finding defects, but it does not itself fix defects.
- Static testing checks documents without running code. Dynamic testing runs the code.
- Retesting confirms a fix. Regression testing checks that the fix did not break something else.
- Exhaustive testing is impossible, so testing must focus on risk and priorities.
- In the V-model, each development stage has a matching test level.
- Unit testing checks components, integration testing checks interfaces, system testing checks the complete system, and acceptance testing checks user expectations.

## 35. One-Line Memory Aids

- Quality software = correct + reliable + efficient + secure + usable + maintainable + flexible + testable + portable + reusable + interoperable
- Error -> Fault -> Failure
- Verification = right way, Validation = right product
- Retesting = same fix, Regression = side effects
- V-model = each spec has a matching test
