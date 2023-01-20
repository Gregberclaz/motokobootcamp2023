import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Principal "mo:base/Principal";

actor {

    /*******************************************
     1. Write a function unique that takes a list l of type List and returns a new list with all duplicate elements removed.
    *******************************************/

    
    /*******************************************
     2. Write a function reverse that takes l of type List and returns the reversed list.
    *******************************************/
    func reverse<T>(l : List.List<T>) : List.List<T> {
        List.reverse(l);
    };
    //the following function was for my personnal test for the reverse function
    /* */
    public query func testList() : async List.List<Nat> {
        var list : List.List<Nat> = List.nil();
        list := List.append(list, List.make<Nat>(3));
        list := List.append(list, List.make<Nat>(1));
        list := List.append(list, List.make<Nat>(3));
        list := List.append(list, List.make<Nat>(2));
        return reverse<Nat>(list);
    };
    /*******************************************
     3. Write a function is_anonymous that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.
    *******************************************/
    public shared ({ caller }) func is_anonymous() : async Bool {
        Principal.isAnonymous(caller);
    };

    /*******************************************
     4. Write a function find_in_buffer that takes two arguments, buf of type Buffer and val of type T, and returns the optional index of the first occurrence of "val" in "buf".
    *******************************************/
    func find_in_buffer<T>(buf : Buffer.Buffer<T>, val : T) : ?Nat {
        let eq = func<T>(x : T, y : T) : Bool {
            x==y;
        };
        return Buffer.indexOf<T>(val, buf, eq);
    };
    //the following function was for my personnal test for the find_in_buffer function
    public query func testBuffer() : async ?Nat {
        let b = Buffer.Buffer<Nat>(0);
        for (i in Iter.range(5, 10)) { b.add(i);};
        return find_in_buffer<Nat>(b, 2);
    }
    
    /*******************************************
     5. Add a function called get_usernames that will return an array of tuples (Principal, Text) which contains all the entries in usernames.
    *******************************************/
    return Iter.toArray(usernames)

}