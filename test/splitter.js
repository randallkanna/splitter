var Splitter = artifacts.require('../Splitter.sol');

contract('Splitter', function(accounts) {
  var sendAccount = accounts[0];
  var split1 = accounts[1];
  var split2 = accounts[2];

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

  it("should split ether between two accounts", async function(done) {
    splitOne = split1
    splitTwo = split2
    var testAmount = 2;



    console.log(await contract.split(split1, split2));


    return true;

    // assert.strictEqual(postBalanceBob.toNumber(), (preBalanceBob.toNumber() + splitting), "Bob did not receive the splitting.");

  });
});
