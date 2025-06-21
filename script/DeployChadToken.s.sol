//SPDC-License-Identifier: MIT
pragma solidity ^0.8.18;
import "forge-std/Script.sol";
import "../src/ChadToken.sol";

contract DeployChadToken is Script {
    uint256 public constant INITIAL_SUPPLY = 1000000 * 10 ** 18; // 1 million tokens with 18 decimals
    function run() external returns(ChadToken) {
        vm.startBroadcast();
        ChadToken ot = new ChadToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return ot;
    }
}