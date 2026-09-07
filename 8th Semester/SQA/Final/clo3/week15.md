# week-15.pdf

Source: `week-15.pdf`

---

--- Page 1 ---

CS-468
Software Quality Assurance & Testing
Week 15
1

--- Page 2 ---

Static Testing - Definition
• static testing is a human testing technique that does not involve executing or
running the program or software product. Instead it involves, checking or
monitoring the software at each phase of Software Development Life Cycle.
• Static testing is a type of software testing that is focused on evaluating the quality
of a system or application without executing the code. It is an important aspect of
software testing as it helps identify defects and issues early in the development
process and ensures that the system is of high quality.
2

--- Page 3 ---

Why Is Static Testing Important?
• To identify defects early: This testing helps identify defects and issues early in the
development process, which allows organizations to fix them before the system
deployed. This saves time and resources in the long run and ensures that the
system is of high quality.
• To improve code quality: This testing also helps improve the quality of the code by
identifying issues such as syntax errors, coding standards violations, and design
flaws.
• To reduce maintenance costs: This testing helps reduce maintenance costs by
identifying and fixing defects early in the development process.
3

--- Page 4 ---

Static Testing - Types
• Reviews: A review is a process of examining the software or its documentation to
identify defects or quality issues. There are several types of reviews, including
formal reviews, informal reviews, walkthroughs, and inspections.
• Static analysis: Static analysis involves analyzing the software without executing
the code to find defects, security vulnerabilities, or performance issues. There are
several tools available for performing static analysis, such as SonarQube, PMD, and
FindBugs.
• Code inspection: Code inspection involves reviewing the source code to find
defects, coding standards violations, or other issues. Code inspection is usually
done manually by a team of developers.
• Document review: Document review involves reviewing the software
documentation to ensure that it is complete, accurate, and up-to-date. Document
review is usually done by technical writers or subject matter experts.
• Modeling: Modeling involves creating models of the software or the system to
identify defects or inconsistencies. Modeling can be done using various
techniques, such as data flow diagrams, state diagrams, and use case diagrams.
4

--- Page 5 ---

Static Testing - Techniques
• Reviews: Reviews are a process of examining the software artefacts to identify
issues and defects. Different types of reviews can perform such as code review,
requirements review, design review, etc.
• Walkthroughs: Walkthroughs are an informal type of review where the developer
presents the code or document to the team to receive feedback and suggestions.
• Inspections: Inspections are a formal type of review where the team follows a
predefined process to examine the software artefacts and identify issues.
5

--- Page 6 ---

Static Testing - Techniques
• Software Inspections:
– Inspection process is performed in the earlier stages of the SLDC and is applied to a
specific part of product like SRS, code, product design. etc. It involves manually
examining the various components of the product at the earlier stages. The software
inspection process comprises six phases which are as follows :
6

--- Page 7 ---

Static Testing - Techniques
• Planning for Inspection Meeting –
– This phase focuses on identifying the product to be inspected and the
objective of this inspection.
– A moderator – who manages the entire inspection process, is assigned in this
phase.
– The assigned moderator checks if the product is ready for inspection or not.
The moderator also selects the inspection team and assigns them their roles.
– Moderator also schedules the inspection meeting and distributes the required
material to the inspection team.
• Overview –
– In this phase, the inspection team is given all the background information for
the inspection meeting.
– The author – who is the coder or designer responsible for developing the
product presents his logic and reasoning for the product including the
product’s functions, its intended purpose and the approach or concept used
while developing it.
– It is made sure that each member of the inspection team has understood and
is familiar to the objectives and purpose of the inspection meeting that is to
be held.
7

--- Page 8 ---

