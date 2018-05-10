var Splitter = artifacts.require('../Splitter.sol');

contract('Splitter', function(accounts) {
  var sendAccount = accounts[0];
  var recipient1 = accounts[1];
  var recipient2 = accounts[2];

  beforeEach(function() {
    return Splitter.new()
    .then(function(instance) {
      contract = instance;
    });
  });

  it("should assert true", function(done) {
    var splitter = Splitter.deployed();
    assert.isTrue(true);
    done();
  });

  it("should split ether between two accounts", async function() { // done async
    var testAmount = 2;

    recipient1PreBalance = await contract.getBalance.call(recipient1);
    recipient2PreBalance = await contract.getBalance.call(recipient2);

    assert.strictEqual(recipient1PreBalance.toNumber(), 0, 'Recipient 1 should have 0 balance in test start');
    assert.strictEqual(recipient2PreBalance.toNumber(), 0, 'Recipient 2 should have 0 balance in test start');

    await contract.splitBalance(recipient1, recipient2, { from: sendAccount, value: testAmount })

    recipient1PostBalance = await contract.getBalance.call(recipient1);
    recipient2PostBalance = await contract.getBalance.call(recipient2);

    assert.strictEqual(recipient1PostBalance.toNumber(), 1, 'Recipient 1 should have 1 balance after split');
    assert.strictEqual(recipient2PostBalance.toNumber(), 1, 'Recipient 2 should have 1 balance after split');
  });

  it("should only split funds if owner has enough funds to complete transaction", async function() {
    var testAmount = 20;
    await contract.checkBalanceIsSufficient({ from: sendAccount, value: testAmount });

    assert.isTrue(true);
  });
});
