//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

// This contract acts as a factory to deploy multiple SimpleStorage contracts
// It allows you to create new SimpleStorage contracts and interact with them

contract StorageFactory is SimpleStorage {
    // Array to store deployed SimpleStorage contracts
    SimpleStorage[] public simpleStorageArray;

    // Function to create a new SimpleStorage contract and add it to the array
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    // Function to store a number in a SimpleStorage contract at a given index
    function sfStore(
        uint256 _SimpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        SimpleStorage(address(simpleStorageArray[_SimpleStorageIndex])).store(
            _simpleStorageNumber
        );
    }
    // Function to retrieve the stored number from a SimpleStorage contract at a given index
    function sfGet(uint256 _SimpleStorageIndex) public view returns (uint256) {
        return
            SimpleStorage(address(simpleStorageArray[_SimpleStorageIndex]))
                .retrieve();
    }
}
