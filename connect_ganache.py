import json

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
contract_address = "0x76Bc6EDF9FA75091C952aed0f9dA19dB0b01ff57"

print("Contract address:", contract_address)


# Load the smart contract ABI
with open("VotingABI.json", "r") as file:
    contract_abi = json.load(file)

# Connect to the deployed smart contract
contract = web3.eth.contract(
    address=web3.to_checksum_address(contract_address),
    abi=contract_abi
)

# Get the number of registered candidates
candidate_count = contract.functions.candidateCount().call()

print("Number of candidates:", candidate_count)

# Display registered candidates and their votes
for candidate_id in range(1, candidate_count + 1):
    candidate = contract.functions.candidates(candidate_id).call()

    print("Candidate:", candidate[0])
    print("Votes:", candidate[1])
