# week-12-session-1.pdf

Source: `week-12-session-1.pdf`

---

--- Page 1 ---

CS-468
Software Quality Assurance & Testing
Week 12
Session 1
1

--- Page 2 ---

TEST ORGANISATION …
Test organisation and independence
• Independent testing is testing carried out by someone other than the creator (developer)
of the code being tested. By remaining independent it is possible to improve the
effectiveness of testing if implemented correctly.
• This is where independent testing is important, as it is genuinely hard for authors to identify
their own errors, but it is easier for others to see them.
• There are many options for many levels of independence. In general, the more remote a
tester is from the production of the document, the greater is the level of independence.
• Figure indicates the most common roles and the levels of independence they bring.
2

--- Page 3 ---

… TEST ORGANISATION …
Features of independent testing
3

--- Page 4 ---

… TEST ORGANISATION …
Tasks of a test leader and tester – Test Leader
• Coordinating the development of the test strategy and plan with project managers and others.
• Writing or reviewing test strategies produced for the project, and test policies produced for the
organisation.
• Contributing the testing perspective to other project activities, such as development delivery schedules.
• Planning the development of the required tests – which will include ensuring that the development uses
the correct understanding of the risks, selecting the required test approaches (test levels, cycles,
approach, objectives and incident management planning), estimating the time and effort and converting
to the cost of testing and acquiring the right resources.
• Managing the specification, preparation, implementation and execution of tests, including the
monitoring and control of all the specification and execution.
• Taking the required action, including adapting the planning, based on test results and progress
(sometimes documented in status reports), and any action necessary to compensate for problems or
delays.
• Ensuring that adequate configuration management of testware is in place and that the testware is fully
traceable, e.g. there is a hierarchical relationship established between the requirements and the
detailed specification documents.
• Putting in place suitable metrics for measuring test progress and evaluating the quality of the testing
delivered and the product.
• Agreeing what should be automated, to what degree, and how, ensuring it is implemented as planned.
• Where required, selecting tools to support testing and ensuring any tool training requirements are met.
• Agreeing the structure and implementation of the test environment.
• Writing a test summary report based on the information gathered during testing, at the end of project.
4
• Scheduling all testing activity.

--- Page 5 ---

… TEST ORGANISATION …
Tasks of a test leader and tester – Tester
• Reviewing and contributing to the development of test plans.
• Analysing, reviewing and assessing user requirements, specifications and models for testability.
• Creating test specifications from the test basis.
• Setting up the test environment (often coordinating with system administration and network
management).
• In some organisations the setting up and management of the test environment could be centrally
controlled; in this situation a tester would directly liaise with the environment management to ensure
the test environment is delivered on time and to specification.
• Preparing and acquiring/copying/creating test data.
• Implementing tests on all test levels, executing and logging the tests, evaluating the results and
documenting the deviations from expected results as defects.
• Using test administration or management and test monitoring tools as required.
• Automating tests (may be supported by a developer or a test automation expert).
• Where required, running the tests and measuring the performance of components and systems (if
applicable).
• Reviewing tests developed by other testers.
5

--- Page 6 ---

TEST APPROACHES (TEST STRATEGIES)
• A test approach is the implementation of a test strategy on a particular project.
• The test approach defines how testing will be implemented. A test approach can reflect testing for
a whole organisation, a programme of work or an individual project.
• It can be:
– developed early in the life cycle, which is known as preventative – in this approach the test
design process is initiated as early as possible in the life cycle to stop defects being built into
the final solution;
– left until just before the start of test execution, which is known as reactive – this is where
testing is the last development stage and is not started until after design and coding has been
completed (sometimes it is identified as the waterfall approach, i.e. all development stages
are sequential, the next not starting until the previous one has nearly finished).
• A test approach includes all of the decisions made on how testing should be implemented, based
upon the (test) project goals and objectives, as well as the risk assessment.
• It forms the starting point for test planning, selecting the test design techniques and test types to
be employed. It should also define the software and test entry and exit criteria.
6

--- Page 7 ---

TEST APPROACHES (TEST STRATEGIES)
• There are many approaches or strategies that can be employed. All will depend on the context
within which the test team is working, and may consider risks, hazards and safety, available
resources and skills, the technology, the nature of the system (e.g. custom built), test objectives
and regulations, and may include:
– Analytical approaches such as risk-based testing where testing is directed to areas of greatest
risk.
– Model-based approaches such as stochastic testing using statistical information about failure
rates (such as reliability growth models) or usage (such as operational profiles).
– Methodical approaches, such as failure-based (including error guessing and fault attacks),
checklist based and quality-characteristic based.
– Standard-compliant approaches, specified by industry-specific standards such as The Railway
Signalling standards (which define the levels of testing required) or the MISRA (which defines
how to design, build and test reliable software for the motor industry).
– Process-compliant approaches, which adhere to the processes developed for use with the
various agile methodologies or traditional waterfall approaches.
– Dynamic and heuristic approaches, such as exploratory testing (see Chapter 4) where testing
is more reactive to events than pre-planned, and where execution and evaluation are
concurrent tasks.
– Consultative approaches, such as those where test coverage is driven primarily by the advice
and guidance of technology and/or business domain experts outside or within the test team.
– Regression-averse approaches, such as those that include reuse of existing test material,
extensive automation of functional regression tests, and standard test suites.
– Different approaches may be combined if required. The decision as to how and why they will
be combined will depend on the circumstances prevalent in a project at the time.
7

--- Page 8 ---

