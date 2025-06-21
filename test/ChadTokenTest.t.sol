//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployChadToken} from "../script/DeployChadToken.s.sol";
import {ChadToken} from "../src/ChadToken.sol";

contract ChadTokenTest is Test {
    DeployChadToken deployer;
    ChadToken token;
    uint256 public constant INITIAL_SUPPLY = 100 ether;
    address bob = makeAddr("bob");
    address alice = makeAddr("alice");


    function setUp() public {
        deployer = new DeployChadToken();
         token = deployer.run();
         console.log(address(deployer));
         vm.prank(msg.sender);
         token.transfer(bob, INITIAL_SUPPLY);

    }

    function testDeploy() public {
        assertEq(token.name(), "ChadToken");
        assertEq(token.symbol(), "CHAD");
        assertEq(token.totalSupply(), 1000000 * 10 ** 18);
    }
    function testBobBalance() public {
        assertEq(INITIAL_SUPPLY,token.balanceOf(bob));
    }
}