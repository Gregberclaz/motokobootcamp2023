# Questions 🙋
1. True or False: we can prevent the heap being erased during upgrades by using a `stable` heap.  
**Yes. This is for example what to do for all non-primitive variables (example Map) by saving them in a stable array during the `system func preupgrade()`**  
  
2. **A.call() -> B.call() -> C** 
How much time (or rounds of consensus) do we need to wait for an answer?  
**Assuming canisters A, B and C are in the same subnet: 2 rounds (1 round on C and 1 round on B = 4 sec).**  
**If they are all 3 in different subnets, 4 rounds (2 on C and 2 on B = 8 sec)**  
  
3. Is possible to realize an intercanister call in query mode?  
**Very good question ! I suppose not, since consensus is needed.**  
