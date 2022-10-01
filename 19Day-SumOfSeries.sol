// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
//Find the sum of the series 1 + x + x^2+ x^3+ .. + x^n
contract Day1 {
//Create a function expression(x,n) 
    function expression(uint256 x, uint256 n) public pure returns (uint256) {
        uint256 sm = 1;
        uint256 m = 1;
        for (uint256 i = 1; i <=n; i++) {
             m = m * x;
            sm = sm + m;
           
        }
        return sm;
    }
}
