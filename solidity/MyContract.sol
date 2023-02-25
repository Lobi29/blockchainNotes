// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MyContract {
    // Static Variables
    int256 public myInt = 1;
    uint public myUnit = 1;
    uint256 public myUnit256 = 1;
    uint8 public myUnit8 = 1;

    string public myString = "Hello, world!"';
    bytes32 public myBytes32 = "Hello, world!";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct MyStruct {
        uint256 myUnit256;
        string myString;
    }

    MyStruct public MyStruct = MyStruct(1, "Hello, world!");

    // local Variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}