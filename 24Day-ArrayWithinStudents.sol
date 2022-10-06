// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
    struct Student {
        string name;
        uint256[3] marks;
    }
    Student student;

    function set(
    //Create a function set(name of student, marks in maths,marks in science,marks in english) - To set the name and marks of a student in marks array.
        string memory _name,
        uint256 maths,
        uint256 science,
        uint256 english
    ) public {
        uint256 i = 0;
        student.name = _name;
        student.marks[i] = maths;
        i++;
        student.marks[i] = science;
        i++;
        student.marks[i] = english;
    }

    function get()
     //Create two functions get() - To get the name,marks in maths,marks in science and marks in english of the student.
        public
        view
        returns (
            string memory,
            uint256,
            uint256,
            uint256
        )
    {
        return (
            student.name,
            student.marks[0],
            student.marks[1],
            student.marks[2]
        );
    }
}
