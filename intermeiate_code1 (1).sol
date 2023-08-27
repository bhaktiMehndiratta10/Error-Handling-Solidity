// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevert {
    uint256 private counter;

    constructor() {
        counter = 0;
    }

    function increment() external {
        counter = counter + 1;
    }

    function decrement() external {
        require(counter > 0, "Counter cannot be negative");
        counter = counter - 1;
    }

    function Even() external view returns (bool) {
        assert(counter >= 0);
        return counter % 2 == 0;
    }

    function Odd() external view returns (bool) {
        assert(counter >= 0);
        return counter % 2 != 0;
    }

    function getCount() external view returns (uint256) {
        return counter;
    }

    function unsupportedOperation() external pure {
        revert("Unsupported operation");
    }
}
