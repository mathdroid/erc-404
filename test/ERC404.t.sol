// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/contracts/examples/ExampleERC404.sol";

contract Erc404Test is Test {
    ExampleERC404 public pandora;

    function setUp() public {
        pandora = new ExampleERC404("Pandora", "PANDORA", 18, 10000, msg.sender, msg.sender);
    }

    function test_sanity() public {
        assertEq(pandora.name(), "Pandora");
    }
}
