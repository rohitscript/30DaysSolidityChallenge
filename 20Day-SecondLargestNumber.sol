// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

   contract Day2 {
   //Create a function secondMax(array, length of array) . This secondMax() will take two arguments - a dynamic int type array and length of the array.
    function secondMax(int256[] memory arr, uint256 size) public pure returns(int256) {
            for (uint256 i = 0; i < size - 1; i++) {
                for (uint256 j = i + 1; j < size; j++) {
                    if (arr[i] < arr[j]) {
                        int256 temp = arr[i];
                        arr[i] = arr[j];
                        arr[j] = temp;
                    }
                }
            }

            return arr[1];
}
   }

   //The secondMax() will find the second largest element in an array. For Example - If array =[40, 12, 31, 6] then secondMax() will return 31. If array =[9, 122, 37, 54] then secondMax() will return 54.
