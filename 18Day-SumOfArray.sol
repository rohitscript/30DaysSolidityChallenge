// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
//Create a function sumarray(array, length of array) .This sumarray() will take two arguments - a dynamic int type array and length of the array.
    function sumarray(int256[] memory arr, uint256 size)
        public
        pure
        returns (int256)
    {
        int256 sum = 0;
        for (uint256 i = 0; i < size; i++) {
            sum += arr[i];
        }
        return sum;
    }
}
