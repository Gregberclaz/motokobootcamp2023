import Text = "mo:base/Text";
import Nat = "mo:base/Nat";
import Iter = "mo:base/Iter";
import Array = "mo:base/Array";

actor {

    /*******************************************
     1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
    *******************************************/
    public query func average_array(aInt: [Int]) : async Int {
        var sum : Int = 0;
        for (val in aInt.vals()){
            sum += val;
        };
        return sum/aInt.size(); //would be best to return a Float. Ex : sum = 8, size = 3, 8/3 will return Int 2
    };

    /*******************************************
     2. **Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    *******************************************/
     public query func count_character(t : Text, c : Char) : async Nat {
        var count = 0;
        for(char in t.chars()) {
            if(char==c) {count+=1;}
        };
        return count;
    };

    /*******************************************
     3. Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.
    *******************************************/

    public query func factorial(n : Nat) : async Nat {
        //skip the loop in the case of 0 or 1, factorial result is 1. Source :https://www.britannica.com/science/factorial
        if(n < 2){ return 1; };

        var f : Nat = 0;
        var counter : Nat = 0;
        loop {
            counter += 1;
            f += counter;
            if(counter >= n) {
                return f;
            }
        }
    };

    /*******************************************
     4.  Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence.
    *******************************************/
    public query func number_of_words(t : Text) : async Nat {
        let s : Iter.Iter<Text> = Text.split(t, #char(' '));
        return Iter.size(s);
    };

    /*******************************************
     5. Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
    *******************************************/
    public query func find_duplicates(a : [Nat]) : async [Nat] {
        var duplicate : [Nat] = [];
        var i : Nat = 0;

        while(i < a.size()) {
            var j : Nat = i;
            while(j > 0) {
                j -= 1;
                if(a[i]==a[j]) {
                    duplicate := Array.append<Nat>(duplicate, [a[j]]);
                    j := 0;
                };
            };
            i += 1;
        };
        return duplicate;
    };
    
    /*******************************************
     6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
    *******************************************/
    public query func convert_to_binary(n : Nat) : async Text {
        var s : Text = "";
        var rest : Nat = 0;
        var div : Nat = n;
        loop {
            rest := div % 2;
            div := (div-rest)/2;
            s := Nat.toText(rest) # s;
            if(div < 2) {
                if(div == 1) {
                 s := "1" # s;
                };
                return s;
            };
        };
    };
}