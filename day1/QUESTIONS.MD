# <a id="questions"> 🙋 Questions </a>

1. How much is the current memory capacity of a canister?
**The answer seems to be 4 GB per canister, but obviously it is possible to increase this number.**
Personal note: Testing and pushing the limits of IC memory when I have the basic knowledge

2. What is the issue with the following code sample?
**Need to use var instead of let**
```
actor {
  var counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

3. What is the issue with the following code sample?
**First, the var message must be a string, not a Nat**
**Second, you need to remove the keyword "query" from change_message. Otherwise the new value of var message can't be stored (consensus needed)**
```
actor {
  var message : Text = "0";
  public func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```

4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer. 
**False**
