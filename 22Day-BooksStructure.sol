// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
//Task Create a structure -> struct Book { string title; string author; uint256 book_id; }
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    Book book;

    function setBook(
    //Create two functions a) setBook(title(string),author(string),id(uint)) - To set the book title, author and id given in the structure. b) getBook() - To get the book title,author and id.
        string memory _titile,
        string memory _author,
        uint256 _id
    ) public {
        book = Book(_titile, _author, _id);
    }

    function getBook()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (book.title, book.author, book.book_id);
    }
}
