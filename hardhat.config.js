require("@nomiclabs/hardhat-waffle");

// // This is a sample Hardhat task. To learn how to create your own go to
// // https://hardhat.org/guides/create-task.html
// task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
//   const accounts = await hre.ethers.getSigners();

//   for (const account of accounts) {
//     console.log(account.address);
//   }
// });

// // You need to export an object to set up your config
// // Go to https://hardhat.org/config/ to learn more

// /**
//  * @type import('hardhat/config').HardhatUserConfig
//  */
module.exports = {
  solidity: "0.8.1",
  networks:{
    rinkeby:{
      url:"https://eth-rinkeby.alchemyapi.io/v2/2NUQND7ico1FOy52DwsrOHApwYS8V1v7",
      accounts:["7d8a0987e89400082f4685c284065164c58a7d8369f8e8fcbdedad2c93582b6a"]
    }
  }
};
