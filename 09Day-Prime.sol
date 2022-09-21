// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
//A prime number is a whole number greater than 1. It has exactly two factors, that is, 1 and the number itself.
contract Day3 {
//Create a function prime(uint n) . This prime() will check whether n is a prime number or not.
    function prime(uint256 n) public pure returns (uint256) {
    //If n is a prime number then prime() returns 1 and n is not prime then prime() must return 0.
        if (n <= 1) {
            return 0; //not prime
        }
        for (uint256 i = 2; i < n; i++) {
            if (n % i == 0) {
                return 0; //not prime
            }
        }
        return 1; //prime
    }
}
