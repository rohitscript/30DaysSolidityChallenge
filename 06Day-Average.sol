// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract day6 {
//Create a function average(int a,int b,int c). Where a>0,b>0,c>0.
    function average(
        int256 a,
        int256 b,
        int256 c
    ) public pure returns (int256) {
    //Return the average of a,b and c.
        return (a + b + c) / 3;
    }
}
