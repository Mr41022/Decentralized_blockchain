# 💸 Decentralized Blockchain Transaction System
# 💸 Decentralized Blockchain Transaction System

A secure, peer-to-peer blockchain-based money transaction system built using **Python (Flask)** and **Solidity**, designed to eliminate intermediaries, reduce transaction costs, and enhance transparency. Developed as part of the Bachelor of Engineering curriculum at Don Bosco Institute of Technology, University of Mumbai.

---

## 📌 Project Overview

Traditional banking systems suffer from inefficiencies, high fees, and centralization risks. This project introduces a decentralized alternative using blockchain technology to:

- Enable direct peer-to-peer (P2P) transactions  
- Ensure tamper-proof record keeping via cryptographic hashing  
- Automate operations using smart contracts  
- Provide a user-friendly interface for seamless interaction  

---

## 🧠 Features

- 🔐 Secure Transactions using SHA-256 and Elliptic Curve cryptography  
- ⛓️ Custom Blockchain with Proof-of-Work mining  
- 📜 Smart Contract for sending Ether and verifying blocks  
- 📊 Blockchain Explorer to view block data and contract balance  
- ⚙️ Difficulty Adjustment by contract owner  
- 📱 Web Interface built with Flask, HTML, CSS, and JS  

---

## 🏗️ System Architecture

The system follows a decentralized architecture based on Distributed Ledger Technology (DLT). Here's how it works:

1. **State Tk (Sender)**: A user initiates a transaction using their private key.  
2. **Transaction Creation & Validation**: The transaction is digitally signed and validated.  
3. **Block Creation & Validation**: A new block is created containing the transaction, hashed using SHA-256, and validated via Proof-of-Work.  
4. **Block Broadcasting & Confirmation**: The block is broadcasted to the network and confirmed by multiple nodes.  
5. **State Tk+1 (Receiver)**: The receiver obtains the transaction, now immutably recorded on the blockchain.  

### 🧩 Architecture Diagram
![System Architecture](assets/system_architecture.png)

---

## 🔄 Workflow Diagram

```text
LOGIN → INPUT FROM USER → AUTHORIZATION CHECK
→ TRANSACTION BEGINS → BLOCK CREATION → TRANSACTION ENDS
```

### 🔁 Flowchart
![Workflow](assets/workflow_diagram.png)

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

## 📸 Screenshots

### 🔧 Remix Deployment Interface
![Deploy Interface](assets/deploy_interface.png)

### 💬 Transaction Input & Blockchain Output
![Block Data](assets/block_data.png)

### ✅ Block Verification & Contract State
![Verify Block](assets/verify_block.png)

### 📊 GETBLOCK Function Output
![GETBLOCK Output](assets/getblock_output.png)

---

## 🚀 How to Run

### 🧪 Backend Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/DecentralizedBlockchain.git
   cd DecentralizedBlockchain
   ```

2. Run the Flask backend:
   ```bash
   python app.py
   ```

3. Open `localhost:5000` in your browser to interact with the web interface.

### 🧪 Smart Contract Deployment

1. Open [Remix IDE](https://remix.ethereum.org)  
2. Paste the contents of `contracts/decentralized.sol`  
3. Set environment to **Remix VM (Cancun)**  
4. Deploy the contract and interact using:
   - `sendMoney()`  
   - `verifyBlock()`  
   - `getBlock()`  
   - `updateDifficulty()`  

---

## 📈 Future Enhancements

- 📱 Mobile App with QR-based transactions  
- 🔐 Multi-signature wallets and ZKPs  
- 🌐 Cross-chain compatibility (Polkadot, Cosmos)  
- ⚡ Layer-2 scalability (e.g., Plasma, Lightning)  
- 🧾 Regulatory compliance (KYC/AML)  
- 🧪 Formal verification of smart contracts  

---

## 🎓 Authors

- **Mitali Mihir Rananavare** — [LinkedIn](https://www.linkedin.com/in/mitali-rananavare)  
- **Vaibhav Kumar Sinha**

Supervised by **Prof. Prasad Padalkar**, Don Bosco Institute of Technology

---

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
