// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
//Create a function even(array, length of array) . This even() will take two arguments - a dynamic uint type array and length of the array.
    function even(uint256[] memory arr, uint256 len)
        public
        pure
        returns (uint256[] memory)
    {
    //The even() will multiply each element of array with 2
        for (uint256 i = 0; i < len; i++) {
            arr[i] = 2 * arr[i];
        }
        return arr;
    }
}
