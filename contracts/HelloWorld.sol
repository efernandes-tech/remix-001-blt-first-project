// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract HelloWorld {

    int8 public age = 34; // 8bits = between -128 and 128 - default int256 - other languages = 32

    uint8 public age2 = 34; // between 0 and 255

    // solidity don't have float/double

    string public message = "Hello World!";

}