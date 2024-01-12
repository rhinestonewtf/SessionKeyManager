#!/bin/sh
bytecode=$(jq ".deployedBytecode" out/SessionKeyManager.sol/SessionKeyManager.json | jq ".object" | sed s/\"0x/hex\"/g)

echo "// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

bytes constant SESSIONKEYMANAGER_BYTECODE = $bytecode;" > src/SessionKeyManagerBytecode.sol

