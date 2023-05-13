// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.4;

contract KingOfTheBlockchain {
    // State variables
    address public leader;
    uint public currentValue;

    // Events
    event NewLeader(address indexed newLeader, uint newAmount);

    constructor() {
        leader = msg.sender;
        currentValue = 0;
    }

    // Fallback function to automatically trigger becomeLeader
    receive() external payable {
        becomeLeader();
    }

    function becomeLeader() public payable {
        require(msg.value > currentValue, "Payment must be higher than the current value.");
        require(msg.sender != leader, "The same leader cannot appear twice consecutively.");

        // Update leader and current value
        leader = msg.sender;
        currentValue = msg.value;

        // Emit the NewLeader event
        emit NewLeader(leader, currentValue);
    }

    function whoisLeader() public view returns(address) {
        return leader;
    }

    function amountToBeat() public view returns(uint){
        return currentValue;
    }
}