TEST APPROACHES (TEST STRATEGIES)
• The following factors should be considered when defining the strategy or approach:
– Risk of failure of the project, hazards to the product and risks of product failure to humans,
the environment and the company, e.g. the cost of failure would be too high (safety-critical
environments).
– Skills and experience of the people in the proposed techniques, tools and methods.
– There is no point in implementing a sophisticated component-level, technique-driven
approach or strategy when the only resources available are business users with no technical
grounding.
– The objective of the testing endeavour and the mission of the testing team, e.g. if the
objective is to find only the most serious defects.
– Regulatory aspects, such as external and internal regulations for the development process,
e.g. The Railway Signalling standards that enforce a given level of test quality.
– The nature of the product and the business, e.g. a different approach is required for testing
mobile phone coverage than for testing an online banking operation.
8

--- Page 9 ---

TEST PLANNING
Test planning
• Test planning is the most important activity undertaken by a test leader in any test project.
• It ensures that there is initially a list of tasks and milestones in a baseline plan to track progress
against, as well as defining the shape and size of the test effort.
• Test planning is used in development and implementation projects (sometimes called ‘greenfield’)
as well as maintenance (change and fix) activities.
• The main document produced in test planning is often called a master test plan or a project test
plan.
• This document defines the high level of the test activities being planned. It is normally produced
during the early phases of the project (e.g. initiation) and will provide sufficient information to
enable a test project to be established (bearing in mind that at this point in a project little more
than requirements may be available from which to plan).
• The details of the test-level activities are documented within test-level plans, e.g. the system test
plan. These documents will contain the detailed activities and estimates for the relevant test level.
9

--- Page 10 ---

TEST PLANNING
Test plans in the V-model
10

--- Page 11 ---

TEST PLANNING
… Test planning
• Test planning is a continual activity that spans the life of the test project; it takes place in all life-
cycle stages.
• As risks and changes occur, the plan and planning should be amended to recognise these and
reflect the current position.
• As the plans will have been baselined (locked down) after initial sign-off, these changes would
normally be managed by the project change process.
• Baselining a document effectively secures it from further change unless authorised via a change
control process.
11

--- Page 12 ---

TEST PLANNING
Test plan sections
12

--- Page 13 ---

TEST PLANNING
… Test plan sections…
13

--- Page 14 ---

TEST PLANNING
… Test plan sections
• A useful revision aid to help remember the 16 sections of the IEEE 829 test plan is the acronym
‘SPACEDIRT’, each letter mapping to one or several sections of the test plan:
– S scope (including test items, features to be tested and features not to be tested)
– P people (including responsibilities, staff and training and approvals)
– A approach
– C criteria (including item pass/fail criteria and suspension and resumption requirements)
– E environment needs
– D deliverables (test)
– I identifier and introduction (test plan)
– R risks and contingencies
– T testing tasks and schedule
14

--- Page 15 ---

TEST PLANNING
Test-planning activities
• During test planning various activities for an entire system or a part of a system have to be undertaken by those
working on the plan. They include:
• Working with the project manager and subject matter experts’ to determine the scope and the risks that need to
be tested. As well identifying and agreeing the objectives of the testing, be they time, quality or cost focussed, or
in fact maybe a mixture of all three.
• The objectives will enable the test project to know when it has finished.
• Putting together the overall approach of testing (sometimes called the test strategy), ensuring that the test
levels and entry and exit criteria are defined.
• Liaising with the project manager and making sure that the testing activities have been included within the
software life-cycle activities such as:
– design – the development of the software design;
– development – the building of the code;
– implementation – the activities surrounding implementation into a live environment.
• Working with the project to decide what needs to be tested, what roles are involved and who will perform the
test activities, planning when and how the test activities should be done, deciding how the test results will be
evaluated, and defining when to stop testing (exit criteria).
• Building a plan that identifies when and who will undertake the test analysis and design activities.
• In addition to the analysis and design activities test planning should also document the schedule for test
implementation, execution and evaluation.
• Finding and assigning resources for the different activities that have been defined.
• Deciding what the documentation for the test project will be, e.g. which plans, show the test cases will be
documented, etc.
• Defining the management information, including the metrics required and putting in place the processes to
monitor and control test preparation and execution, defect resolution and risk issues.
• Ensuring that the test documentation generates repeatable test assets, e.g. test cases.
15

--- Page 16 ---

TEST PLANNING
Entry criteria
• Entry criteria are used to determine when a given test activity can start.
• This could include the beginning of a level of testing, when test design and/or when test execution
is ready to start.
• Examples of some typical entry criteria to test execution (for example) may include:
– Test environment available and ready for use (it functions).
– Test tools installed in the environment are ready for use.
– Testable code is available.
– All test data is available and correct.
– All test design activity has completed.
16

--- Page 17 ---

TEST PLANNING
Exit criteria
• Exit criteria are used to determine when a given test activity has been completed or when it should
stop. Exit criteria can be defined for all of the test activities, such as planning, specification and
execution as a whole, or to a specific test level for test specification as well as execution.
• Exit criteria should be included in the relevant test plans.
• Some typical exit criteria might be:
– All tests planned have been run.
– A certain level of requirements coverage has been achieved.
– No high-priority or severe defects are left outstanding.
– All high-risk areas have been fully tested, with only minor residual risks left outstanding.
– Cost – when the budget has been spent.
– The schedule has been achieved, e.g. the release date has been reached and the product has
to go live. This was the case with the millennium testing (it had to be completed before
midnight on 31 December 1999), and is often the case with government legislation.
• Exit criteria should have been agreed as early as possible in the life cycle; however, they can be and
often are subject to controlled change as the detail of the project becomes better understood and
therefore the ability to meet the criteria is better understood by those responsible for delivery.
17