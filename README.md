# AVAX

![An Image of the AVAX currency.](avalanche-avax-la-gi-image-1044.png)

# What is AVAX?

Avalanche (AVAX) is a cryptocurrency and blockchain platform that rivals Ethereum. AVAX is the native token of the Avalanche blockchain, which—like Ethereum—uses smart contracts to support a variety of blockchain projects. Avalanche can provide near-instant transaction finality. AVAX is also used to pay transaction processing fees and secure the Avalanche network, and acts as a basic unit of account with other blockchains in the Avalanche ecosystem.

----------------------------------------------------------------------

# Understanding AVAX
Avalanche's smart contracts platform supports both [decentralized applications (dapps)](https://support.avax.network/en/articles/4587146-what-is-a-decentralized-application-dapp) and autonomous blockchains. These are some of the features that make Avalanche unique:


### Speed
* Uses a novel consensus protocol, developed by a team of Cornell computer scientists, and is able to permanently confirm transactions in under 1 second.

### Scalability
* Capable of 4,500 transactions per second–an order of magnitude greater than existing blockchains.

### Security
* Ensures stronger security guarantees well-above the 51% standard of other networks.

### Flexibility
* Easily create custom blockchains and decentralized apps that contain almost any arbitrary logic.

### Sustainability
* Uses energy-efficient proof-of-stake consensus algorithm rather than proof-of-work.

### Smart Contract Support
* Supports the creation of Solidity smart contracts and your favorite Ethereum tools like Remix, Metamask, Truffle, and more.

### Private and Public Blockchains
* Create your own public or private blockchains.

### Designed for Finance
* Native support for easily creating and trading digital smart assets with complex, custom rulesets.

------------------------------------------------------------------------

# Avalanche Consensus Protocol

Avalanche is a DAG-optimized consensus protocol–high-throughput, parallelizable, and simple to prune. 

------------------------------------------------------------------------

## Differences Between Avalanche C-Chain and Ethereum

### Atomic Transactions

As a network composed of multiple blockchains, Avalanche uses *atomic transactions* to move assets between chains. Coreth modifies the Ethereum block format by adding an *ExtraData* field, which contains the atomic transactions.

### Tokens on the C-Chain
## AVAX
AVAX plays the same role on the C-Chain that ETH does on the Ethereum Network. When you create or call a smart contract, you pay the transaction fee (gas cost) with AVAX. You can transfer AVAX between accounts and send AVAX to a smart contract using native EVM tools and libraries.

### Avalanche Native Tokens (ANTs)

The C-Chain supports Avalanche Native Tokens, which are created on the X-Chain using precompiled contracts. These precompiled contracts *nativeAssetCall* and *nativeAssetBalance* support the same interface for ANTs as *CALL* and *BALANCE* do for AVAX with the added parameter of *assetID* to specify the asset.

For the full documentation of precompiles for interacting with ANTs and using them in ARC-20s, see [here](https://docs.avax.network/build/references/coreth-arc20s).

### Block Timing

Blocks are produced asynchronously in Snowman Consensus, so the timing assumptions that apply to Ethereum do not apply to Coreth. To support block production in an async environment, a block is permitted to have the same timestamp as its parent. Since there is no general assumption that a block will be produced every 10 seconds, smart contracts built on Avalanche should use the block timestamp instead of the block number for their timing assumptions.

A block with a timestamp more than 10 seconds in the future will not be considered valid. However, a block with a timestamp more than 10 seconds in the past will still be considered valid as long as its timestamp is greater than or equal to the timestamp of its parent block.

-------------------------------------------------------------------------

## Subnets

Avalanche features 3 built-in blockchains: Exchange Chain (X-Chain), Platform Chain (P-Chain), and Contract Chain (C-Chain). All 3 blockchains are [validated](https://support.avax.network/en/articles/4064704-what-is-a-blockchain-validator) and secured by the [Primary Network](https://support.avax.network/en/articles/4135650-what-is-the-primary-network). The Primary Network is a special subnet, and all members of all custom subnets must also be a member of the Primary Network by staking at least 2,000 AVAX.

![An Image of the AVAX subnets.](avax_subnets.png)


