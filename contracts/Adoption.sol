pragma solidity ^0.5.0;

contract Adoption {
    // A public variable with an array of address a fixed variable length of 16
    address[16] public adopters;
    
    // Adopt a pet 
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        
        adopters[petId] = msg.sender;
        
        return petId;
    }
    
    // Retrieve the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}