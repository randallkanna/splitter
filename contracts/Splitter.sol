pragma solidity ^0.4.4;


contract Splitter {
  address public owner;
  uint public value;
  mapping (address => uint) public balances;

  function Splitter() public {
    owner = msg.sender;
  }

  function getBalance(address addr) public returns(uint) {
      return balances[addr];
  }

  function splitBalance(address recipient1, address recipient2) public payable returns (bool) {
    require(msg.value >= 0);
    uint halfAmount = msg.value / 2;

    balances[recipient1] += halfAmount;
    balances[recipient2] += halfAmount;

    // TO DO - remove from senders account

    return true;
  }

  // create a function to check if the sender has enough money

  // create a function to withdraw funds
}
