contract Splitter {
  address public owner;
  mapping (address => uint) public balances;

  function Splitter() public {
    owner = msg.sender;
  }

  function getBalance(address addr) view returns(uint) {
      return balances[addr];
  }

  function splitBalance(address recipient1, address recipient2) public payable returns (bool) {
    require(msg.value >= 0);
    uint halfAmount = msg.value / 2;

    balances[recipient1] += halfAmount;
    balances[recipient2] += halfAmount;

    return true;
  }

  function withdrawFunds(uint amount) {

  }
}
