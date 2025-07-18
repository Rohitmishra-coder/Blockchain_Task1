// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenTransfer {
    mapping(address => uint256) public balances;

    constructor() {
        balances[msg.sender] = 1000; // initial balance for deployer
    }

    function transfer(address recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
