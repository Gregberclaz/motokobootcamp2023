# Questions 🙋
1.  Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?  
**No, it not. 4GB of heap memory and 48 GB of stable memory**  
  
2. **How much accounts can a unique Principal own?**  
How much time (or rounds of consensus) do we need to wait for an answer?  
**4,294,967,295**  
  
3. Can we safely upgrade a canister from interface A to interface B?  
**Yes, it will work but won't give exactly the expected result. (the last name will be displayed from the call of `greet` with 2 arguments)**  
