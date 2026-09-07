# week-5-s2.pdf

Source: `week-5-s2.pdf`

---

--- Page 1 ---

Sir Syed University of Engineering & Technology, Karachi
CS-468
Software Quality Assurance & Testing
Week 5
Session 2
1

--- Page 2 ---

Fundamental Test Process
2

--- Page 3 ---

Fundamental Test Process
• Test planning and control:
– Planning is determining what is going to be tested, and how this will be
achieved.
– How activities will be done; and who will do them.
– Test planning is also where we define the test completion criteria.
– Completion criteria are how we know when testing is finished.
– Control, is what we do when the activities do not match up with the plans.
– It is the ongoing activity where we compare the progress against the plan.
– As progress takes place, we may need to adjust plans to meet the targets, if
this is possible.
– Therefore we need to undertake both planning and control throughout the
testing activities.
– We plan at the outset, but as testing progresses, undertake monitoring and
control activities (monitoring to measure what has happened, control to
adjust future activities in the light of experience).
– Monitoring and control feed back into the continual activity of planning.
3

--- Page 4 ---

Fundamental Test Process
• Test analysis and design:
– Analysis and design are concerned with the fine detail of:
• what to test (test conditions),
• and how to combine test conditions into test cases,
• so that a small number of test cases can cover as many of the test conditions as
possible.
– The analysis and design stage is the bridge between planning and test
execution.
– It is looking backward to the planning (schedules, people, what is going to be
tested) and forward to the execution activity (test expected results, what
environment will be needed).
– A part of the design process needs to consider the test data that will be
required for the test conditions and test cases that have been drawn up.
– Test design involves predicting how the software under test should behave in
a given set of circumstances.
– If we do not detail expected outcomes before starting test execution, there is
a real danger that we will miss the one item of detail that is vital, but wrong.
4

--- Page 5 ---

Fundamental Test Process
• Test implementation and execution :
– The test implementation and execution activity involves running tests, and this
will include where necessary any set-up/tear-down activities for the testing.
– It will also involve checking the test environment before testing begins.
– Test execution is the most visible part of testing, but it is not possible without
other parts of the fundamental test process.
– It is not just about running tests.
– The most important tests need to be run first. This is determined during the
planning stages, and refined as part of test design.
– One important aspect undertaken at this stage is combining test cases into an
overall run procedure, so that test time can be utilised efficiently.
– Here the logical ordering of tests is important so that, where possible, the
outcome of one test creates the preconditions for one or more tests that are
later in the execution sequence.
– As tests are run, their outcome needs to be logged, and a comparison made
between expected results and actual results.
– Whenever there is a discrepancy between the expected and actual results,
this needs to be investigated.
– If necessary a test incident should be raised.
– Each incident requires investigation, although corrective action will not be
5
necessary in every case.

--- Page 6 ---

Fundamental Test Process
• Evaluating exit criteria and reporting:
– Exit criteria were defined during test planning and before test execution
started.
– At the end of test execution, the test manager checks to see if these have
been met.
– If the criterion was that there would be 85 per cent statement coverage (i.e.
85 per cent of all executable statements have been executed, and as a result
of execution the figure is 75 per cent, there are two possible actions:
– change the exit criteria,
– or run more tests.
– It is possible that even if the pre-set criteria were met, more tests would be
required.
– Also, writing a test summary for stakeholders would say what was planned,
what was achieved, highlight any differences and in particular things that were
not tested.
6

--- Page 7 ---

Terminologies and Test Case Design Basics
• A test condition :
– An item or event of a component or system that could be verified by one or more test
cases, e.g. a function, transaction, feature, quality attribute, or structural element.
– In other words, a test condition is some characteristic of our software that we can check
with a test or a set of tests.
• A test case:
– A set of input values, execution preconditions, expected results and execution post
conditions, developed for a particular objective or test condition, such as to exercise a
particular program path or to verify compliance with a specific requirement.
– In other words, a test case: gets the system to some starting point for the test
(execution preconditions); then applies a set of input values that should achieve a given
outcome (expected result), and leaves the system at some end point (execution post
condition).
• Our test design activity will generate the set of input values and we will predict the
expected outcome by, for example, identifying from the specification what should
happen when those input values are applied.
• We have to define what state the system is in when we start so that it is ready to
receive the inputs and we have to decide what state it is in after the test so that
we can check that it ends up in the right place.
7

--- Page 8 ---

Terminologies and Test Case Design Basics …
• A test procedure specification:
– A sequence of actions for the execution of a test.
– A test procedure therefore identifies all the necessary actions in sequence to
execute a test.
– Test procedure specifications are often called test scripts (or sometimes
manual test scripts)
• So, going back to our three step process above, we:
– decide on a test condition, which would typically be a small section of the
specification for our software under test;
– design a test case that will verify the test condition;
– write a test procedure to execute the test, i.e. get it into the right starting
state, input the values, and check the outcome.
• To test a whole system we write a test execution schedule, which puts all the
individual test procedures in the right sequence and sets up the system so that
they can be run.
• In some situations it may be appropriate to produce very little documentation and
in others a very formal and documented process may be appropriate. It all
depends on the context of the testing, taking account of factors such as maturity
of development and test processes, the amount of time available and the nature
of the system under test. 8

--- Page 9 ---

Terminologies and Test Case Design Basics - Example
• Suppose we have a system that contains the following specification for an input
screen:
– The input screen shall have three fields: a title field with a drop-down
selector; a surname field that can accept up to 20 alphabetic characters and
the hyphen (-) character; a first name field which can accept up to 20
alphabetic characters. All alphabetic characters shall be case insensitive. All
fields must be completed. The data is validated when the Enter key is
pressed. If the data is valid the system moves on to the job input screen; if
not, an error message is displayed.
– This specification enables us to define test conditions; for example, we could
define a test condition for the surname field (i.e. it can accept up to 20
alphabetic characters and the hyphen (-) character) and define a set of test
cases to test that field.
9

--- Page 10 ---

Terminologies and Test Case Design Basics - Example
– To test the surname field we would have to
• navigate the system to the appropriate input screen,
• select a title,
• tab to the surname field (all this would be setting the test precondition),
• enter a value (the first part of the set of input values),
• tab to the first name field
• and enter a value (the second part of the set of input values that we
need because all fields must be completed),
• then press the Enter key.
• The system should either move on to the job input screen (if the data we
input was valid)
• or display an error message (if the input data was not valid).
– Of course, we would need to test both of these cases.
10

--- Page 11 ---

Test Case Design Example
• As an example, we could key in the following test cases:
• All these would be valid test cases; even though Compo Simmonite was an
imaginary male character in a TV series, the input is correct according to the
specification.
• We should also test some invalid inputs, such as:
11

--- Page 12 ---

Test Case Design Example
• The test procedure would need to add some details along the following lines:
12