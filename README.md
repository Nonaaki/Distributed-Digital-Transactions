# Blockchain-Based Voting System

# Project Overview

 This project is developed as part of the Distributed Digital Transactions module

The goal is to design and implement a blockchain-based electronic voting system using smart contracts

# Objectives

Allow the election administrator to register candidates

Allow only eligible wallet addresses to vote

Ensure a wallet address voted only ONCE

Log voting transactions to a blockchain

Display the election results

# Technology

- Python

- Solidity

- Ganache

- Remix IDE

- Shell Script

- GitHub

## Project Status
### EVM Compatibility – Shanghai

During testing with Ganache, I encountered a "missing revert data" error when trying to retrieve candidate information, 
the Solidity compiler was using the default Osaka EVM version. I changed the EVM version to Shanghai, recompiled the smart contract and deployed it again.
After this change, I was able to retrieve candidate names and vote counts successfully.

 Initial setup and planning.
