// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;
import {ISessionValidationModule} from "./ISessionValidationModule.sol";

interface ISessionKeyManager {
    type ValidationData is uint256;

    struct PackedUserOperation {
        address sender;
        uint256 nonce;
        bytes initCode;
        bytes callData;
        bytes32 accountGasLimits;
        uint256 preVerificationGas;
        uint256 maxFeePerGas;
        uint256 maxPriorityFeePerGas;
        bytes paymasterAndData;
        bytes signature;
    }

    struct SessionData {
        uint48 validUntil;
        uint48 validAfter;
        ISessionValidationModule sessionValidationModule;
        bytes sessionKeyData;
    }

    event SessionCreated(address indexed sa, bytes32 indexed sessionDataDigest, SessionData data);
    event SessionDisabled(address indexed sa, bytes32 indexed sessionDataDigest);

    function digest(SessionData calldata sessionData) external pure returns (bytes32);
    function disableSession(bytes32 _sessionDigest) external;
    function enableSession(SessionData calldata sessionData) external;
    function getSessionData(
        address smartAccount,
        bytes32 sessionDigest
    )
        external
        view
        returns (SessionData memory data);
    function isModuleType(uint256 _type) external pure returns (bool);
    function isValidSignatureWithSender(
        address sender,
        bytes32 hash,
        bytes calldata data
    )
        external
        view
        returns (bytes4);
    function name() external pure returns (string memory);
    function onInstall(bytes calldata data) external;
    function onUninstall(bytes calldata data) external;
    function validateUserOp(
        PackedUserOperation calldata userOp,
        bytes32 userOpHash
    )
        external
        returns (ValidationData vd);
    function version() external pure returns (string memory);
}
