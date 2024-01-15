import "forge-std/Test.sol";
import "src/lib/Deploy.sol";
import "src/SessionKeyManager.sol";

contract DeployTest is Test {
    ISessionKeyManager sessionKeyManager;
    ISessionKeyManager sessionKeyManagerFromBytes;

    function setUp() public {
        sessionKeyManagerFromBytes = etchSessionKeyManager();
        sessionKeyManager = ISessionKeyManager(address(new SessionKeyManager()));
    }

    function test_checkSameCode() public { 


      bytes32 codeHash = keccak256(address(sessionKeyManager).code);
      bytes32 codeHashBytes = keccak256(address(sessionKeyManagerFromBytes).code);

      assertEq(codeHash, codeHashBytes);

    }
}
