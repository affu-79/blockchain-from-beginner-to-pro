//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// This contract defines a struct to store student data and provides functions to set and get that data.
contract Contact2 {
    //define the struct
    struct Student {
        string name;
        uint age;
        bool isEnrolled;
    }
    //declare a struct variable
    Student public student;
    //function to set the student data
    function setStudent(
        string memory _name,
        uint _age,
        bool _isEnrolled
    ) public {
        student = Student(_name, _age, _isEnrolled);
    }
    //function to get the student data
    function getStudent() public view returns (string memory, uint, bool) {
        return (student.name, student.age, student.isEnrolled);
    }
}
