const HDWalletProvider = require('@truffle/hdwallet-provider');

module.exports = {
  networks: {
    sepolia: {
      provider: () => new HDWalletProvider('d57e9cd1645c6f30d7136e0eee62f27cc53bbf373c9d2dc5f8ce5fae018f85d8', 'https://sepolia.infura.io/v3/7c62726a4ae148569084adad5789e83e'),
      network_id: 11155111, // Replace with the actual network id of sepoliA
      gas: 30000000, // Adjust gas limit based on the network
      gasPrice: 22324176755, // Adjust gas price based on the network
    },
  },
  compilers: {
    solc: {
      version: "0.8.0", // or the version compatible with your contract
    },
  },
};
