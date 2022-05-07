pragma solidity ^0.5.5;

import "./SnowToken.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Have the SnowTokenCrowdsale contract inherit the following OpenZeppelin:
// * Crowdsale
// * MintedCrowdsale
contract SnowTokenCrowdsale is Crowdsale, MintedCrowdsale{
    constructor(
        uint256 rate,
        address payable wallet,
        SnowToken token
    )
    Crowdsale(rate,wallet,token)
    public
    {

    }    // UPDATE THE CONTRACT SIGNATURE TO ADD INHERITANCE   
}


contract Snow_Deployer {
    address public snow_token_address;
    address public snow_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
    )
    public
    {
        SnowToken token = new SnowToken(name, symbol, 0);
        snow_token_address = address(token);

        SnowTokenCrowdsale snowcrowdsale = new SnowTokenCrowdsale(1, wallet, token);
        snow_crowdsale_address = address(snowcrowdsale);

        token.addMinter(snow_crowdsale_address);
        token.renounceMinter();
    }
}

contract SnowTokenCrowdsaleDeployer {
    // Create an `address public` variable called `snow_token_address`.
    address public snow_token_address;
    // Create an `address public` variable called `snow_crowdsale_address`.
    address public snow_crowdsale_address;
    // Add the constructor.
    constructor(
        string memory name, string memory symbol, address payable wallet
    ) public {
        // Create a new instance of the SnowToken contract.
        SnowToken token = new SnowToken(name, symbol, 0);
        
        // Assign the token contract’s address to the `snow_token_address` variable.
        snow_token_address = address(token);
        // Create a new instance of the `SnowTokenCrowdsale` contract
        SnowTokenCrowdsale snow_crowdsale = new SnowTokenCrowdsale(1, wallet, token);
            
        // Aassign the `SnowTokenCrowdsale` contract’s address to the `snow_crowdsale_address` variable.
        snow_crowdsale_address = address(snow_crowdsale);
        // Set the `SnowTokenCrowdsale` contract as a minter
        token.addMinter(snow_crowdsale_address);
        
        // Have the `SnowTokenCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter(); 
    }
    contract ReEntrancyGuard {
    bool internal locked;

    modifier noReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }
}
}
