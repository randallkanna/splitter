pragma solidity ^0.4.4;


contract Splitter {
  address public owner;
  uint public value;
  mapping (address => uint) public balances;

  function Splitter() public {
    owner = msg.sender;
  }

  function getBalance(address addr) returns(uint) {
      return balances[addr];
  }

  function split(address recipient1, address recipient2) public payable returns (bool) {
    require(recipient1 != 0x0);
    require(recipient2 != 0x0);
    require(msg.value >= 0);
    uint halfAmount = value / 2;

    balances[recipient1] += halfAmount;
    balances[recipient2] += halfAmount;



    // TO DO - remove from senders account

    return true;
  }

  // create a function to check if the sender has enough money

  // create a function to withdraw funds
}
