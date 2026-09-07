Sir Syed University of Engineering & Technology, Karachi
CS-468
Software Quality Assurance & Testing
Week 3
Session 1 & Session 2
1
5 Views of Software Quality ...
• Due to the widespread of computers, there has been increasing customer 
expectations in terms of better quality in software products, and 
developers are under tremendous pressure to deliver high-quality 
products at a lower cost. 
• Even though competing products deliver the same functionalities, it is the 
lower cost products with better quality attributes that survive in the 
competitive market. 
• Therefore, all stakeholders—users, customers, developers, testers, and 
managers—in a product must have a broad understanding of the overall 
concept of software quality.
• A number of factors influence the making and buying of software 
products. These factors are user’s needs and expectations, the 
manufacturer’s considerations, the inherent characteristics of a product, 
and the perceived value of a product. 
• To be able to capture the quality concept, it is important to study quality 
from a broader perspective.
2
... 5 Views of Software Quality ...
• Transcendental View: – In the transcendental view quality is something that can be recognized 
through experience but is not defined in some well-mannered form. – Quality is viewed to be something ideal, which is too complex to lend 
itself to be precisely defined. – However, a good-quality object stands out, and it is easily recognized. – Because of the philosophical nature of the transcendental view, no 
effort is made to express it using concrete measures.
3
... 5 Views of Software Quality ...
• User View: – The user view concerns the extent to which a product meets user 
needs and expectations. – Quality is not just viewed in terms of what a product can deliver, but it 
is also influenced by the service provisions in the sales contract.– In this view, a user is concerned with whether or not a product is fit 
for use. This view is highly personalized in nature. – The user view can encompass many subjective elements apart from 
the expected functionalities central to user satisfaction. Examples of 
subjective elements are usability, reliability, etc.
4
... 5 Views of Software Quality ...
• Manufacturing View: – The manufacturing view has its genesis in the manufacturing sectors, 
such as the automobile and electronics sectors. – In this view, quality is seen as conforming to requirements. – Any deviation from the stated requirements is seen as reducing the 
quality of the product. – The concept of process plays a key role in the manufacturing view. 
Products are to be manufactured “right the first time” so that 
development cost and maintenance cost are reduced.
5
... 5 Views of Software Quality ...
• Product View: – The central hypothesis in the product view is this: If a product is 
manufactured with good internal properties, then it will have good 
external qualities.– An example of the product view of software quality is that high degree 
of modularity, which is an internal property, makes a software testable 
and maintainable.
6
... 5 Views of Software Quality 
• Value-based View: – The value-based view represents a merger of two independent 
concepts: excellence and worth. – Quality is a measure of excellence, and value is a measure of worth. 
The central idea in the value-based view is how much a customer is 
willing to pay for a certain level of quality.– The reality is that quality is meaningless if a product does not make 
economic sense. – Essentially, the value-based view represents a trade-off between cost 
and quality.
7
The need for comprehensive requirements documents and 
their contents...
• There is a need for a comprehensive definition of requirements that will 
cover all attributes of software and aspects of the use of software, 
including usability aspects, reusability aspects, maintainability aspects, 
and so forth in order to assure the full satisfaction of the users.
• Many cases of low customer satisfaction are situations where software 
projects have satisfactorily fulfilled the basic requirements of correctness, 
while suffering from poor performance in other important areas such as 
maintenance, reliability, software reuse, or training. 
• One of the main causes for these lapses is the lack of defined 
requirements pertaining to these aspects of software functionality. 
• Therefore, there is a need for the comprehensive definition of 
requirements that will cover all aspects of software use throughout all 
stages of the software life cycle. 
8
... The need for comprehensive requirements documents and 
their contents.
• The great variety of issues related to the various attributes of software 
and its use and maintenance, as defined in software requirements 
documents, can be classified into content groups called quality factors. 
• We expect the team responsible for defining the software requirements of 
a software system to examine the need to define the requirements that 
belong to each factor.
• Software requirement documents are expected to differ in the emphasis 
placed on the various factors, a reflection of the differences to be found 
among software projects. Thus, we can expect that not all the factors will 
be universally “represented” in all the requirements documents.
9
The structure (categories and factors) of McCall’s classic factor 
model
• Several models of software quality factors and their categorization in 
factor categories have been suggested over the years. 
• The classic model of software quality factors, suggested by McCall, 
consists of 11 quality factors 
• The 11 factors are grouped into three categories:– Product operation,– product revision – and product transition.
10
McCall’s factor model tree.
11
Product operation software quality factors …
• According to McCall’s model, five software quality factors are included in 
the product operation category, all of which deal with requirements that 
directly affect the daily operation of the software. 
• These factors are as follows:– Correctness– Reliability– Efficiency– Integrity– Usability
12
… Product operation software quality factors …– Correctness:
• Correctness requirements are defined in a list of the software system’s 
required outputs.
• Such as a query display of a customer’s balance in the sales accounting 
information system. 
• Output specifications are usually multidimensional; some common 
dimensions include:– The required accuracy of those outputs that can be adversely affected by 
inaccurate data or inaccurate calculations. – The completeness of the output information, which can be adversely affected 
by incomplete data. – The up-to-dateness of the information (defined as the time between the 
event and its consideration by the software system). – The availability of the information (the reaction time, defined as the time 
needed to obtain the requested information or as the requested reaction 
time of the firmware installed in a computerized apparatus). – The standards for coding and documenting the software system. 
13
… Product operation software quality factors …– Reliability:
• Reliability requirements deal with failures to provide service. 
• They determine the maximum allowed software system failure rate, and 
can refer to the entire system or to one or more of its separate functions.
14
… Product operation software quality factors …– Efficiency:
• Efficiency requirements deal with the hardware resources needed to 
perform all the functions of the software system in conformance to all 
other requirements. 
• The main hardware resources to be considered are the computer’s 
processing capabilities (measured in MIPS – million instructions per 
second, MHz or megahertz – million cycles per second, etc.),
• its data storage capability in terms of memory and disk capacity 
(measured in MBs – megabytes, GBs – gigabytes, TBs – terabytes, etc.) 
and the data communication capability of the communication lines 
(usually measured in KBPS – kilobits per second, MBPS – megabits per 
second, and GBPS – gigabits per second). 
• The requirements may include the maximum values at which the 
hardware resources will be applied in the developed software system or 
the firmware.
• Another type of efficiency requirement deals with the time between 
recharging of the system’s portable units, such as, information systems 
units located in portable computers, or meteorological units placed 
outdoors.
15
… Product operation software quality factors …– Integrity:
• Integrity requirements deal with the software system security, 
• that is, requirements to prevent access to unauthorized persons,
• to distinguish between the majority of personnel allowed to see the 
information (“read permit”) 
• and a 403 Software quality factors limited group who will be allowed to 
add and change data (“write permit”), and so forth.
16
… Product operation software quality factors …– Usability:
• Usability requirements deal with the scope of staff resources needed to 
train a new employee and to operate the software system.
17
… Product operation software quality factors.
18
Product revision software quality factors …
• According to the McCall model of software quality factors, following three 
quality factors comprise the product revision category. – Maintainability– Flexibility– Testability
• These factors deal with those requirements that affect the complete range 
of software maintenance activities: – corrective maintenance (correction of software faults and failures),– adaptive maintenance (adapting the current software to additional 
circumstances and customers without changing the software) – and perfective maintenance (enhancement and improvement of 
existing software with respect to locally limited issues). 
19
… Product revision software quality factors …– Maintainability:
• Maintainability requirements determine the efforts that will be needed by 
users and maintenance personnel to identify the reasons for software 
failures, to correct the failures, and to verify the success of the 
corrections. 
• This factor’s requirements refer to the modular structure of software, the 
internal program documentation, and the programmer’s manual, among 
other items.
20
… Product revision software quality factors …– Flexibility:
• The capabilities and efforts required to support adaptive maintenance 
activities are covered by the flexibility requirements. 
• These include the resources (i.e. in man-days) required to adapt a 
software package to a variety of customers of the same trade, of various 
extents of activities, of different ranges of products and so on. 
• This factor’s requirements also support perfective maintenance activities, 
such as changes and additions to the software in order to improve its 
service and to adapt it to changes in the firm’s technical or commercial 
environment.
21
… Product revision software quality factors …– Testability:
• Testability requirements deal with the testing of an information system as 
well as with its operation. 
• Testability requirements for the ease of testing are related to special 
features in the programs that help the tester, for instance by providing 
predefined intermediate results and log files. 
• Testability requirements related to software operation include automatic 
diagnostics performed by the software system prior to starting the 
system, to find out whether all components of the software system are in 
working order and to obtain a report about the detected faults. 
• Another type of these requirements deals with automatic diagnostic 
checks applied by the maintenance technicians to detect the causes of 
software failures. 
22
… Product revision software quality factors
23
Product transition software quality factors …
• According to McCall, three quality factors are included in the product 
transition category, a category that pertains to the adaptation of software 
to other environments and its interaction with other software systems. 
• Includes:– Portability– Reusability– Interoperability
24
… Product transition software quality factors …– Portability:
• Portability requirements tend to the adaptation of a software system to 
other environments consisting of different hardware, different operating 
systems, and so forth. 
• These requirements make it possible to continue using the same basic 
software in diverse situations or to use it simultaneously in diverse 
hardware and operating systems situations. 
25
… Product transition software quality factors …– Reusability:
• Reusability requirements deal with the use of software modules originally 
designed for one project in a new software project currently being 
developed.
• They may also enable future projects to make use of a given module or a 
group of modules of the currently developed software. 
• The reuse of software is expected to save development resources, shorten 
the development period, and provide higher quality modules.
• These benefits of higher quality are based on the assumption that most of 
the software faults have already been detected by the quality assurance 
activities performed on the original software, by users of the original 
software, and during its earlier reuses. 
26
… Product transition software quality factors …– Interoperability:
• Interoperability requirements focus on creating interfaces with other 
software systems or with other equipment firmware (for example, the 
firmware of the production machinery and testing equipment interfaces 
with the production control software). 
• Interoperability requirements can specify the name(s) of the software or 
firmware for which interface is required.
• They can also specify the output structure accepted as standard in a 
specific industry or applications area.
27
… Product transition software quality factors
28
Those interested in defining software quality requirements.
• The client is not the only party interested in thoroughly defining the 
requirements that assure the quality of the software product.
• The developer is often interested in adding requirements that represent 
his own interests, such as reusability, verifiability and portability 
requirements. 
• These may not, however, be of interest to the client. 
• Thus, one can expect that a project will be carried out according to two 
requirements documents:– The client’s requirements document– The developer’s additional requirements document.
29