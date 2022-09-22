// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
//Create a function power(uint x,uint y) .This power() will calculate x raised to the power of y and return it.
    function power(uint256 base, uint256 exponent) public pure returns (uint256)
    {
        uint256 value = 1;
        while (exponent != 0) {
            value *= base;
            --exponent;
        }

        return value;
    }
    }

