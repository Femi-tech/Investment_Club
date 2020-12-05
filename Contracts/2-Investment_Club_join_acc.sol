pragma solidity ^0.5.0;

contract FundWallet{
  address payable account_one = 0x8d6F0115E6565Bb5659c614FC590Ea26D0bC7151;
  address payable account_two = 0x97696a5d898FCd5D24e7B70185b620c9AFF8773B;
  address payable account_three = 0x1E70779bFf998F97c148B59f719762f05d3E2e6B;
  address payable account_four = 0x88Ab14EbEa0286E42aFe8D882fa80a7e829F3Fba;
  
  function withdraw(uint amount, address payable recipient) public {
    require(recipient == account_one || recipient == account_two || recipient == account_three|| recipient == account_four,
    "You don't own this account!");
    recipient.transfer(amount);
  }

  function deposit() public payable {}

  function() external payable {}
}