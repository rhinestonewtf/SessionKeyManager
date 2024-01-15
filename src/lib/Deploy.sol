// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/* solhint-disable max-line-length*/
import { SESSIONKEYMANAGER_BYTECODE } from "../SessionKeyManagerBytecode.sol";
import { ISessionKeyManager } from "../ISessionKeyManager.sol";

function etchSessionKeyManager() returns (ISessionKeyManager) {
    address _addr;
    bytes memory _code = SESSIONKEYMANAGER_BYTECODE;
    // solhint-disable-next-line no-inline-assembly
    assembly {
        _addr := create(0, add(_code, 0x20), mload(_code))
    }
    return ISessionKeyManager(_addr);
}
