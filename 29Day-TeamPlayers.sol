//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
//Create an array(address type) which stores only 16 elements
    address[16] team;
//getTeamPlayers() - To return the entire array elements.
    function getTeamPlayers() public view returns (address[16] memory) {
        return team;
    }
//selectJerseyNumber() - It will take only one argument of uint type and returns the players address from the array created above. a) The argument passed into the function must be greater than equal to zero and less than equal to 15. 
    function selectJerseyNumber(uint256 playerId) public returns (uint256) {
        require(playerId >= 0 && playerId <= 15);
        team[playerId] = msg.sender;
        return playerId;
    }
}
