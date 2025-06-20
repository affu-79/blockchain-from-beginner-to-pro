//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// This contract allows you to store a favorite number, add people with their favorite numbers,and retrieve the favorite number or the total number of people added. It also uses a mapping to associate names with their favorite numbers.
contract SimpleStorage {
    // State variable to store a number
    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    // Function to set the favorite number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Function to retrieve the favorite number
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Function to add a person with their favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // Function to get the total number of people
    function getTotalPeople() public view returns (uint256) {
        return people.length;
    }
}
