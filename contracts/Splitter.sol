pragma solidity ^0.4.4;


contract Splitter {
  address public splitOne;
  address public splitTwo;
  address public owner;

  function Splitter(address splitUser1, address splitUser2) public {
    owner = msg.sender;
    splitOne = splitUser1;
    splitTwo = splitUser2;
  }

  function split() public payable returns (bool) {
    require(splitOne != 0x0);
    require(splitTwo != 0x0);
    require(msg.sender.balance >= value);
    uint256 value = msg.value;

    splitOne.transfer(value / 2);
    splitTwo.transfer(value / 2);
  }
}
