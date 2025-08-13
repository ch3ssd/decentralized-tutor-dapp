    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.20;

    // Import the interface for ERC20, which defines the functions we can call on the token contract.
    import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

    /**
     * @title PeerTutor
     * @dev The main smart contract for the decentralized Q&A platform.
     */
    contract PeerTutor {
        // --- State Variables ---

        // Security Best Practice: 'immutable' ensures this address is set once and can never be changed.
        IERC20 public immutable studyToken;

        uint256 public nextQuestionId;

        // --- Structs ---

        struct Answer {
            address answerer;
            string answerText;
        }

        struct Question {
            address asker;
            string questionText;
            uint256 bounty;
            Answer[] answers;
            address bestAnswerer; // Will be address(0) until an answer is selected.
            bool resolved;
        }

        // --- Mappings ---
        mapping(uint256 => Question) public questions;

        // --- Events ---
        event QuestionPosted(uint256 indexed questionId, address indexed asker, uint256 bounty);
        event AnswerSubmitted(uint256 indexed questionId, address indexed answerer);
        event BestAnswerSelected(uint256 indexed questionId, address indexed asker, address indexed bestAnswerer);

        // --- Constructor ---
        constructor(address _tokenAddress) {
            // Set the address of the StudyToken contract for this platform instance.
            studyToken = IERC20(_tokenAddress);
        }

        // --- Functions (to be implemented later) ---

        // function postQuestion(string memory _questionText, uint256 _bounty) external { /* ... */ }
        // function submitAnswer(uint256 _questionId, string memory _answerText) external { /* ... */ }
        // function selectBestAnswer(uint256 _questionId, address _answererAddress) external { /* ... */ }
    }
