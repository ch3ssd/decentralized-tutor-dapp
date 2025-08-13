    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.20;

    // Security Best Practice: Import the audited and secure ERC20 standard from OpenZeppelin.
    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    /**
     * @title StudyToken
     * @dev Inherits from OpenZeppelin's secure ERC20 contract.
     */
    contract StudyToken is ERC20 {
        /**
         * @dev The constructor runs only once upon deployment.
         * It sets the token's name and symbol, and mints the initial supply.
         */
        constructor() ERC20("StudyToken", "STK") {
            // Mint 1,000,000 tokens to the wallet that deploys the contract.
            // The deployer becomes the initial holder of the entire token supply.
            _mint(msg.sender, 1000000 * 10**18);
        }
    }
