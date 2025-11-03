// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Blockchain is ReentrancyGuard, Ownable {
    struct Block {
        uint256 timestamp;
        uint256 nonce;
        uint256 difficulty;
        uint256 amount;
        address miner;
        bytes32 blockHash;
        bytes32 previousHash;
    }

    Block[] public blockchain;
    uint256 public difficulty = 1e18; // Initial difficulty
    uint256 public lastDifficultyUpdate;

    event BlockAdded(
        uint256 indexed index,
        bytes32 blockHash,
        address indexed miner,
        uint256 amount
    );

    constructor() Ownable(msg.sender) {
        // Create Genesis Block
        blockchain.push(
            Block({
                timestamp: block.timestamp,
                nonce: 0,
                difficulty: difficulty,
                amount: 0,
                miner: address(0),
                blockHash: keccak256(abi.encodePacked("Genesis Block")),
                previousHash: bytes32(0)
            })
        );
    }

    function calculateHash(
        uint256 _index,
        uint256 _timestamp,
        uint256 _nonce,
        uint256 _difficulty,
        uint256 _amount,
        address _miner
    ) public view returns (bytes32) {
        bytes32 previousHash = (_index == 0)
            ? bytes32(0)
            : blockchain[_index - 1].blockHash;

        return keccak256(
            abi.encodePacked(
                previousHash,
                _timestamp,
                _nonce,
                _difficulty,
                _amount,
                _miner
            )
        );
    }

    function verifyBlock(
        uint256 _index,
        uint256 _timestamp,
        uint256 _nonce,
        uint256 _difficulty,
        uint256 _amount,
        address _miner,
        bytes32 _expectedHash
    ) public view returns (bool) {
        require(_index < blockchain.length, "Invalid index");

        bytes32 calculatedHash = calculateHash(
            _index,
            _timestamp,
            _nonce,
            _difficulty,
            _amount,
            _miner
        );

        return calculatedHash == _expectedHash;
    }

    function addBlock(uint256 _nonce, uint256 _amount)
        external
        payable
        nonReentrant
    {
        require(msg.value >= _amount, "Insufficient payment");

        uint256 currentIndex = blockchain.length;
        uint256 currentTimestamp = block.timestamp;

        bytes32 calculatedHash = calculateHash(
            currentIndex,
            currentTimestamp,
            _nonce,
            difficulty,
            _amount,
            msg.sender
        );

        // Proof-of-Work check (simplified)
        require(
            uint256(keccak256(abi.encodePacked(calculatedHash, _nonce))) <
                difficulty,
            "Invalid nonce"
        );

        // Reward miner
        sendMoney(payable(msg.sender), _amount);

        // Add block to chain
        blockchain.push(
            Block({
                timestamp: currentTimestamp,
                nonce: _nonce,
                difficulty: difficulty,
                amount: _amount,
                miner: msg.sender,
                blockHash: calculatedHash,
                previousHash: blockchain[currentIndex - 1].blockHash
            })
        );

        emit BlockAdded(currentIndex, calculatedHash, msg.sender, _amount);
    }

    function sendMoney(address payable _recipient, uint256 _amount) internal {
        require(address(this).balance >= _amount, "Insufficient balance");

        (bool success, ) = _recipient.call{value: _amount}("");
        require(success, "Transfer failed");
    }

    function updateDifficulty(uint256 _newDifficulty) external onlyOwner {
        require(
            block.timestamp >= lastDifficultyUpdate + 1 days,
            "Can only update once per day"
        );
        difficulty = _newDifficulty;
        lastDifficultyUpdate = block.timestamp;
    }

    function getBlockCount() public view returns (uint256) {
        return blockchain.length;
    }

    receive() external payable {}
}