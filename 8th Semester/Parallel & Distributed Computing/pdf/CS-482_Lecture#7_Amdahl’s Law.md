Lecture # 07
Amdahl’s Law
PARALLEL AND DISTRIBUTED COMPUTING
CS-482
Amdahl’s law
𝑇
For a given fixed amount of computation W, the speedup of machine 2 relative to 
machine 1 is 𝑆 =
1
𝑇2
▪ T1is the time taken by machine 1 to perform W whereas T2 is the time taken by 
machine 2 to perform the same amount of computation (T2 < T1).
▪ In 1967, Gene Amdahl pointed out, in a short paper, 
o the inherent limitations in trying to improve computer-system performance 
o by using multiple processors. 
▪ The concept has come to be known as Amdahl’s law.
Amdahl’s law
▪ Amdahl’sargumentis essentially that
o the overall performance improvement observed in an application program
o (with fixed amount of computation W)
o is limited by that portion of the application
o that is unaffected by whatever change was made to the system.
Amdahl’s law
▪ Consider the execution time lines shown in fig 2.
▪ Thetop line shows the time, Told, required to execute some program P on the system before
any changes are made.
▪ Nowassume that some change is made to the system that reduces execution time for some
operations by a factor of q.
▪ Theprogram nowruns intime Tnew, where Tnew < Told, as shown in the bottom line.
Amdahl’s law
▪ Hence there are many other operations in the program that are unaffected by this
change.
▪ Letbethefraction of all operations that are unaffected by the enhancement.
▪ Then, as shown in the bottom line of fig 2, the new execution time, Tnew, can be
divided into two components.
Amdahl’s law
▪ The first component, Told, is the execution time of that fraction of the program that is
unaffected by the change.
▪ The second component of Tnew, which is the remaining fraction 1- of the original
execution time, has its performance improved by the factor q.
▪ Thus, the time required for this component is (1-) Told/q.
▪ Theoverall speedup caused by this improvement is then found to be
▪ 𝑆=
1
𝑇𝑜𝑙𝑑
𝑇𝑛𝑒𝑤 
=
𝑇𝑜𝑙𝑑
𝛼𝑇𝑜𝑙𝑑+(1−𝛼)
𝑇𝑜𝑙𝑑 𝑞 
=
ൗ
ൗ
1 𝑞+𝛼(1− ൗ
1 𝑞)
Amdahl’s law
▪ This equation can be used to calculate the overall speedup obtained due to some
improvement in the system, assuming that q and  can be determined.
▪ However, it is interesting to ask what happens as the impact on performance of the
improvement becomes large, that is, as q → .
▪ It is easy to show that, in the limit as q → , (1-) Told/q → 0. 
▪ Thus, the overall speedup, S, is bounded by 1/. 
▪ That is, 
lim
𝑞→∞
𝑠 = lim
𝑞→∞
1
ൗ
1 𝑞+𝛼(1− ൗ1 𝑞)=1
𝛼
Amdahl’s law
▪ This result says that, no matter how much one type of operation in a system is
improved,
▪ the overall performance is inherently limited by the operations that are unaffected by
the improvement.
▪ For example, the best speedup that could be obtained in a parallel computing system
with p processors is p.
▪ However, if 10% of a program cannot be executed in parallel, the overall speedup
when using the parallel machine is at most 1/ = 1/0.1=10, even if an infinite number
of processors were available.
Amdahl’s law
▪ Anobviouscorollary to Amdahl's law
o any system designer or programmer should concentrate on making the common
case fast.
▪ Thatis, operations that occur most often will have the largest value of .
▪ Thus, improving these operations will have the biggest impact on overall performance.
▪ Interestingly, the common cases also tend to be the simplest cases.
▪ As a result, optimizing these cases first tends to be easier than optimizing the more
complex, but rarely used, cases.
Scaling Amdahl’s law
▪ One of the major criticisms concerning Amdahl’s law has been that it emphasizes the
wrong aspect of the performance potential of parallel-computing systems.
▪ The argument is that purchasers of parallel systems want to solve larger problems
within the available time.
▪ Following this line of argument leads to the following “scaled” or “fixed-time” version
of Amdahl's law.
▪ It is common to judge the performance of an application executing on a parallel system
by
o comparing the parallel execution time with p processors, Tp,
o with the time required to execute the equivalent sequential version of the
application program, T1,
o using the speedup Sp = T1/Tp.
Scaling Amdahl’s law
▪ Withthe fixed-time interpretation, however, the assumption is that
o there is no single-processor system that is capable of executing an equivalent
sequential version of the parallel application.
o Thesingle-processor may not have a large enough memory, for example, or
o the time required to execute the sequential version would be unreasonably long.
Scaling Amdahl’s law
▪ Inthis case, the parallel-execution time is divided into
o theparallel component, 1-, and
o theinherently sequential component, , giving
o Tp=T1+(1-)T1 as shown in fig 3 below.
▪ T1is the time in which user wants to run application.
▪ Since no single-processor system exists that is capable of executing an equivalent problem
of this size,
o it is assumed that the parallel portion of the execution time would increase by a factor of
p
o if it were executed on a hypothetical single-processor system.
Scaling Amdahl’s law
▪ This gives a hypothetical sequential execution time
𝑻𝒑 ′ = T1 + (1-)pT1.
▪ Theparallel speedup is found to be
▪ Thus, with this fixed-time, variable-problem-size form of Amdahl's law, the performance
of a parallel machine is not limited by the portion that is inherently sequential.
Homework 1
An industrial process simulation involves five steps which are performed sequentially 
on system A. The steps 1 and 2 take 1 and 2 minutes respectively whereas steps 3 – 5 
take 3 minutes each. Then system A was enhanced by introducing some parallelism to 
get a system B. The steps 3 to 5 on B now can be executed in parallel so that they take an 
overall time of 4 minutes whereas steps 1 and 2 are still to be executed in sequence. 
Calculate speedup using appropriate form of Amdahl’s law. 
Homework 2
An industrial process simulation is to be executed on a system in the available time, ta, 
of 10 min which includes parallel execution time (on 10 processors) of 7.5 min. It has 
been estimated that the parallel portion of the execution time would increase by a factor 
of 12 if it were executed on a hypothetical single-processor system. Calculate the parallel 
speedup. 
Homework 3
In designing a new computer system, we make an enhancement that improves some
mode of execution by a factor of 10. This enhancement takes 50% of the time when the
enhanced mode is in use. (Recall that Amdahl’s l
aw uses the fraction of the original,
unenhanced execution time to find speedup)
a) What is the speedup that we have obtained by using this fast mode?
b) What percentage of the original execution time has been converted to fast mode?