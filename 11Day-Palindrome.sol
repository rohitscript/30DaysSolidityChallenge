// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
//A palindrome number is a number that is same after reverse.For example 545, 151, 34543 etc.
contract Day5 {
//Create a function palindrome(uint n) . Thispalindrome() will check whether n is a palindrome or not.
    function palindrome(uint256 n) public pure returns (uint256) {
        uint256 reversed = 0;
        uint256 remainder;
        uint256 original;

        original = n;
        while (n != 0) {
            remainder = n % 10;
            reversed = reversed * 10 + remainder;
            n /= 10;
        }
        //If n is a palindrome then palindrome() returns 1 and n is not palindrome then palindrome() must return 0.
        if (original == reversed) {
            return 1; //palindrome
        } else {
            return 0; //not palindrome
        }
    }
}
