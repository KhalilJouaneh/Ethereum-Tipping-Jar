# Ethereum Tipping Jar - Buy Me A Coffee

This project was inspired by Buy Me A Coffee, which is a popular website that creators use to set up a landing page to accept money as a thank you for their services. However, the catch is that you need to have a bank account/credit card in order to use it. 

In this project, I've built a decentralized application where anyone with an Ethereum wallet can access the app and use it. The smart contract allows users to send Eth as tips and also leave messages for the content creator to view. 

Tech stack:

1. Hardhat to build, test, and deploy the smart contract.
2. I used the Alchemy RPC endpoint to connect Metamask wallet to the Goerli testnet.  
3. Used Ethers.js to interact with the deployed smart contract. 
4. Got some Ethereum Goerli tokens from www.goerlifaucet.com
5. Solidity for smart contracts 
6. Used Next JS for the frontend and Material UI for the components. 


Hardhat basic commands:

```shell
npx hardhat help
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
