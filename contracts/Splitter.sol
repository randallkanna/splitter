pragma solidity ^0.4.4;


contract Splitter {
  address public splitOne;
  address public splitTwo;
  address public owner;

  function Splitter() public {
    owner = msg.sender;
    splitOne = _splitOne;
    splitTwo = _splitTwo;
  }

  function split(address _splitOne, address _splitTwo) public payable returns (bool) {
    require(splitOne != 0x0);
    require(splitTwo != 0x0);
    require(msg.value >= 0);
    uint256 value = msg.value;

    uint halfAmount = msg.value / 2;

    balances[splitOne] = halfAmount;
    balances[splitTwo] = halfAmount

    // TO DO - remove from senders account

    return true;
  }

  // create a function to check if

  // create a function to withdraw funds
}
