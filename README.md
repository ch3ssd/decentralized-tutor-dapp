# Decentralized Peer-to-Peer Tutoring Platform

A full-stack decentralized application (DApp) that creates a token-based economy to incentivize and reward users for providing high-quality educational help.

## How It Works

This platform allows users to post questions and attach a bounty using a custom ERC-20 token called `StudyToken` (STK). Other users can submit answers, and the original poster can mark one answer as the best. This triggers the smart contract to automatically transfer the token bounty from an escrow account to the helpful tutor.

## Tech Stack

-   **Solidity**: For smart contract development.
-   **OpenZeppelin**: For secure, standard ERC-20 token implementation.
-   **Hardhat**: For the development, testing, and deployment environment.
-   **Ethers.js**: For frontend-to-blockchain interaction.
-   **Node.js**: JavaScript runtime environment.

## Getting Started

### Prerequisites

-   [Node.js](https://nodejs.org/) (v18 or later recommended)
-   [Git](https://git-scm.com/)

### Installation & Setup

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/](https://github.com/)<YOUR-USERNAME>/decentralized-tutor-dapp.git
    cd decentralized-tutor-dapp
    ```

2.  **Install dependencies:**
    ```sh
    npm install
    ```

### Usage

1.  **Compile the contracts:**
    ```sh
    npx hardhat compile
    ```

2.  **Run tests (to be created):**
    ```sh
    npx hardhat test
    ```

3.  **Deploy to a local network:**
    ```sh
    npx hardhat run scripts/deploy.js --network localhost
    ```

## License

This project is licensed under the MIT License.