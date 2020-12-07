pragma solidity ^0.5.0;

import "https://github.com/ScJa/ercfund/blob/master/contracts/open-zeppelin/token/ERC20/StandardToken.sol";
import "https://github.com/Femi-tech/Investment_Club/blob/master/Contracts/3-Contract_Ownership.sol";
import "https://github.com/Femi-tech/Investment_Club/blob/master/Contracts/4-MembersVote.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";


contract InvestmentMintableToken is StandardToken, Contract_Ownership, MembersVote, ERC20, ERC20Detailed, ERC20Mintable {
  event Mint(address indexed to, uint256 amount);
  event MintFinished();

  bool public mintingFinished = false;


  modifier canMint() {
    require(!mintingFinished);
    require (proposal.approved = true);
  }

  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) { //Function to mint tokens
    totalSupply_ = totalSupply_.add(_amount);
    balances[_to] = balances[_to].add(_amount);
    Mint(_to, _amount);
    Transfer(address(0), _to, _amount);
    return true;
  }

  function finishMinting() onlyOwner canMint public returns (bool) { //Function to stop minting new tokens
    mintingFinished = true;
    MintFinished();
    return true;
  }
}
