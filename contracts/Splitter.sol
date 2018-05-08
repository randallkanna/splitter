pragma solidity ^0.4.4;


contract Splitter {
  address public splitOne;
  address public splitTwo;
  address public owner;

  constructor(address splitUser1, address splitUser2) public {
    owner = msg.sender;
    splitOne = splitUser1;
    splitTwo = splitUser2;
  }

  function split() public payable {
    /* value = msg.value; */

    /* splitOne.balance += msg.value / 2; */
    /* splitTwo.balance += msg.value / 2; */
  }
}
