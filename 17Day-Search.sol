// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
//Create a function search(array, length of array,element to search) . This search() will take three arguments - a dynamic uint type array ,length of the array, element that we need to search.

    function search(
        int256[] memory arr,
        uint256 size,
        int256 toSearch
    ) public pure returns (uint256) {
        for (uint256 i = 0; i < size; i++) {
            if (arr[i] == toSearch) {
                return 1; //if element is found
            }
        }
        return 0; //if element is not found
    }
}
