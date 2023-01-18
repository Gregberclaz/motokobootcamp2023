# Questions 🙋

1. Who controls the ledger canister?  
**A single developper/user or an other canister/smart contract/DAO have the ability to control a ledger canister**  

2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? 
**subnet ID : pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe**  
How much nodes are running this subnet? **16**  
Sources : https://dashboard.internetcomputer.org/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe?nd-s=100  
  

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?  
DISSOLVE DELAY BONUS : (2-1.06) / ((8 years * 12 months) - 6 initial month) * (24 month locked) = 1.248  
AGE BONUS : (0.25 / 48 month * 24 month) + 1 = 1.125
AMOUNT MB TOKENS * DISSOLVE DELAY BONUS * AGE BONUS = 10 * 1.248 * 1.125 = **14.04 Voting power**  


4. What is wrong with the following code?  
**base/Nat import is missing**  
**query is missing**  
**n and t declaration are useless**  
```
import Nat = "mo:base/Nat";
actor {
  public query func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
5. What is wrong with the following code?  
**First, in Motoko, arrays are immutable by default. Remove the var from [var Text]**  
**Second, if the function must return all the languages, don't understand why show_languages() need to have an argument... ? Remove "language : Text"**  
**Third, query is missing**  
```
actor {
  let languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public query func show_languages() : async [Text] {
    return (languages);
  };
 
}
```
6. What is wrong with the following code?  
**base/Array import is missing**  
**Would be better to use a Buffer than Array.append...?**  
**Query is missing**  
```
import Array = "mo:base/Array";
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public query func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
}
```