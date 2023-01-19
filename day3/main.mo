import Book "book";
import List "mo:base/List";

actor {
    type Book = Book.Book;
    /*******************************************
     4. In your file called book.mo create a custom type with at least 2 properties (title of type Text, pages of type Nat), import this type in your main.mo and create a variable that will store a book.
    *******************************************/
    
    /*******************************************
     5. In your file called book.mo create a function called create_book that takes two parameters: a title of type Text, and a number of pages of type Nat and returns a book. This function will create a new book based on the parameters passed and then read it before returning it.
    *******************************************/
    public query func create_book(title : Text, pages : Nat) : async Book {
        return {title; pages};
    };

    /*******************************************
     6. In main.mo import the type List from the Base Library and create a list that stores books.
    *******************************************/
    var list = List.nil<Book>();

    /*******************************************
     7.1 In main.mo create a function called add_book that takes a book as parameter and returns nothing this function should add this book to your list.
    *******************************************/
    public func add_book(book : Book) : async () {
        list := List.append(list, List.make<Book>(book));
    };
    /*******************************************
     Then create a second function called get_books that takes no parameter but returns an Array that contains all books stored in the list.
    *******************************************/
    public query func get_books() : async [Book] {
        return List.toArray(list);
    };
};