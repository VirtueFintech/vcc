pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';
import 'zeppelin-solidity/contracts/token/VestedToken.sol';
import 'zeppelin-solidity/contracts/ownership/Claimable.sol';
import 'zeppelin-solidity/contracts/ownership/HasNoEther.sol';
import 'zeppelin-solidity/contracts/ownership/HasNoTokens.sol';
import 'zeppelin-solidity/contracts/lifecycle/TokenDestructible.sol';

/**
 * The VCCCoin contract does this and that...
 * It should be mintable by the Initiator contract, and should be
 * transferrable, hence claimed by another party.
 * Any Ether or Token sent accidentally to this contract shall be
 * able to be recovered by the initiator.
 * It should be able to be destructed, for moving to any other Platform later on.
 */
contract VCCCoin is MintableToken, VestedToken, Claimable, HasNoEther, HasNoTokens, TokenDestructible {

  string public name = 'Virtue Coin';
  string public symbol = 'VCC';
  uint256 public decimals = 18;

  function VCCCoin () {
  }

}

