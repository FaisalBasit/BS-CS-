Sir Syed University of Engineering & Technology, Karachi
CS-468
Software Quality Assurance & Testing
Week 2
Session 1
1
Software Errors, Faults & Failure…
• Software errors are sections of the code that are partially or 
totally incorrect as a result of a grammatical, logical or other 
mistake made by a systems analyst, a programmer, or another 
member of the software development team.
• Software faults are software errors that cause the incorrect 
functioning of the software during a specific application.
• Software faults become software failures only when they are 
“activated”, that is, when a user tries to apply the specific 
software section that is faulty. Thus, the root of any software 
failure is a software error.
2
… Software Errors, Faults & Failure …
3
Why Software Error Occurs
• When something fairly obvious missed.
• To understand this we need to start at the beginning, with the people 
who design systems. 
• Do they make mistakes? Of course they do. 
• People make mistakes because they are fallible, but there are also many 
pressures that make mistakes more likely. Pressures such as deadlines, 
complexity of systems and organizations, and changing technology all 
bear down on designers of systems
• and increase the likelihood of errors in specifications, in designs and in 
software code. 
• These errors are where major system failures usually begin. 
• If a document with an error in it is used to specify a component the 
component will be faulty and will probably exhibit incorrect behavior. 
• If this faulty component is built into a system the system may fail. While 
failure is not always guaranteed, it is likely that errors in specifications 
will lead to faulty components and faulty components will cause system 
failure.
4
Why System Fails
• An error (or mistake) leads to a defect, which can cause an observed 
failure.
• There are other reasons why systems fail. 
• Environmental conditions such as the presence of radiation, magnetism, 
electronic fields or pollution can affect the operation of hardware and 
firmware and lead to system failure.
• If we want to avoid failure we must either avoid errors and faults or find 
them and rectify them. Testing can contribute to both avoidance and 
rectification, as we will see when we have looked at the testing process in 
a little more detail.
• One thing is clear: if we wish to influence errors with testing we need to 
begin testing as soon as we begin making errors – right at the beginning 
of the development process – and we need to continue testing until we 
are confident that there will be no serious system failures – right at the 
end of the development process.
5
Problems of Faulty Software
• Incorrect software can harm:– people (e.g. by causing an aircraft crash in which people die, or by 
causing a hospital life support system to fail); – companies (e.g. by causing incorrect billing, which results in the 
company losing money);– the  environment (e.g. by releasing chemicals or radiation into the 
atmosphere).
• Software failures can sometimes cause all three of these at 
once.
• Software failures, then, can lead to:– Loss of money– Loss of time– Loss of business reputation– Injury– Death
6
9 Causes of software errors ...
1. Faulty requirements definition 
2. Client–developer communication failures 
3. Deliberate deviations from software requirements 
4. Logical design errors 
5. Coding errors 
6. Non-compliance with documentation and coding instructions 
7. Shortcomings of the testing process 
8. Procedure errors 
9. Documentation errors
7
... 9 Causes of software errors ...– Faulty requirements definition 
• Wrong definition of requirements.
• Absence of vital requirements.
• Incomplete definition of requirements.
• Inclusion of unnecessary requirements, functions that are not 
expected to be needed in the near future.
8
... 9 Causes of software errors ...– Client–developer communication failures 
• Misunderstanding of the client’s instructions as stated in the 
requirement document.
• Misunderstanding of the client’s requirements changes presented 
to the developer in written form during the development period.
• Misunderstanding of the client’s requirements changes presented 
orally to the developer during the development period.
• Misunderstanding of the client’s responses to the design problems 
presented by the developer.
• Lack of attention to client messages referring to requirements 
changes and to client responses to questions raised by the 
developer on the part of the developer.
9
... 9 Causes of software errors ...– Deliberate deviations from software requirements
• The developer reuses software modules taken from an earlier 
project without sufficient analysis of the changes and adaptations 
needed to correctly fulfil all the new requirements.
• Due to time or budget pressures, the developer decides to omit 
part of the required functions in an attempt to cope with these 
pressures.
• Developer-initiated, unapproved improvements to the software, 
introduced without the client’s approval, frequently disregard 
requirements that seem minor to the developer. Such “minor” 
changes may, eventually, cause software errors.
10
... 9 Causes of software errors ...
• Logical design errors
• Software errors can enter the system when the professionals who design 
the system – systems architects, software engineers, analysts, etc. 
formulate the software requirements. Typical errors include:
• Definitions that represent software requirements by means of erroneous 
algorithms. 
• Process definitions that contain sequencing errors. 
• Erroneous definition of boundary conditions.
• Omission of required software system states. 
• Omission of definitions concerning reactions to illegal operation of the 
software system.
11