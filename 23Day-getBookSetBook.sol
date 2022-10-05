// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
//Create a structure -> struct Book { string title; string author; uint256 book_id; }
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    Book[5] book;
    uint256 i = 1;

    function setBook(
    //Create two functions a) setBook(title(string),author(string),id(uint)) - To set the book title, author and id given in the "Book type" array. 
        string memory _titile,
        string memory _author,
        uint256 _id
    ) public {
        book[i] = Book(_titile, _author, _id);
        i++;
    }
//getBook(id(uint)) - To get the book title,author and id of the Book whoose id is passed as an argument.
    function getBook(uint256 _i)
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (book[_i].title, book[_i].author, book[_i].book_id);
    }
}
