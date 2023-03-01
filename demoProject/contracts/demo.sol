// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract demo {
    uint number;

    function set(uint _number) public {
        number = _number;
    }


    function get() public view returns(uint) {
        return number;
    }
}