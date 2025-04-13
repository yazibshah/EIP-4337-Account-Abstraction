# 🔐 MinimalAccount – ERC-4337 Account Abstraction Demo

A minimal smart contract wallet implementing [ERC-4337](https://eips.ethereum.org/EIPS/eip-4337) Account Abstraction using the [account-abstraction SDK](https://github.com/eth-infinitism/account-abstraction). This repo showcases how to deploy, sign, and execute `UserOperation`s from a smart contract account.

---

## 📁 Project Structure

```
├── src/
│   └── ethereum/
│       └── MinimalAccount.sol              # Minimal ECDSA wallet contract
├── script/
│   ├── DeployMinimal.s.sol                 # Deployment script
│   ├── SendPackedUserOp.s.sol              # UserOperation builder & signer
│   └── HelperConfig.s.sol                  # Network configs (RPC, keys, EntryPoint)
├── test/
│   └── MinimalAccountTest.t.sol            # Foundry test suite
├── lib/
│   └── account-abstraction/                # ERC-4337 interfaces/contracts
├── foundry.toml                            # Foundry config
└── README.md                               # You are here 🚀
```

---

## 🔧 Setup Instructions

1. **Install dependencies:**

```bash
forge install eth-infinitism/account-abstraction
forge install OpenZeppelin/openzeppelin-contracts
forge install foundry-rs/forge-std
```

2. **Compile contracts:**

```bash
forge build
```

3. **Run tests:**

```bash
forge test -vv
```

---

## 🧠 How It Works

### 🧱 MinimalAccount.sol

- Implements `IAccount`, `IERC1271` (for signature validation)  
- Verifies `UserOperation` using ECDSA signature of the owner  
- Allows only the EntryPoint or owner to interact  
- Supports `execute(address dest, uint256 value, bytes calldata)` for calls  

### ⚙️ Scripts

- `DeployMinimal.s.sol`: Deploys `MinimalAccount` with the EntryPoint  
- `SendPackedUserOp.s.sol`:  
  - Creates a packed `UserOperation`  
  - Signs it with owner's private key  
  - Prepares it to be sent to a Bundler  

---

## ✅ Test Highlights

- Ensures only the owner can execute  
- Verifies correct signature logic  
- Tests `validateUserOp()` behavior  
- Simulates `UserOperation` gas and nonce handling  

---

## 🧩 ERC-4337 Concepts Used

- **EntryPoint Contract** – Gateway for validating and executing `UserOperation`s  
- **UserOperation Struct** – A flexible way to represent account actions  
- **Smart Contract Wallet** – No EOA required; identity is a contract  

---

## 📚 Resources

- [ERC-4337 Spec](https://eips.ethereum.org/EIPS/eip-4337)  
- [account-abstraction SDK](https://github.com/eth-infinitism/account-abstraction)  
- [Foundry Docs](https://book.getfoundry.sh/)  
- [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts)  

---

## 👤 Author

**Yazib**  
Blockchain Developer
Blockchain | Smart Contracts | ERC4337 | Foundry | Solidity  

---

## 🪪 License

MIT © 2025 Yazib

