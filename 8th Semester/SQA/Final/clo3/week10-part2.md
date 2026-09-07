# week-10-session-2.pdf

Source: `week-10-session-2.pdf`

---

--- Page 1 ---

CS-468
Software Quality Assurance & Testing
Week 10
Session 2
1

--- Page 2 ---

Statement Coverage and Test Coverage –Loops Example
WHILE LOOP
1 X=15
2 COUNT=0
3 WHILE X<20
4 COUNT=COUNT+1
5 X=X+1
6 END WHILE
DO WHILE LOOP
1 X=15
FOR LOOP
2 COUNT=0
1 COUNT=0
3 DO
2 FOR X=15 TO 20
4 COUNT=COUNT+1
3 COUNT=COUNT+1
5 X=X+1
4 X=X+1
6 WHILE X<20
5 END FOR
7 END WHILE
2

--- Page 3 ---

Statement Coverage and Test Coverage - Case Study
• If you are flying with an economy ticket, there is a possibility that you may get
upgraded to business class, especially if you hold a gold card in the airline's
frequent flier program. If you don't hold a gold card, there is a possibility that you
will get 'bumped' off the flight if it is full and you check in late? This is shown in
following flow chart. Note that each box (i.e. statement) has been numbered.
GENERATE TEST DATA FOR MAXIMUM DECISION COVERAGE
3

--- Page 4 ---

Statement Coverage and Test Coverage - Case Study
• Generate test data for maximum decision coverage.
4

--- Page 5 ---

Statement Coverage and Test Coverage - Case Study
• Test data for maximum decision coverage is as
follows:
5

--- Page 6 ---

Statement Coverage and Test Coverage - Case Study
• Following three tests have been executed, what is the
statement coverage of these three tests?
• Test 1: Gold card holder who gets upgraded to business
class
• Test 2: Non-gold card holder who stays in economy
• Test 3: A person who is bumped from the flight
6

--- Page 7 ---

Statement Coverage and Test Coverage - Case Study
Answer:
• Statement Coverage = Total No. of statements exercised/Total
No. of statements *100
• Total No. of statements = 10
7