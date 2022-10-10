//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    address owner;
//Create a constructor() to set the owner of contract 
    constructor() {
        owner = msg.sender;
    }
//Create a payable function send(address type array for storing addresses, uint type array to store the amount).

    function send(address payable[] memory to, uint256[] memory amount)
        public
        payable
        ownerOnly
    {
        require(to.length == amount.length, "to must be same length as amount");
        for (uint256 i = 0; i < to.length; i++) {
            to[i].transfer(amount[i]); //to array  - 0x00 0x01 0x02
            //amount array - 10 20 30
        }
    }

    modifier ownerOnly() {
        require(msg.sender == owner);
        _;
    }
}
