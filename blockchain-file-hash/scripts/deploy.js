const hre = require("hardhat");

async function main() {
  const FileHashStorage = await hre.ethers.getContractFactory("FileHashStorage");
  const fileHashStorage = await FileHashStorage.deploy();

  await fileHashStorage.waitForDeployment();

  console.log("FileHashStorage deployed to:", await fileHashStorage.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});