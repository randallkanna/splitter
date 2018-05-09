var Migrations = artifacts.require("./Migrations.sol");
var Splitter = artifacts.require("./Splitter.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};

module.exports = function(deployer) {
  deployer.deploy(Splitter, 1, 2)
}
