pragma solidity ^0.5.0;

contract RedeemFund {
    
  address payable member_one = 0x01a316216fe7A4540b2D419499Ff966d1BAA4275;
  address payable member_two = 0x7A1044151676991Ba70c22510995a343fAAE7943;
  address payable member_three = 0x17280e566a1baf9ff1ea0FB82cE444A7Db245fF0;
  address payable member_four = 0xa7BfB98844281f4C6E0faDd374724fEc855dC35B;

  address public last_to_withdraw;
  uint public last_withdraw_block;
  uint public last_withdraw_amount;

  address public last_to_deposit;
  uint public last_deposit_block;
  uint public last_deposit_amount;

  uint unlock_time;

  uint fakenow = now;

  function fastforward() public {
    fakenow += 180 days;
  }

  function withdraw(uint amount) public {
    require(unlock_time < fakenow, "Account is locked!");
    require(msg.sender == member_one || msg.sender == member_two|| msg.sender == member_three|| msg.sender == member_four, "You are not member of this club");

    if (last_to_withdraw != msg.sender) {
      last_to_withdraw = msg.sender;
    }

    last_withdraw_block = block.number;
    last_withdraw_amount = amount;

    unlock_time = fakenow += 180 days;

    msg.sender.transfer(amount);
  }

  function deposit() public payable {

    if (last_to_deposit != msg.sender) {
      last_to_deposit = msg.sender;
    }

    last_deposit_block = block.number;
    last_deposit_amount = msg.value;
  }

  function() external payable {}
}
