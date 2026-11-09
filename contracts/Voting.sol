
 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8.20;

 contract Voting {

     address public administrator;

     constructor() {

     
         administrator = msg.sender;
     }
     struct Candidate {
    string name;
    uint256 voteCount;
}

mapping(uint256 => Candidate) public candidates;
  mapping(address => bool) public hasVoted;

uint256 public candidateCount;

function addCandidate(string memory _name) public {
    require(msg.sender == administrator, "Only administrator");

    for (uint256 i = 1; i <= candidateCount; i++) {
        require(
            keccak256(bytes(candidates[i].name)) != keccak256(bytes(_name)),
            "Candidate already exists"
        );
    }

    candidateCount = candidateCount + 1;
    candidates[candidateCount] = Candidate(_name, 0);
}

function vote(uint256 _candidateId) public {
    require(_candidateId > 0 && _candidateId <= candidateCount, "Invalid candidate");
    require(!hasVoted[msg.sender], "Already voted");


candidates[_candidateId].voteCount += 1;
hasVoted[msg.sender] = true;


}

}
     

 
