//SPDX-License-Identfier: MIT
pragma solidity ^0.8.18;
import {ERC20} from"../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ChadToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("ChadToken", "CHAD") {
        _mint(msg.sender, initialSupply);
    }
    
}