//SPDX-License-Identifier:MIT
pragma solidity 0.8.30;

contract UserProfile{
    // struct User
    struct User {
        string name;
        uint256 age;
        string email;
        uint256 registrationTimestamp;
        bool isRegistered;
    }

    //mapping
    //state variable 
    mapping (address => User) public users;
    mapping (address => bool) public isRegistered;

    function register(string memory name, uint256 age, string memory email) public {
        require(!isRegisterd[msg.sender], "User is already registered");

        users[msg.sender] = User(name, age, email, block.timestamp, true);
        isRegistered[msg.sender]=true;
        
    }

}