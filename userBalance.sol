// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title Mappings contract
 * @author Famus
 * @notice Storing user's deposit into a mapping and displaying whoever is calling the contract balance
 */

contract userBalance {
    mapping(address => uint) public userbal; // mapping storing user's balance

    function deposit(uint _amount) external payable {
        require(_amount == msg.value, "Try again"); //in case we want the user to deposit a custom amount
        userbal[msg.sender] += msg.value;
    }

    function checkBalance() external view returns (uint) {
        //returning whoever is calling the function balance

        require(userbal[msg.sender] > 0, "Balance is empty");

        return userbal[msg.sender];
    }
}
