let DamaToken = artifacts.require("DamaToken");

module.exports = deployer => {
  deployer.deploy(DamaToken, "Guilherme D Amato token", "DMT", 1000);
};
