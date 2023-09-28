const fs = require("fs");
const CarRentalPlatform = artifacts.require("CarRentalPlatForm");

module.exports = async function (deployer) {
  await deployer.deploy(CarRentalPlatform);
  const instance = await CarRentalPlatform.deployed();
  let CarRentalPlatFormAddress = await instance.address;

  let config = "export const carRentalPlatformAddress = "+ CarRentalPlatFormAddress;
  console.log("carRentalPlatformAddress = "+ CarRentalPlatFormAddress);

  let data = JSON.stringify(config);

  fs.writeFileSync("config.js", JSON.parse(data));

};
