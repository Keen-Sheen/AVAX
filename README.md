# AVAX

[![My GitHub Stats](https://github-readme-stats-one-bice.vercel.app/api?username=Keen-Sheen&show_icons=true&theme=dark&role=OWNER,ORGANIZATION_MEMBER,COLLABORATOR&include_all_commits=true&count_private=true)](https://github.com/billy1624#gh-dark-mode-only)

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

## Staking on Avalanche

Staking is a natural mechanism for participation in an open network and offers a direct economic argument: the probability of success of an attack is directly proportional to a well-defined monetary cost function. Staking nodes are economically motivated to act virtuously and avoid behavior that might hurt the value of their stake.

A node wishing to enter the network can freely do so by first putting up and locking a stake that cannot be moved for a defined period of time determined by the token holder. Once accepted, a stake cannot be reverted or unlocked to ensure that nodes share the same, stable view of the network. And better yet, for both the token holder and the network, is that this stake does not incur any additional upkeep costs.

Unlike other systems that also propose a proof-of-stake (PoS) mechanism, AVAX does not use slashing, and therefore, all stake is returned when the staking period expires.

Slashing is a protocol-driven action where a validator is forced to forfeit a proportion of its staked tokens because of behavior the network reads as dishonest or malfunctioning. These penalties are imposed without any human intervention and can be carried out for something as honest as a power failure taking a node offline.

There’s been significant debate around slashing, but the reality is that it makes staking unpredictable (which could discourage participation) and is more effective at punishing innocent bugs in client software or hardware than any security assurances.

Avalanche believes in building a “calm technology” that is powerful, but predictable. A technology engineered for the challenges of the real-world, rather than overconfident in its adherence to perfect conditions.

With Avalanche, staked tokens are never at risk of a faulty network crackdown.

--------------------------------------------------------------------------

## Staking Parameters on Avalanche
When a validator is done validating the [Primary Network](https://support.avax.network/en/articles/4135650-what-is-the-primary-network), it receives back the AVAX tokens it staked. It may receive a reward for helping to secure the network. A validator only receives a [validation reward](https://support.avax.network/en/articles/4587396-what-are-validator-staking-rewards) if it is sufficiently responsive and correct during the time it validates. Read the Avalanche token [whitepaper](https://www.avalabs.org/whitepapers) to learn more about AVAX and the mechanics of staking.


*Staking rewards are sent to your wallet address at the end of the staking term as long as all of these parameters are met*.

* The minimum amount that a validator must stake is 2,000 AVAX

* The minimum amount that a delegator must delegate is 25 AVAX

* The minimum amount of time one can stake funds for validation is 2 weeks

* The maximum amount of time one can stake funds for validation is 1 year

* The minimum amount of time one can stake funds for delegation is 2 weeks

* The maximum amount of time one can stake funds for delegation is 1 year

* The minimum delegation fee rate is 2%

* The maximum weight of a validator (their own stake + stake delegated to them) is the minimum of 3 million AVAX and 5 times the amount the validator staked. For example, if you staked 2,000 AVAX to become a validator, only 8000 AVAX can be delegated to your node total (not per delegator)


A validator will receive a staking reward if they are online and response for more than 80% of their validation period, as measured by a majority of validators, weighted by stake. You should aim for your validator be online and responsive 100% of the time.

You can call API method `info.uptime` on your node to learn its weighted uptime and what percentage of the network currently thinks your node has an uptime high enough to reveive a staking reward. [See here](https://docs.avax.network/apis/avalanchego/apis/info#infouptime). You can get another opinion on your node's uptime from Avalanche's [Validator Health dashboard](https://stats.avax.network/dashboard/validator-health-check/). If your reported uptime is not close to 100%, there may be something wrong with your node setup, which may jeopardize your staking reward. If this is the case, [please see here](https://docs.avax.network/nodes/validate/staking/#why-is-my-uptime-low) or contact us on [Discord](https://discord.com/invite/RwXY7P6) so we can help you find the issue. Note that only checking the uptime of your validator as measured by non-staking nodes, validators with small stake, or validators that have not been online for the full duration of your validation period can provide an inaccurate view of your node's true uptime.


---------------------------------------------------------------------------

## Subnets

Avalanche features 3 built-in blockchains: Exchange Chain (X-Chain), Platform Chain (P-Chain), and Contract Chain (C-Chain). All 3 blockchains are [validated](https://support.avax.network/en/articles/4064704-what-is-a-blockchain-validator) and secured by the [Primary Network](https://support.avax.network/en/articles/4135650-what-is-the-primary-network). The Primary Network is a special subnet, and all members of all custom subnets must also be a member of the Primary Network by staking at least 2,000 AVAX.

![An Image of the AVAX subnets.](avax_subnets.png)

