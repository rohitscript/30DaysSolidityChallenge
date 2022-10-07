// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
//Create a variable of enum type.
    enum House {
        SMALL,
        MEDIUM,
        LARGE
    }
    House choice;
   
//Create a function setLarge(). This will set the value of the enum type variable (created at step 1) with LARGE.
    function setLarge() public {
        choice = House.LARGE;
    }
//Create a function getChoice() which will return the value of the enum type variable (created at step 1) .
    function getChoice() public view returns (House) {
        return choice;
    }

}
