var VCCCrowdsale = artifacts.require("./VCCCrowdsale.sol");
var VCCCoin = artifacts.require("./VCCCoin.sol");

module.exports = function(deployer, network, accounts) {

  const ether = 1000000000000000000;
  // parameters
  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1
  const endTime = startTime + (24*60*60 * 20) // 20 days
  const wallet = accounts[0]

  // now, the initial rate should be percentage of Ether.
  // the further implementation should be by date, meaning the first 20 days 
  // would be by a certain percentage, and increased from there wrt to Ether 
  // as the time progress.
  // 
  const rate = new web3.BigNumber(0.25 * ether) // 25% from Ether price.

  deployer.deploy(VCCCrowdsale, startTime, endTime, rate, wallet);
};
