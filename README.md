# 💸 Decentralized Blockchain Transaction System

A secure, peer-to-peer blockchain-based money transaction system built using **Python (Flask)** and **Solidity**, designed to eliminate intermediaries, reduce transaction costs, and enhance transparency. This project was developed as part of the Bachelor of Engineering curriculum at Don Bosco Institute of Technology, University of Mumbai.

---

## 📌 Project Overview

Traditional banking systems suffer from inefficiencies, high fees, and centralization risks. This project introduces a decentralized alternative using blockchain technology to:

- Enable direct peer-to-peer (P2P) transactions
- Ensure tamper-proof record keeping via cryptographic hashing
- Automate operations using smart contracts
- Provide a user-friendly interface for seamless interaction

---

## 🧠 Features

- 🔐 **Secure Transactions** using SHA-256 and Elliptic Curve cryptography
- ⛓️ **Custom Blockchain** with Proof-of-Work mining
- 📜 **Smart Contract** for sending Ether and verifying blocks
- 📊 **Blockchain Explorer** to view block data and contract balance
- ⚙️ **Difficulty Adjustment** by contract owner
- 📱 **Web Interface** built with Flask, HTML, CSS, and JS

---

## 🏗️ Technologies Used

| Component     | Technology/Tool                  | Purpose                                      |
|--------------|----------------------------------|----------------------------------------------|
| Backend       | Python (Flask)                   | Transaction logic and web server             |
| Blockchain    | Custom Python implementation     | Mining, hashing, and block chaining          |
| Frontend      | HTML, CSS, JavaScript            | User interface                               |
| Cryptography  | SHA-256, Elliptic-Curve          | Wallet and transaction security              |
| Consensus     | Proof-of-Work (PoW)              | Block validation                             |
| Smart Contract| Solidity                         | On-chain transaction and block management    |
| Database      | In-memory lists (Python)         | Temporary transaction storage                |

---

## 🧪 Smart Contract

The Solidity contract `ImprovedDecentralizedBlockchain.sol` includes:

- `sendMoney()` — Mines a block and transfers Ether
- `verifyBlock()` — Validates block integrity
- `updateDifficulty()` — Adjusts mining difficulty
- `getBlock()` — Retrieves full block data
- `getContractBalance()` — Returns contract's Ether balance
- `receive()` — Accepts plain Ether transfers

🔗 [View Solidity Contract](contracts/decentralized.sol)

---

## 🖼️ Screenshots

### 🔧 Remix Deployment Interface
![Deploy Interface](assets/deploy_interface.png)

### 💬 Transaction Input & Blockchain Output
![Block Data](assets/block_data.png)

### ✅ Block Verification & Contract State
![Verify Block](assets/verify_block.png)

---

## 🔄 Workflow
```text
LOGIN → INPUT FROM USER → AUTHORIZATION CHECK
→ TRANSACTION BEGINS → BLOCK CREATION → TRANSACTION ENDS


```text
LOGIN → INPUT FROM USER → AUTHORIZATION CHECK
→ TRANSACTION BEGINS → BLOCK CREATION → TRANSACTION ENDS