Static Testing - Techniques
• Individual Preparation by members –
– In this phase, the members of the inspection team individually prepare for the
inspection meeting by studying the material provided in the earlier phases.
– The team members identify the potential errors or bugs in the product and
record them in a log. The log is finally submitted to the moderator. The
moderator then compiles all the logs received from the members and sends a
copy of it to the author.
– The inspector – who is the person responsible for checking and identifying
errors and inconsistencies in the documents or programs, reviews the product
and records any problems found in it (both general and area-specific). The
inspector records the problems or issues on a log along with the time spent on
preparation.
– The moderator reviews the logs to check if the team is ready and prepared for
the inspection meeting or not.
– Finally, the moderator submits all the compiled logs to the author.
• Inspection Meeting –
– This phase involves author’s discussion on the issues raised by the team
members in the compiled log.
– Members arrive at a decision of whether the issue raised is an error or not.
– Moderator concludes the meeting and provides a summary of the meeting –
8
which is a list of errors found in the product and are to resolved by the author.

--- Page 9 ---

Static Testing - Techniques
• Rework –
– Rework is carried out by the author according the summary list presented by
the moderator in the previous phase.
– The author fixes all the bugs and reports to the moderator
• Follow – up –
– Moderator checks if all errors have been resolved or not. The moderator then
prepares a report. If all errors are fixed and addressed, the moderator releases
the document.
– Otherwise, unresolved issues are added to the report and another inspection
meeting is scheduled
9

--- Page 10 ---

Static Testing - Techniques
• Structured Walkthroughs :
• This type of static testing is less formal and not so rigorous in nature. It has
a simpler process as compared to inspection process. It involves the
following four steps :
10

--- Page 11 ---

Static Testing - Techniques
• Organization –
This step involves assigning roles and responsibilities to the team selected for
structural walkthroughs. The team can consist of the following members :
– Coordinator – organizes and coordinates with all the members for the walkthrough
related activities.
– Presenter – introduces the item to be inspected.
– Scribe – notes down all the issues and suggestions put forward by the members.
– Tester – finds the defects or bugs in the item to be inspected.
– Maintenance Oracle – focuses on future maintenance of the product.
– Standards Bearer – evaluates conformance to the standards and guidelines.
– User Representative – represents the needs and concerns of the user.
• Preparation –
– In this step, focus lies on preparing for the structural walkthroughs which could include
thinking of basic test cases that would be required to test the product.
• Walkthrough –
– Walkthrough is performed by a tester who comes to the meeting with a small set of test
cases.
– Test cases are executed by the tester mentally and results are noted down on a paper or
a presentation media.
11

--- Page 12 ---

Static Testing - Techniques
• Rework and Follow – up –
– This step is similar to that of the last two phases of the inspection process.
– If no bugs are detected, then the product is approved for release. Otherwise,
errors are resolved and again, a structured walkthrough is conducted.
12

--- Page 13 ---

Static Testing - Techniques
Technical Reviews:
• It is a higher level technique as compared to the inspection or walkthrough
technique because it also involves management. This technique is used to assess
and evaluate the product by checking its conformance to the development
standards, guidelines and specifications.
It does not have a defined process and most of the work is carried out by the
moderator as discussed below :
• Moderator gathers and distributes the material and documentation to all team
members.
• Moderator also prepares a set of indicators to evaluate the product with respect to
the specifications and already established standards and guidelines :
– consistency
– documentation
– adherence to standards
– completeness
– problem definition and requirements
• The results are recorded in a document which includes both defects as well as
suggestions.
• Finally, the defects are resolved and the suggestions are taken into account for
improving the product.
13

--- Page 14 ---

Static Testing - Tools
• Code review tools: These tools are used to review the source code to find defects
or vulnerabilities. Examples include Code Collaborator, Crucible, and Gerrit.
• Syntax checkers: These tools check the source code for syntax errors, coding
standards violations, and other potential issues. Examples include JSLint, ESLint,
and PyLint.
• Bug tracking tools: These tools help to track and manage defects found during
static testing. Examples include Bugzilla, JIRA, and Mantis.
• Automated documentation generators: These tools generate documentation
automatically from the source code to help improve the quality of the
documentation. Examples include Doxygen and NaturalDocs.
• Static analysis tools: These tools analyze the source code to find defects, security
vulnerabilities, or performance issues. Examples include SonarQube, PMD, and
FindBugs.
• Model checking tools: These tools check the model of the software to find defects
or inconsistencies. Examples include Alloy and NuSMV.
14