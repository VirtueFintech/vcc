pragma solidity ^0.4.18;

import './VCCCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/FinalizableCrowdsale.sol';
import 'zeppelin-solidity/contracts/ownership/Claimable.sol';

/**
 * The VCCCrowdsale contract does this and that...
 */
contract VCCCrowdsale is FinalizableCrowdsale, Claimable {

  function VCCCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet)
    Crowdsale(_startTime, _endTime, _rate, _wallet) {    
  }

  function createTokenContract() internal returns (MintableToken)  {
    return new VCCCoin();
  }

}

