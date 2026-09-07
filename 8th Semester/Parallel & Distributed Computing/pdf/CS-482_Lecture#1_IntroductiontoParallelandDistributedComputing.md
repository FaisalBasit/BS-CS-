Lecture # 01
Introduction to Parallel and Distributed 
Computing
PARALLEL AND DISTRIBUTED COMPUTING
CS-482
Computing History
•Introduction to Early Computers:
◦ ENIAC and UNIVAC in the 1940s and 1950s.
◦ Massive room sized structures with vacuum tubes.
◦ Limited processing capabilities compared to contemporary technology.
•Evolution to Mainframes:
• Transition in the mid20th century.
• IBM System/360 as a milestone in the 1960s.
• Room sized mainframe computers with enhanced processing power.
•Personal Computers Era:
• Late 20thcentury rise of personal computers.
• Apple and Microsoft pivotal in popularizing personal computing.
• Introduction of user-friendly interfaces and affordable hardware.
• Apple II (1977) and IBM PC (1981) marked the beginning
Computing History
•Moore's Law:
• Formulated by Gordon Moore in 1965.
• Predicts doubling of transistors on a microchip every two years.
• Drives exponential growth in processing power.
• Facilitates development of smaller, faster, and more efficient computers.
• Influences technological innovation across various devices.
• Revolutionizes modern life, impacting smartphones to supercomputers..
Serial Computation:
Traditionally software has been written for serial computations:
❑ To berunonasinglecomputerhaving a single Central Processing Unit (CPU)
❑ Aproblemis brokeninto a discrete set of instructions
❑ Instructions are executed one after another
❑ Onlyone instruction can be executed at any moment in time
Introduction to Parallel Computing
In the simplest sense, parallel computing is the simultaneous use of multiple compute resources to solve a 
computational problem:
To be run using multiple CPUs
A problem is broken into discrete parts that can be solved concurrently
Each part is further broken down to a series of instructions
Instructions from each part execute simultaneously on different CPUs
What is Parallel Computing?
In parallel computing multiple processors performs multiple tasks assigned to them
simultaneously. Memory in parallel systems can either be shared or distributed. Parallel
computing provides concurrency and saves time and money.
Examples
Blockchains, Smartphones, Laptop computers, Internet of Things, Artificial intelligence and
machine learning, Space shuttle, Supercomputers are the technologies that uses Parallel
computing technology.
Advantages of Parallel Computing
•Increased Speed: In this technique, several calculations are executed concurrently hence 
reducing the time of computation required to complete large scale problems.
•Efficient Use of Resources: Takes full advantage of all the processing units it is equipped with 
hence making the best use of the machine’s computational power.
•Scalability: Also, the more processors built into the system, the more complex problems can be 
solved within a short time.
•Improved Performance for Complex Tasks: Best suited for activities which involve a large 
numerical calculation like, number simulation, scientific analysis and modeling and data 
processing.
Disadvantages of Parallel Computing
•Complexity in Programming: Parallel writing programming that is used in organizing tasks in a 
parallel manner is even more difficult than that of serial programming.
•Synchronization Issues: Interaction of various processors when operating concurrently can 
become synchronized and result in problem areas on the overall communication.
•Hardware Costs: The implementation of parallel computing does probably involve the use of 
certain components such as multi-core processors which could possibly be costly than the normal 
systems.
Introduction to Distributed Computing
What is Distributed Computing?
In distributed computing we have multiple autonomous computers which
seems to the user as single system. In distributed systems there is no shared
memory and computers communicate with each other through message
passing. In distributed computing a single task is divided among different
computers.
Examples
Artificial Intelligence and Machine Learning, Scientific Research and
High-Performance Computing, Financial Sectors, Energy and Environment
sectors, Internet of Things, Blockchain and Cryptocurrencies are the areas
where distributed computing is used.
Advantages of Distributed Computing
•Fault Tolerance: The failure of one node means that this node is no longer part of the 
computations, but that is not fatal for the entire computation since there are other computers 
participating in the process thereby making the system more reliable.
•Cost-Effective: Builds upon existing hardware and has flexibility in utilizing commodity 
machines instead of the need to have expensive and specific processors for its use.
•Scalability: The distributed systems have the ability to scale and expand horizontally through the 
addition of more machines in the networks and therefore they can take on greater workloads and 
processes.
•Geographic Distribution: Distributed computing makes it possible to execute tasks at different 
points thereby eliminating latencies.
Disadvantages of Distributed 
Computing
•Complexity in Management: The task of managing a distributed system itself can be made more
difficult since it may require dealing with the latency and/or failure of a network as well as issues
related to synchronizing the information to be distributed.
•Communication Overhead: Inter node communication requirements can actually hinder the
package transfer between nodes that are geographically distant and hence the overall performance
is greatly compromised.
•Security Concerns: In general, distributed systems are less secure as compared to centralized
system because distributed systems heavily depend on a network.
Flynn’s Taxonomy
➢Flynn’s Taxonomyuses two basic concepts: Parallelism in 
instruction stream, and parallelism in data stream.
➢AnCPUsystemhasnprogramcounter,so therearen
“instruction stream” that can execute in parallel.
➢Adatastreamcanbeusedasasequenceof data,andthere
exist 4 possible combinations.
Flynn’s Classification
Flynn’sClassification
Insrtuction Set Data 
Streams
Name Examples
1 1 SISD VonNeumannMachine
1 Multiple SIMD VectorSuperComputer
Multiple 1 MISD ArguablyNone
Multiple Multiple MIMD Multiprocessor,Multicomputer
SISD(Single Instruction Single Data)
➢Aprocessor that can only do one job at a time from start to 
finish.
SIMD(Single Instruction Multiple Data)
➢ Single CU and multiple PEs
➢ CU fetches an instruction from memory and after decoding, 
broadcasts control signals to all PEs.
➢ That is, at any given time, all PEs are 
Synchronously executing the same.
➢ Instruction but on different sets of data; hence the name 
SIMD
MISD(Multiple instructions single data)
➢ A rare type, since data throughput is limited.
MIMD(Multiple instruction Multiple Data)
➢ A MIMD is a true multiprocessor
➢ In contrast to SIMD, a MIMD is a general-purpose machine.
➢ When all the processor in MIMD are running the same program, we 
call it Single Program Multiple Data(SPMD) computation.
➢ The SPMD model is widely used by many parallel platforms.
Concepts of parallel programs 
communication:
Most parallel applications require tasks to share data with each other.
◦ Cost of communication: Computational resources are used to package and transmit data.  Requires frequently synchronization – some tasks will wait 
instead of doing work. Could  saturate network bandwidth.
◦ Latency vs. Bandwidth: Latency is the time it takes to send a minimal message between two tasks. Bandwidth is the amount of data that can be communicated
per unit of time. Sending many small messages can cause latency to dominate communication overhead.
◦ Synchronous vs. Asynchronous communication: Synchronous communication is referred to as blocking communication– other work stops until the
communication is completed.
◦ Asynchronous communication is referred to as nonblocking since other work can be done  while communication is taking place.
◦ Scopeofcommunication: Point to point communication– data transmission between tasks.
◦ Collective communication– involves all tasks (in a communication group)
This is only partial list of things to consider!
Comparison Parallel Computing Distributed Computing
Memory Architecture Shared memory architecture Each node has its own memory
Communication High bandwidth, low latency within 
processors
Relies on message passing over a 
network
Task Focus Solves a single complex problem by 
dividing it into smaller tasks
Handles multiple tasks 
simultaneously, often involving large 
datasets
Scalability Limited by the number of processors 
and shared memory capacity
Scales horizontally by adding more 
machines to the network
Coordination Requires synchronization for 
coordination
Each node operates independently, 
coordination is through message 
passing
Difference between Parallel Computing 
and Distributed Computing:
ParallelComputing DistributedComputing
Manyoperationsareperformedsimultaneously Systemcomponentsarelocatedatdifferentlocations
Singlecomputerisrequired Usesmultiplecomputers
Multipleprocessorsperformmultipleoperations Multiplecomputersperformmultipleoperations
Itmayhavesharedordistributedmemory Ithaveonlydistributedmemory
Processorscommunicatewitheachotherthroughbus Computer communicatewitheachother throughmessage
passing.
Improvesthesystemperformance Improves system scalability, fault tolerance and resource
sharingcapabilities
Parallel Computer Memory Architectures:
SharedMemory:
❑ Multiple processors can operate independently, but share the 
same memoryresources
❑ Changesin a memory location caused by one
CPUare visible to all processors
Advantages:
❑ Globaladdress space provides a user-friendly programming perspective to memory
❑ Fastand uniform data sharing due to proximity of memory to CPUs
Disadvantages:
❑ Lackofscalability between memory and CPUs. Adding more CPUs increases traffic on the shared memoryCPU
path
❑ Programmerresponsibility for “correct” access to global memory
Parallel Computer Memory Architectures:
Distributed Memory:
❑ Requires a communication network to connect interprocessor memory
❑ Processors have their own local memory. Changes made by one CPU have
no effect on others
❑ Requires communication to exchange data among processors
Advantages:
❑ Memoryisscalable with the number of CPUs
❑ EachCPUcanrapidly access its own memory without overhead incurred with trying to maintain global cache
coherency
Disadvantages:
❑ Programmeris responsible for many of the details associated with data communication between processors
❑ Itis usually difficult to map existing data structures to this memory organization, based on global memory
Parallel Computer Memory Architectures:
Hybrid Distributed Shared Memory:
The largest and fastest computers in the world today employ both shared and distributed memory 
architectures.
❑ Sharedmemorycomponentcanbea shared memorymachine and/or GPU
❑ Processors on a compute node share same memory space
❑ Requires communication to exchange data between compute nodes
Advantagesand Disadvantages:
❑ Whateveris common to bothsharedand distributed memory architectures
❑ Increasedscalability is an important advantage
❑ Increased programming complexity is a major disadvantage
Conclusion
Parallel Computing and Distributed Computing are effective computational models developed
with an aim to solve large calamities. Parallel computing is suitable for accelerating computations
of a single machine or clustered machines, with emphasis on the rate of processing. On the hand,
distributed on the other has many separate and independent computers that are connected over the
network focusing on scalability and fault tolerance. Each of the models presented has it own
strength and weakness, therefore, the choice between them depends on the conditions of the
particular application or system.