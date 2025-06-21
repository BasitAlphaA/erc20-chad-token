# 🪙 ChadToken – Foundry ERC20 Token

A simple ERC-20 token named **ChadToken (CHAD)** built with [Foundry](https://book.getfoundry.sh/) and using [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts). Includes a deployment script and basic unit tests.

---

# Getting Started

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and see output like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and see something like `forge 0.2.0 (816e00b...)`

---

## Quickstart

```bash
git clone https://github.com/your-username/chad-token-foundry.git
cd chad-token-foundry
forge install
forge build
```

### Optional Gitpod

If you want to develop in the cloud instead of installing locally:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/your-username/chad-token-foundry)

---

# Usage

## Start a local node

Start a local development node (Anvil):

```bash
anvil
```

## Deploy

Make sure Anvil is running in another terminal tab, then:

```bash
forge script script/DeployChadToken.s.sol:DeployChadToken --broadcast --fork-url http://localhost:8545
```

---

# Testing

This project includes basic unit tests written using `forge-std`.

```bash
forge test
```

or with Sepolia fork:

```bash
forge test --fork-url $SEPOLIA_RPC_URL
```

## Test Coverage

```bash
forge coverage
```

---

# Deployment to a testnet or mainnet

## 1. Set environment variables

Create a `.env` file based on the following:

```env
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/YOUR_API_KEY
PRIVATE_KEY=your-private-key-here
```

> ⚠️ Never use your real wallet for development. Always use a dummy account for testing.

## 2. Get Sepolia test ETH

Go to [https://faucets.chain.link/sepolia](https://faucets.chain.link/sepolia) and get free testnet ETH.

## 3. Deploy to Sepolia

```bash
forge script script/DeployChadToken.s.sol:DeployChadToken --rpc-url $SEPOLIA_RPC_URL --broadcast --private-key $PRIVATE_KEY
```

---

# Scripts

After deploying, interact using [cast](https://book.getfoundry.sh/cast/intro):

```bash
cast call <TOKEN_ADDRESS> "totalSupply()" --rpc-url $SEPOLIA_RPC_URL
```

Or transfer tokens:

```bash
cast send <TOKEN_ADDRESS> "transfer(address,uint256)" <RECIPIENT_ADDRESS> 100ether --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL
```

---

# Estimate Gas

```bash
forge snapshot
```

This creates a `.gas-snapshot` file showing the gas cost of each function.

---

# Formatting

To format your Solidity code:

```bash
forge fmt
```

---

# Contract Overview

### `ChadToken.sol`

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ChadToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("ChadToken", "CHAD") {
        _mint(msg.sender, initialSupply);
    }
}
```

- Name: `ChadToken`
- Symbol: `CHAD`
- Decimals: `18`
- Initial Supply: 1,000,000 CHAD (default in script)

---

# Thank you!

Follow me for more updates and open-source work:

[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://x.com/BasitAlphaA)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mian-abdul-basit-83a3a5342/)
