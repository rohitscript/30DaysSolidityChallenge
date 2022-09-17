// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract day5 {
//Create a function find(int a). Where a>0.
    function find(int256 a) public pure returns (int256) {
        require(a>0,"a should not be negative");
 //Return the remainder when a is divided by 3.
        return a % 3;
    }
}

