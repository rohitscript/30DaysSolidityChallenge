// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Day3 {
    mapping(address => uint256) balances;
//Create a function updateBalance(balance to update) . This updateBalance() will take one argument - a uint type variable. This function will update the balance of the address who has called this updateBalance().
    function updateBalance(uint256 newBalance) public {
        balances[msg.sender] = newBalance;
    }
//Create a function checkBalance(address of a user) . This checkBalance(address user)() will take one argument - a address type variable. This function will return the balance of the user who has called this function. With this function user can only check his/her own balance only. If the user tries to check some other address balance the checkBalance() should revert with "You are not the owner of the account".
    function checkBalance(address _user) public view returns (uint256) {
        require(msg.sender == _user, "You are not the owner of the account");
        return balances[_user];
    }
}
