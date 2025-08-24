// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract OddOrEven {
      
    uint8 public choice = 0; // 1 = Even, 2 = Odd

    function choose(uint8 newChoice) public {
        require(newChoice == 1 || newChoice == 2, "Choose 1 or 2");
        choice = newChoice;
    }

    function play(uint8 number) public view returns(bool) {
        uint8 cpuNumber = 1;
        bool isEven = (number + cpuNumber) % 2 == 0;

        if(isEven && choice == 1)
            return true;
        else if(!isEven && choice == 2)
            return true;
        else
            return false;
    }

}