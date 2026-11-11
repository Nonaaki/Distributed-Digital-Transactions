
from web3 import Web3

# Connect Python to Ganache
ganache_url = "http://127.0.0.1:8545"
web3 = Web3(Web3.HTTPProvider(ganache_url))

# Check the connection
if web3.is_connected():
    print("Connected to Ganache!")
else:
    print("Connection failed!")

# Smart contract address
contract_address = "0xB06729cF07046cc73167339DbC42de007AA425fB"

print("Contract address:", contract_address)
