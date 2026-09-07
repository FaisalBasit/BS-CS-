# week-12-session-2.pdf

Source: `week-12-session-2.pdf`

---

--- Page 1 ---

CS-468
Software Quality Assurance & Testing
Week 12
Session 2
1

--- Page 2 ---

TEST PLANNING AND ESTIMATION
Test estimation
• The syllabus details two test estimation approaches,
– metrics-based  past data
– and expert based experience
• The two approaches are quite different, the former being based upon data whilst the
latter is a some what subjective approach.
2

--- Page 3 ---

TEST PLANNING AND ESTIMATION
Test estimation – Matrices based:
• This approach relies upon data collected from previous or similar projects.
• This kind of data might include:
– The number of test conditions.
– The number of test cases written.
– The number of test cases executed.
– The time taken to develop test cases.
– The time taken to run test cases.
– The number of defects found.
– The number of environment outages and how long on average each one lasted.
• With this approach and data it is possible to estimate quite accurately what the cost
and time required for a similar project would be.
• It is important that the actual costs and time for testing are accurately recorded.
• These can then be used to revalidate and possibly update the metrics for use on the
next similar project.
3

--- Page 4 ---

TEST PLANNING AND ESTIMATION
Test estimation – Expert based:
• This alternative approach to metrics is to use the experience of owners of the relevant tasks or
experts to derive an estimate (this is also known as the Wide Band Delphi approach).
• In this context ‘experts’ could be:
– Business experts.
– Test process consultants.
– Developers.
– Technical architects.
– Analysts and designers.
– Anyone with knowledge of the application to be tested or the tasks involved in the process.
• There are many ways that this approach could be used. Here are two examples:
– Distribute a requirement specification to the task owners and get them to estimate their
task in isolation. Amalgamate the individual estimates when received; build in any required
contingency, to arrive at the estimate.
– Distribute to known experts who develop their individual view of the overall estimate and
then meet together to agree on and/or debate the estimate that will go forward.
• Expert estimating can use either of the above approaches individually or mixing and matching
them as required.
4

--- Page 5 ---

TEST PLANNING AND ESTIMATION
Effort required to fulfil the test requirements of a project:
• These can be split into three main categories, as shown below.
– Product characteristics:
• size of the test basis;
• complexity of the final product;
• the amount of non-functional requirements;
• the security requirements (perhaps meeting BS 7799, the security standard);
• how much documentation is required (e.g. some legislation-driven changes demand a certain level of
documentation that may be more than an organisation would normally produce);
• the availability and quality of the test basis (e.g. requirements and specifications).
– Development process characteristics:
• timescales;
• amount of budget available;
• skills of those involved in the testing and development activity (the lower the skill level in
development, the more defects could be introduced, and the lower the skill level in testing, the more
detailed the test documentation needs to be);
• which tools are being used across the life cycle (i.e. the amount of automated testing will affect the
effort required).
– Expected outcome of testing such as:
• the amount of errors;
• test cases to be written.
Taking all of this into account, once the estimate is developed and agreed the test leader can set about
identifying the required resources and building the detailed plan.
5

--- Page 6 ---

TEST PROGRESS MONITORING AND CONTROL
Test progress monitoring:
• Having developed the test plan, the activities and timescales determined within it need to be
constantly reviewed against what is actually happening.
• This is test progress monitoring.
• The purpose of test progress monitoring is to provide feedback and visibility of the progress of test
activities.
• The data required to monitor progress can be collected manually, e.g. counting test cases
developed at the end of each day, or, with the advent of sophisticated test management tools, it
also possible to collect the data as an automatic output from a tool either already formatted into a
report, or as a data file that can be manipulated to present a picture of progress.
• The progress data is also used to measure exit criteria such as test coverage, e.g. 50 per cent
requirements coverage achieved.
6

--- Page 7 ---

TEST PROGRESS MONITORING AND CONTROL
… Test progress monitoring …:
• Common test metrics include:
– Percentage of work done in test case preparation (or percentage of planned test cases
prepared).
– Percentage of work done in test environment preparation.
– Test case execution (e.g. number of test cases run/not run, and test cases passed/failed).
– Defect information (e.g. defect density, defects found and fixed, failure rate and retest
results).
– Test coverage of requirements, risks or code.
– Subjective confidence of testers in the product.
– Dates of test milestones.
– Testing costs, including the cost compared with the benefit of finding the next defect or to run
the next test.
– Ultimately test metrics are used to track progress towards the completion of testing, which is
determined by the exit criteria. So test metrics should relate directly to the exit criteria.
– There is a trend towards ‘dashboards’, which reflect all of the relevant metrics on a single
screen or page, ensuring maximum impact.
7

--- Page 8 ---

TEST PROGRESS MONITORING AND CONTROL
… Test progress monitoring:
iTesting Executive Dashboard
8

--- Page 9 ---

TEST PROGRESS MONITORING AND CONTROL
Test Reporting:
• Test reporting is the process where by test metrics are reported in summarised format to update
the reader regarding the testing tasks undertaken.
• The information reported can include:
– What has happened during a given period of time, e.g. a week, a test level or the whole test
endeavour, or when exit criteria have been met.
– Analysed information and metrics required to support recommendations and decisions about
future actions, such as:
• an assessment of defects remaining;
• the economic benefit of continued testing, e.g. additional tests are exponentially more
expensive than the benefit of running;
• outstanding risks;
• the level of confidence in tested software, e.g. defects planned vs actual defects found.
9

--- Page 10 ---

TEST PROGRESS MONITORING AND CONTROL
…Test Reporting …:
• The structure defined in IEEE 829 standard outline of a test summary report includes:
10

--- Page 11 ---

TEST PROGRESS MONITORING AND CONTROL
…Test Reporting …:
• The structure defined in IEEE 829 standard outline of a test summary report includes:
11

--- Page 12 ---

TEST PROGRESS MONITORING AND CONTROL
…Test Reporting …:
• The information gathered can also be used to help with any process improvement opportunities.
• This information could be used to assess whether:
– the goals for testing were correctly set (were they achievable; if not why not?);
– the test approach or strategy was adequate (e.g. did it ensure there was
– enough coverage?);
– the testing was effective in ensuring that the objectives of testing were met.
12

--- Page 13 ---

TEST PROGRESS MONITORING AND CONTROL
Test control:
• We have referred above to the collection and reporting of progress data.
• Test control uses this information to decide on a course of action to ensure control of the test
activities is maintained and exit criteria are met. This is particularly required when the planned test
activities are behind schedule.
• The actions taken could impact any of the test activities and may also affect other software life-
cycle activities.
13

--- Page 14 ---

TEST PROGRESS MONITORING AND CONTROL
… Test control…:
• Examples of test-control activities are as follows:
– Making decisions based on information from test monitoring.
– Reprioritise tests when an identified project risk occurs (e.g. software delivered late).
– Change the test schedule due to availability of a test environment.
– Set an entry criterion requiring fixes to be retested (confirmation tested) by a developer
before accepting them into a build (this is particularly useful when defect fixes continually fail
again when retested).
– Review of product risks and perhaps changing the risk ratings to meet the target.
– Adjusting the scope of the testing (perhaps the amount of tests to be run) to manage the
testing of late change requests.
14