// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/utils/Strings.sol";

contract EvenOrOddV2 {

    string public choice = ""; // EVEN or ODD

    function compare(string memory str1, string memory str2) private pure returns(bool) {
        bytes memory arrA = bytes(str1);
        bytes memory arrB = bytes(str2);
        return arrA.length == arrB.length && keccak256(arrA) == keccak256(arrB);
    }

    function choose(string memory newChoice) public {
        require(compare(newChoice, "EVEN") || compare(newChoice, "ODD"), "Choose EVEN or ODD");
        choice = newChoice;
    }

    function random() private view returns(uint256){
        return (uint(keccak256(abi.encodePacked(block.timestamp, choice))) % 2) + 1;
    }

    function play(uint8 number) public view returns(string memory) {
        require(number >= 0 && number <= 2, "Play 0, 1 or 2");
        require(!compare(choice, ""), "First, choose your option (EVEN or ODD)");

        uint256 cpuNumber = random();
        bool isEven = (number + cpuNumber) % 2 == 0;

        string memory message = string.concat("Player choose ", 
            choice,
            " and plays ",
            Strings.toString(number), 
            ". CPU plays ", 
            Strings.toString(cpuNumber));

        if(isEven && compare(choice, "EVEN"))
            return string.concat(message, ". Player won.");
        else if(!isEven && compare(choice, "ODD"))
            return string.concat(message, ". Player won.");
        else
            return string.concat(message, ". CPU won.");
    }

}