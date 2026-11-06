
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

uint256 public candidateCount;
function addCandidate(string memory _name) public { candidateCount = candidateCount + 1;
candidates[candidateCount] = Candidate(_name, 0);

}
     }

 
