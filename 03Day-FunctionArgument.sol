// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

//Create FunctionArgument Contract
contract FunctionArgument{
//Create a state variable of uint type (need not to be public).
    uint num =10;
 //Create a set ( ) and with one argument. And set the value of the created state variable with the value passed as an argument to the set ( ).
 function set(uint _item) public {
    num=_item;
 }
 //create another function get ( ) which returns the value of the state variable.
 function get() public view returns(uint){
    return num;
 }
}
