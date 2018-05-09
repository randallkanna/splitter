pragma solidity ^0.4.4;


contract Splitter {
  address public owner;
  uint public value;
  mapping (address => uint) public balances;

  function Splitter() public {
    owner = msg.sender;
  }

  function split(address splitOne, address splitTwo) public payable returns (bool) {
    require(splitOne != 0x0);
    require(splitTwo != 0x0);
    require(msg.value >= 0);
    uint halfAmount = value / 2;

    balances[splitOne] += halfAmount;
    balances[splitTwo] += halfAmount;

    // TO DO - remove from senders account

    return true;
  }

  // create a function to check if the sender has enough money

  // create a function to withdraw funds
}
