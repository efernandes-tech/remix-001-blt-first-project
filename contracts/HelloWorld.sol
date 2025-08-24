// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract HelloWorld {

    int8 internal age = 34; // 8bits = between -128 and 128 - default int256 - other languages = 32

    uint8 private age2 = 34; // between 0 and 255

    // solidity don't have float/double

    string public message = "Hello World!";

    address public wallet = 0xc35a45a081949E0ce2418a7e9400D492CFbaE43b;

    bool public isValid = true;

    enum Keys { ON, OFF }

    Keys public status = Keys.ON;

}