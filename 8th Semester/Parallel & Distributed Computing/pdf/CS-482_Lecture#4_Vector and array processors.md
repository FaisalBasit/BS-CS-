Lecture # 04
Vector and Array Processor
PARALLEL AND DISTRIBUTED COMPUTING
CS-482
Types of Array Processor
Array Processor performs computations on large array of data. These are two types of Array 
Processors: Attached Array Processor, and SIMD Array Processor. These are explained as 
following below.
1. Attached Array Processor :
2. SIMD array processor :
1. Attached Array Processor :
To improve the performance of the host computer in numerical computational tasks auxiliary 
processor is attached to it.
Attached array processor has two 
interfaces:
1.Input output interface to a common processor.
2.Interface with a local memory.
Here local memory interconnects main memory. Host computer is general purpose computer. 
Attached processor is back-end machine driven by the host computer.
The array processor is connected through an I/O controller to the computer & the computer 
treats it as an external interface.
Working:
Let us assume that we are executing vast number of instructions, in that case it is not possible to 
execute all instructions with the help of host computer. Sometimes it may take days of weeks to 
execute these vast number of introductions. So, in order to enhance the speed and performance 
of the host computer as shown in above diagram.
I/o interface is used to connect and resolve the difference between host and attached process. 
Attached array processor is normally used to enhance the performance of the host computer . 
Array processor mean bunch/group of process used together to perform any computation.
2. SIMD array processor :
This is computer with multiple process unit operating in parallel Both types of array processors, 
manipulate vectors but their internal organization is different.
SIMD array processor
SIMD is a computer with multiple processing units operating in parallel.
The processing units are synchronized to perform the same operation under the control of a 
common control unit. Thus, providing a single instruction stream, multiple data stream (SIMD) 
organization. As shown in figure, SIMD contains a set of identical processing elements (PES) each 
having a local memory M.
Working:
Here array processor is in built into the computer unlike in attached array processor where array 
processor is attached externally to the host computer. Initially mark control unit decodes the 
instruction and generate the control signals and passes it into all the processor elements(PE’s) or 
ALU upon receiving the control signals from master control unit, all the processing elements 
come to throw that operations need to perform. The data perform the operations will be 
accessed from main memory into the local memory of respective PE’s. SIMD array processor is 
normally used to compute vector data. All PE’s execute same instruction simultaneously on 
different data.
for ex: Ci= Ai + Bi
Here the vector instruction Ci= Ai+ Bi need to be executed is addition operation, the master 
control unit generate control signal and passes it onto all processing elements and data.
Working:
Parallelly on same instruction on with different data, that’s why it is called as Single instruction 
multiple data streams(SIMD) array processor.
Each PE includes 
• ALU
• Floating point arithmetic unit
• Working registers
Working:
Master control unit controls the operation in the PEs. The function of master control unit is to 
decode the instruction and determine how the instruction to be executed. If the instruction is 
scalar or program control instruction then it is directly executed within the master control unit.
Main memory is used for storage of the program while each PE uses operands stored in its local 
memory.
Operation of SIMD Array Processor
The SIMD form of parallel processing is called Array processing. Figure shows the array 
processor. A two-dimensional grid of processing elements transmits an instruction stream from 
a central control processor. As each instruction is transmitted, all elements execute it 
simultaneously. Each processing element is connected to its four nearest neighbors for the 
purposes of data exchange. Connections around the end can be provided on both rows and 
columns, but they are not shown in figure.
Vector processor classification
Vector processors have rightfully come into prominence when it comes to designing computing 
architecture by virtue of how they handle large datasets efficiently. A large portion of this 
efficiency is due to the retrieval from architectural configurations used in the implementation. 
Vector processors are classified into two primary architectures: memory to memory and register 
to register. These classification are important to optimize performance on the scientific 
computing and other data intensive applications.
What is Vector Processor Classification?
Vector processor classification is the labeling of processors based on the amount of vector
operations it could be handling at a time. Here are the main classifications of vector processors:
Memory to Memory Architecture
In memory-to-memory architecture, source operands, intermediate results, and final results are
retrieved directly from the main memory. For memory-to-memory vector instructions, it is
necessary to specify the base address, offset, increment, and vector length to facilitate data
transfers between the main memory and pipelines. Notable processors employing memory-to
memoryformats include TI-ASC, CDC STAR-100, and Cyber-205.
Main points about Memory-to-Memory Architecture
• No limitation on size.
• Speed is comparatively slower.
Register to Register Architecture
In register-to-register architecture, operands and results are retrieved indirectly from the main
memory through the use of a large number of vector or scalar registers. Processors like Cray-1
and Fujitsu VP-200 utilize vector instructions in register-to-register formats.
Main points about Register-to-Register Architecture
• Limited size.
• Higher speed compared to memory-to-memory architecture.
• Increased hardware cost.
Hybrid Architecture
Hybrid Architecture unites memory-to-memory and register-to-register architectures to gain
from all. The way is that of flexible operand retrieval methods; which improves performance and
efficiency in many computational tasks. This solution provides a balanced solution which can be
adapted to requirements of the application, with a better utilization of available resources.
A block diagram of a modern multiple pipeline vector 
computer is shown below:
Advantages of Vector Processor
• Parallelism and SIMD Execution: Vector processors are intended to perform Single Guidance, Different Information 
(SIMD
) activities. This implies that a solitary guidance can work on numerous information components in equal, 
considering a huge speedup in errands that include monotonous procedure on enormous datasets. This parallelism is 
appropriate for logical recreations, reenactments of actual frameworks, signal handling, and different applications 
including weighty mathematical calculations.
• Proficient Information Development: Vector processors are enhanced for moving information productively among 
memory and the computer chip registers. This is pivotal for execution, as memory access is much of the time 
a bottleneck
in many registering errands. Vector processors commonly incorporate specific information development 
directions that can move information in huge lumps, limiting the effect of memory dormancy.
• Diminished Guidance Above: With SIMD tasks, a solitary guidance can play out similar procedure on various 
information components. This lessens the above related with getting, unraveling, and executing individual directions, 
which is especially helpful for errands that include tedious computations.
• Energy Proficiency: By executing procedure on various information components at the same time, vector processors 
can accomplish higher computational throughput while consuming generally less power contrasted with scalar 
processors playing out similar activities consecutively. This energy effectiveness is significant for superior execution 
registering (HPC
) applications where power utilization is a worry.
Advantages of Vector Processor
• Logical and Designing Applications: Vector processors succeed in logical and designing reproductions where
complex numerical calculations are performed on huge datasets. Applications like weather conditions
displaying, computational liquid elements, atomic elements reproductions, and picture handling can benefit
altogether from the computational power and parallelism presented by vector processors.
• Superior Execution for Cluster Activities: Some true applications include controlling exhibits or grids of
information, for example, in information examination, AI
, and illustrations handling. Vector processors can
perform activities like expansion, increase, and other component wise procedure on whole clusters with a
solitary guidance, significantly speeding up these undertakings.
• Compiler Streamlining: Vector processors frequently expect code to be written with a certain goal in mind to
make the most of their capacities. Compiler improvements can naturally change undeniable level code into
vectorized guidelines, permitting software engineers to zero in on the algorithmic plan as opposed to low-even
out advancements.
• Memory Transmission capacity Usage: Vector processors can productively use memory transfer speed by
streaming information from memory into vector registers and afterward performing calculations on those
vectors. This can assist with alleviating the exhibition effect of memory bottlenecks.
• Vector Length Adaptability: Some vector processors permit adaptability in the length of vector tasks,
empowering software engineers to pick the proper vector length in light of the application’s necessities and
the accessible equipment assets.
Disadvantages of Vector Processors
• Complexity of Programming: Development of such codes is complex because optimizing code 
for vector processors generally requires specialized knowledge.
• Cost:Vector processors are expensive, because they require special hardware.
• Limited Applicability: Not all applications are good candidates for vector processing; there are 
tasks that are inherently sequential and cannot profitably be executed in parallel.
Limitations of Vector Processor
•Speed Limitation: Vector processors are limited by the speed at which they can execute 
instructions.
•Memory Limitation: Vector processors are limited by the amount of memory available for 
storing data.
•Instruction Limitation: Vector processors can only execute certain instructions and often require 
instruction modifications for more complex tasks.
•Cost Limitation: Vector processors are often more expensive than scalar processors due to their 
advanced technology.
Conclusion
Vector processors provide an important means of improving computational efficiency, for
example, in applications where lots of math and big data abound. If developers understand their
classifications and architectural configurations, then they can use their capabilities effectively to
realize better performance in different computational tasks.
What is the Primary Advantage of Using 
Vector Processors?
Operations on large datasets at the same time, much faster than with regular processors, are 
what vector processors are good at, for use in scientific and engineering datasets.
How does memory-to-memory architecture 
differ from register-to-register architecture?
The difference in performance characteristics affects the architectures of memory to memory 
and register to register memory architecture in which data retrieval is done directly from main 
memory and to registers respectively.
Vector Processor vs Scalar Processor
A processor is an essential component of a computer system, responsible for carrying out 
instructions in order to facilitate various computer operations. Traditionally, processors have 
been either vector processors or scalar processors, both of which have their own unique set of 
benefits and drawbacks. Vector processors are designed to complete multiple data operations in 
one instruction and can provide higher performance than scalar processors. Conversely, scalar 
processors are designed to carry out one instruction at a time and are more efficient for certain 
types of operations. In this article, we will discuss the differences between vector processors 
and scalar processors and how they are used in modern computing.
Vector Processor
A vector processor is a type of processor that can process multiple data elements at once. It is 
capable of performing operations on a vector of data elements in parallel. Vector processors are 
particularly useful for tasks such as image and video processing, where large amounts of data 
need to be processed in parallel. Vector processors are also used in scientific computing, where 
they are used to accelerate the processing of complex algorithms.
Characteristics of Vector Processor
• Vector Processors are designed to process multiple data elements in parallel, while Scalar 
Processors process one data element at a time.
• Vector Processors can be more efficient, as they can complete a given task with fewer 
instructions than a Scalar Processor.
• Vector Processors are more complex than Scalar Processors, and require more memory and 
power to operate.
• Vector Processors are used for more demanding tasks, such as scientific calculations and 3D 
game rendering, while Scalar Processors are used for simpler tasks, such as basic calculations 
and web browsing.
• Vector Processors are more suitable for data-intensive applications, while Scalar Processors 
are better suited for applications that require fewer calculations.
• Vector Processors can be more expensive than Scalar Processors, as they require more 
complex hardware and software.
Applications of Vector Processor
• Computer-Aided Design (CAD): CAD software allows for the creation of realistic 3D models, which 
can be used for product design, engineering, and architecture. Vector processor power makes it 
easier to manipulate complex models and make changes quickly.
• Image Processing: Vector processors are used to manipulating and analyzing images. This can 
include tasks such as edge detection, object recognition, and facial recognition.
• Virtual Reality: Vector processors are used to rendering realistic 3D graphics in virtual reality 
applications. This allows users to experience a more immersive experience when interacting with 
virtual worlds.
• Scientific Computing: Vector processors are used to performing complex calculations in scientific 
computing applications. This can include tasks such as calculating weather patterns or complex 
simulations.
• Artificial Intelligence: Vector processors are used to helping train and run neural networks for 
artificial intelligence applications. This can include tasks such as facial recognition, object 
recognition, and natural language processing.
• Data Analysis: Vector processors are used to analyzing large amounts of data quickly. This can 
include tasks such as analyzing customer data or financial data.
Scalar Processor
A scalar processor is a type of processor that can process one data element at a time. Scalar 
processors are typically used for general-purpose computing tasks, such as word processing and 
spreadsheets. Compared to vector processors, scalar processors are less powerful and slower, 
but they are cheaper and more energy-efficient.
Characteristics of Scalar Processor
• Scalar processors deliver high-performance capabilities, capable of executing multiple instructions 
simultaneously.
• Scalar processors execute a single instruction in one clock cycle.
• Scalar processors are relatively low-cost compared to other types of processors.
• Scalar processors have low power consumption, making them more efficient and cost-effective.
• Scalar processors are highly flexible and can be used to solve a variety of problems.
• Scalar processors are relatively simple in design and are easy to program and maintain.
Advantages of Scalar Processor
• Low Cost:Scalar processors are typically much cheaper than vector processors, making them 
more accessible to many people.
• Low Power Consumption:Scalar processors are much more efficient than vector processors, 
reducing the amount of power needed to operate them.
• Easier to Program: Scalar processors are simpler to program than vector processors, making 
them easier to use for novice programmers.
• Flexible: Scalar processors are more flexible than vector processors, allowing them to be 
used in a variety of applications.
• High Clock Speed: Scalar processors are able to process instructions at a much faster rate 
than vector processors, increasing the speed of computations.
• Good for Single-Threaded Tasks: Scalar processors are better suited for single-threaded 
tasks, as they can process one operation at a time.
Limitations of Scalar Processor
• Memory Bandwidth: Scalar processors are limited by the amount of memory bandwidth 
available.
• Instruction Set: Scalar processors typically have limited instruction sets and lack features found in 
modern processors.
• Performance: Scalar processors are often limited in their performance due to their single
instruction execution.
• Compatibility: Scalar processors are often limited in their compatibility with vector processors 
due to their different instruction sets.
• Processing Speed: Scalar processors are typically slower than vector processors.
Applications of Scalar Processor
• Video Games: Scalar processors are used to rendering 3D graphics for video games. This 
allows for faster and more realistic graphics, which can enhance the gaming experience.
• Web Browsing:Scalar processors are used to rendering webpages quickly and accurately. This 
allows for a smoother and faster browsing experience.
• Office Applications: Scalar processors are used to rendering documents and spreadsheets 
quickly. This allows for faster and more efficient document editing.
• Graphics Applications: Scalar processors are used to rendering graphics quickly. This can 
include tasks such as image manipulation and video editing.
• Database Applications: Scalar processors are used to quickly search and query large 
databases. This can include tasks such as customer data retrieval or financial data analysis.
• Mobile Applications: Scalar processors are used to rendering graphics quickly for mobile 
applications. This allows for a smoother and faster user experience when interacting with 
mobile apps.
Vector Processor v/s Scalar Processor
Factor Vector Processor Scalar Processor
Architecture It has a single instruction multiple data (SIMD) architecture. 
Instructions are executed multiple times in parallel on 
multiple data elements.
It has a single instruction single data (SISD) 
architecture. Instructions are executed one at a 
time on a single data element.
Execution 
Time: It can execute instructions faster than a scalar processor 
due to the nature of SIMD architecture.
It takes more time to execute instructions since 
the instructions are executed one at a time.
Data 
Processing It processes multiple data elements in parallel. It processes single data element at a time.
Registers It has multiple registers to store multiple data elements. It has a single register to store a single data 
element.
Cache It has multiple caches for multiple data elements. It has a single cache for the single data element.
Branching It does not support conditional vector branching. It supports conditional vector branching.
Vector Processor v/s Scalar Processor
Factor Vector Processor Scalar Processor
Performance It offers higher performance than a scalar processor due to 
its SIMD architecture.
It offers lower performance than vector processors 
due to its SISD architecture.
Power 
Consumption It consumes more power than a scalar processor due to its 
more sophisticated architecture.
It consumes less power than a vector processor 
due to its simpler architecture.
Cost It is more expensive than a scalar processor due to its 
sophisticated architecture.
It is cheaper than a vector processor due to its 
simpler architecture.
Parallelism It has more parallelism due to multiple data elements being 
processed in parallel.
It has less parallelism due to a single data element 
being processed at a time.
Memory 
Bandwidth It requires more memory bandwidth due to multiple 
memory accesses.
It requires less memory bandwidth due to single
memory access.
Vector Instruction Format in Vector 
Processors
Vector instruction format is a type of instruction format used in vector processors, which are specialized types of 
microprocessors that are designed to perform vector operations efficiently. In a vector processor, a single 
instruction can operate on multiple data elements in parallel, which can greatly accelerate certain types of 
computations, such as matrix multiplication, signal processing, and scientific simulations.
Vector instruction format is a type of instruction format used in vector processors, which are specialized 
processors designed to perform operations on vectors and matrices efficiently. In vector processors, a single 
instruction operates on multiple data elements in parallel, which is different from scalar processors where a single 
instruction operates on a single data element at a time.
The vector instruction format typically includes an opcode field that specifies the operation to be performed, a 
vector register specifier field that identifies the vector register that contains the data to be operated on, and a 
length field that specifies the number of elements in the vector.
The vector processor reads the vector instruction and retrieves the data from the vector register identified in the 
instruction. It then performs the specified operation on all the elements in the vector in parallel, and stores the 
result back into the same vector register or a different one, depending on the instruction.
Vector instruction formats can vary depending on the specific vector 
processor architecture, but they typically include some combination 
of the following fields:
1. Opcode field: specifies the operation to be performed on the vector data.
2. Vector register specifier field: identifies the vector register that contains the data to be operated on.
3. Length field: specifies the number of elements in the vector.
4. Mask field: specifies which elements in the vector to operate on.
5. Addressing mode field: specifies how to access the vector data in memory.
6. Data type field: specifies the data type of the elements in the vector.
Vector instruction formats allow vector processors to perform operations on large amounts of data in parallel, making 
them well-suited for scientific and technical applications, such as simulations, modeling, and image processing.
Vector instruction set
Different Instruction formats are used by different vector processors. Vector instructions are 
generally specified by some fields. The main fields that are used in vector instruction set are 
given below:
Operations Code (Opcode)
Base addresses
Operations Code (Opcode)
1. Operations Code (Opcode) – The operation code must be specified to select the functional 
unit or to reconfigure a multi-functional unit to perform the specified operation dictated by 
this field. Usually, microcode control is used to set up the required resources. For 
example: Opcode – 0001 mnemonic – ADD operation – add the content of memory to the 
content of accumulator Opcode – 0010 mnemonic – SUB operation – subtract the content of 
memory to the content of accumulator Opcode – 1111 mnemonic – HLT operation – stop 
processing
Base addresses:
Key addressing components 
1. Base addresses – For a memory reference instruction, the base addresses are needed for both source 
operands and result vectors. The designated vector registers must be specified in the instruction, if the 
operands and results are located in the vector register file, i.e., collection of registers. For example: ADD R1, R2. 
Here, R1 and R2 are the addresses of the register.
2. Offset (or Displacement) – This field is required to get the effective memory address of operand vector. The 
address offset relative to the base address should be specified. Using the base address and the offset (positive 
or negative), the effective address is calculated.
3. Address Increment – The address increment between the scalar elements of vector operand must be 
specified. Some computers, i.e., the increment is always 1. Some other computers, like TI-ASC, can have a 
variable increment, which offers higher flexibility in application. For example:
R1 <- 400 
Auto incr-R1 is incremented the value of R1 by 1.
4. Vector length – The vector length (positive integer) is needed to determine the termination of a vector 
instruction.