pragma solidity ^0.5.0;


/**
 * 
 * The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;
  address public secondOwner;

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  /**
    The Ownable constructor sets the original `owner` of the contract to the sender account.
   */
  constructor() public {
    owner = msg.sender;
  }

  /**
   Throws if called by any account other than the owner.
   */
 modifier bothOwner() {
        require(msg.sender == owner || msg.sender == secondOwner);
        _;
    
  }
 
function changeSecOwner(address targetAddress) public bothOwner {
        require(targetAddress != address(0));
        secondOwner = targetAddress;
    }

  /**
    Allows the current owner to transfer control of the contract to a newOwner.
  
   */
  function transferOwnership(address newOwner) public bothOwner {
    require(newOwner != address(0));
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }

}