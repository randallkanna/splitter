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

  it("should split ether between two accounts", async function() { // done
    var testAmount = 2;

    recipient1PreBalance = await contract.getBalance.call(recipient1);
    recipient2PreBalance = await contract.getBalance.call(recipient2);

    assert.strictEqual(recipient1PreBalance.toNumber(), 0, 'Recipient 1 should have 0 balance in test start');
    assert.strictEqual(recipient2PreBalance.toNumber(), 0, 'Recipient 2 should have 0 balance in test start');

    // call the function


    // verify that the post balances of both work
    // recipient1PostBalance = await contract.getBalance.call(recipient1);
    // recipient1PostBalance = await contract.getBalance.call(recipient2);

    // done(); // add this back?

    // assert.strictEqual(balance2.toString(10), expectedAmount.toString(10));
    // assert.strictEqual(balance1.toString(10), balance2.toString(10));
    // assert.strictEqual(postBalanceBob.toNumber(), (preBalanceBob.toNumber() + splitting), "Bob did not receive the splitting.");

  });
});
