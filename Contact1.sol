//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//contact to store and retrieve a number!
contract Contact1 {
    // State variable to store the number
    uint256 number;
    // Function to set the number
    function setNumber(uint256 _number) public {
        number = _number;
    }
    // Function to get the number
    function getNumber() public view returns (uint256) {
        return number;
    }
}
