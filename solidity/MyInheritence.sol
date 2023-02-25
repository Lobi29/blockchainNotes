// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Inheritance
// Factories
// Interaction

contract Ownable() {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) public view returns(string memory) {
        return secret;
    }
}

contract MyContract is Ownable {
    constructor(string memory _secret) public {
        secret = _secret;
        super;
    }

    function getSecret() public view onlyOwner returns(string memory) {
        return secret;
    }

}