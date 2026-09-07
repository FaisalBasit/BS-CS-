CLO #	Course Learning Outcomes (CLOs)	PLO Mapping	Bloom’s Taxonomy
CLO 2	Explain different basic concepts, models & architectures of Parallel & Distributed Computing systems.	PLO_1
(Academic Education)	C2
(Understanding)
Question 1: A weather forecasting research center needs to run simulations on large climate datasets. The center has access to a multicore server, GPUs, and several distributed servers. The team wants to choose the best architecture for different tasks, including real-time data processing, matrix computations, and long-term simulations. Explain which architecture is more suitable for this scenario and why
Question 2: A software company is developing a high-performance web server that must handle thousands of user requests simultaneously using multiple processors. Explain which architecture (RISC or CISC) is more suitable for this scenario and why.
Question 3: An embedded system (e.g., a smart home device) requires low power consumption and fast response time while performing simple repetitive tasks. Describe how RISC architecture fulfills these requirements better than CISC.
Question 4: A legacy banking system uses older processors designed with complex instruction sets, while a new distributed system is being planned for faster transaction processing. Differentiate how CISC and RISC architectures would perform in these two systems.
Question 5: Explain the fundamental conceptual paradigm of a SIMD (Single Instruction, Multiple Data) array processor, emphasizing how centralized control facilitates concurrent data processing across multiple processing elements.
Question 6: Interpret the operational dynamics of a SIMD array processor during the execution of vector-oriented computations, highlighting synchronization and instruction dissemination.
Question 7: Illustrate the working mechanism of a SIMD array processor by explicating its application in a data-parallel computational scenario. Also draw diagram.
Question 8: Describe the structural design of a SIMD array processor by explaining its main components and how they are interconnected to perform parallel operations.
Question 9: A modern web browser is designed to handle multiple activities at the same time. For instance, a user may be streaming a video on one tab, downloading a large file in another, and browsing social media on a third tab. Despite these simultaneous activities, the browser remains responsive and does not freeze or crash. Explain how multithreading enables the browser to perform these concurrent operations efficiently.
Question 10: Consider a large-scale online banking system where thousands of users perform transactions simultaneously. When a user transfers money, the system must update the account balance, verify transaction security, log the activity, and send a confirmation notification—all at the same time. The system is expected to handle these operations quickly and without delay. Describe the benefits of multithreading in this scenario.
Question 11: A software development team builds a multithreaded application for processing large datasets. However, after deployment, users report inconsistent outputs, occasional system freezes, and rare crashes. Upon investigation, it is found that multiple threads are accessing shared data without proper coordination. Discuss the possible drawbacks of multithreading that may lead to these problems.
2	Describe the performance measurement, information exchange techniques and interconnection networks in Parallel Computing.	PLO_2
(Knowledge for Computing Problem)	C2
(Understanding)
Question 12: A company is developing a high-performance web server to handle simultaneous requests. Profiling shows that 80% of the server code (request parsing, data retrieval) can be parallelized, while 20% (logging, security checks) must remain sequential. The server team plans to use 8 processors.
Question 13: A company is designing a data analysis application to process large datasets. Tests show that 75% of the application is parallelizable, and the rest must execute sequentially. The team wants a speedup of at least 3× to meet performance targets.
a) How many processors are required to achieve this speedup?
b) If only 4 processors are used, what speedup can actually be achieved?

Question 14: A company is designing a data analysis application to process large datasets. Tests show that 75% of the application is parallelizable, and the rest must execute sequentially. The team wants a speedup of at least 3× to meet performance targets.
a) How many processors are required to achieve this speedup?
b) If only 4 processors are used, what speedup can actually be achieved?








Question 15:
A climate simulation application is running on a distributed parallel computing system consisting of 16 processors, where each processor has its own local memory. The processors are connected using a mesh interconnection network.
The application divides a large dataset into equal parts, and each processor performs computations on its portion. After each computation step, processors must exchange boundary data with their neighboring processors. At the end of execution, all partial results are sent to a master processor, which computes the final result.
However, the system is experiencing:
•	High communication delay 
•	Reduced efficiency as the number of processors increases 

Tasks:
1.	Identify the parallel computing model used in this system 
2.	Explain how MPI is used for communication in this scenario 
3.	Identify the type of interconnection network and explain its working 
4.	Discuss the information exchange technique used 
5.	Analyze the performance issues (latency, efficiency) 
6.	Suggest improvements to enhance performance 

