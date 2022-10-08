// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
    address owner;
//Create a constructor() to hold the address of the owner.
    constructor() {
        owner = msg.sender;
    }
//Create a function returnOwner() which returns the address of the owner. This returnOwner() can only be called by the owner (that we set using constructor()). If some other address tries to call this returnOwner() it should revert with this statement "You are not the owner"
    function returnOwner() public returns (address) {
        require(owner == msg.sender, "You are not the owner");
        return owner;
    }
}
