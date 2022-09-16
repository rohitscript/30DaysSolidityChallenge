// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//Create a function evaluate(int a , int b).
contract day4 {
//Subtract the difference of a and b from the sum of a and b
    function evaluate(int256 a,int256 b) public pure returns (int256){
    //Return the result of the above task from the evaluate()
    return ((a+b)-(a-b));
    }
}
