//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
    function length(string memory str) public pure returns (uint256) {
        bytes memory str_bytes = bytes(str);
        return str_bytes.length;
    }
//concatenate ( ) - This function will take two arguments i.e string 1 and string 2. It will concatenate string 1 and string 2 and will return the concatenated string.
    function concatenate(string memory str1, string memory str2)
        public
        pure
        returns (string memory)
    {
        bytes memory str_bytes1 = bytes(str1);
        bytes memory str_bytes2 = bytes(str2);
        string memory str = new string(str_bytes1.length + str_bytes2.length);
        bytes memory str_bytes = bytes(str);

        uint256 k = 0;
        for (uint256 i = 0; i < str_bytes1.length; i++) {
            str_bytes[k] = str_bytes1[i];
            k++;
        }
        for (uint256 i = 0; i < str_bytes2.length; i++) {
            str_bytes[k] = str_bytes2[i];
            k++;
        }

        return string(str_bytes);
    }
}