Question 1: 
A large online food delivery platform is experiencing slowdowns in its order management system during peak hours, such as dinner time and special promotional campaigns. At present, all customer orders are handled one at a time on a single central server, which leads to delays, order backlogs, and a frustrating user experience.
To solve this problem, the company is exploring several infrastructure improvement options:
•	Improving the current system by applying serial computing optimization techniques 
•	Transitioning to a parallel computing system that uses multicore processors 
•	Implementing a distributed computing architecture with multiple interconnected servers deployed across various regions 
As a computing specialist, you are task with evaluating these options and recommending the most effective solution.
Question 2:
A financial technology (FinTech) company is developing high-performance computing systems to process large volumes of transactional and market data. Their applications include real-time fraud detection during online payments, batch processing of historical trading data, and predictive analytics for stock market trends and risk assessment.
The company needs to select appropriate computer architectures that can efficiently support these varied workloads.
Tasks:
1.	Explain Flynn’s Classification of computer architectures. 
2.	Describe each category with examples relevant to financial technology applications. 
3.	Analyze which architecture is most commonly used in modern FinTech computing systems and justify your answer.

Question 1: 
A robotics manufacturing company is designing an advanced autonomous production system. The system includes multiple components:
•	A central control unit that handles general decision-making and system coordination 
•	A vision processing module that analyzes images from multiple cameras simultaneously for quality inspection 
•	A high-speed numerical computation unit used for matrix operations in robotic motion and simulation 
•	Different embedded controllers are being considered for real-time tasks, with varying instruction complexity and performance needs 
The engineering team is evaluating different types of microprocessors and instruction set architectures to choose the most suitable processors for each module.
Tasks:
1.	Explain what a microprocessor is. 
2.	Describe the types of microprocessors: Scalar, Vector, Array, and explain their use cases. 
3.	Differentiate between CISC and RISC architectures. 
4.	Recommend which type(s) of microprocessor architecture should be used in each part of the system and justify your choice. 
Question 2:
A healthcare analytics company is building computing systems for processing large-scale patient data. The applications include real-time monitoring of patients’ vital signs, large-scale medical image analysis, and predictive analytics for disease outbreaks.
The company wants to choose suitable architectures to handle these diverse workloads efficiently.
Tasks:
1.	Explain Flynn’s Classification of computer architectures. 
2.	Describe each category with examples relevant to healthcare applications. 
3.	Analyze which architecture is most commonly used in modern healthcare computing systems and justify your answer. 

Question 1: 
A multinational e-commerce company is facing performance issues in its order processing system during high traffic events such as flash sales. Currently, the system processes customer requests sequentially on a single server, resulting in delays and poor user experience.
To address this issue, the company is considering upgrading its infrastructure. Three possible approaches are under discussion:
•	Enhancing the existing system using serial computing optimization techniques 
•	Migrating to a parallel computing system using multicore processors 
•	Adopting a distributed computing architecture using multiple networked servers across different geographical locations 
As a computing expert, you are required to analyze these approaches and recommend the most suitable solution.
Question 2:
A healthcare analytics company is building computing systems for processing large-scale patient data. The applications include real-time monitoring of patients’ vital signs, large-scale medical image analysis, and predictive analytics for disease outbreaks.
The company wants to choose suitable architectures to handle these diverse workloads efficiently.
Tasks:
1.	Explain Flynn’s Classification of computer architectures. 
2.	Describe each category with examples relevant to healthcare applications. 
3.	Analyze which architecture is most commonly used in modern healthcare computing systems and justify your answer. 

Question 1: 
A weather forecasting research center is designing a high-performance computing system to process real-time satellite images, climate simulation data, and atmospheric readings. The system must handle large datasets in parallel and perform repetitive mathematical operations efficiently.
The engineers are considering two architectures:
•	SIMD Array Processor 
•	Attached Array Processor 
They are unsure which architecture is more suitable for different parts of the system.
Tasks
1.	Explain SIMD Array Processor. 
2.	Explain Attached Array Processor. 
3.	Draw simple diagrams for both architectures. 
4.	Compare both architectures and state their limitations. 
5.	Recommend which is better for weather forecasting systems and justify your answer. 
Question 2:
A healthcare analytics company is building computing systems for processing large-scale patient data. The applications include real-time monitoring of patients’ vital signs, large-scale medical image analysis, and predictive analytics for disease outbreaks.
The company wants to choose suitable architectures to handle these diverse workloads efficiently.
Tasks:
1.	Explain Flynn’s Classification of computer architectures. 
2.	Describe each category with examples relevant to healthcare applications. 
3.	Analyze which architecture is most commonly used in modern healthcare computing systems and justify your answer. 


Q1. A company runs a global e-commerce system. During a sale event, millions of users access the website at the same time. Explain how distributed computing helps the company handle such a huge workload.
Q2. A weather forecasting organization uses both shared-memory and distributed-memory systems for climate simulation. Differentiate between these two architectures in the context of the simulation task.
Q3. A hospital introduces a system where patient data is accessed simultaneously by doctors, labs, and billing departments. Illustrate how client-server architecture supports this parallel usage.
Q4. A research lab wants to speed up DNA sequence comparison by using multiple processors at once. Discuss how parallel computing improves the performance of this scientific task.
Q5. A ride-sharing company (like Uber/Careem) uses real-time location updates from thousands of drivers. Describe how distributed system models (peer-to-peer, master-slave, and hybrid) can be used to manage such real-time operations.
