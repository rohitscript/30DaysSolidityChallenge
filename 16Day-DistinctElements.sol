// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
//Create a function distinct(array, length of array)
//This distinct() will take two arguments - a dynamic uint type array and length of the array.
//The distinct() will return the number of distinct elements in an array.
    function distinct(int256[] memory array, uint256 len)
        public
        pure
        returns (uint256)
    {
        uint256 i;
        uint256 j;
        uint256 count = 1;

        for (i = 1; i < len; i++) {
            for (j = 0; j < i; j++) {
                if (array[i] == array[j]) {
                    break;
                }
            }
            if (i == j) {
                count++;
            }
        }
        return count;
    }
}