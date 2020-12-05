pragma solidity ^0.5.0;

// lvl 1: equal split
contract InvestmentClubSplit{
   address payable Investor_one; 
    address payable Investor_two; 
    address payable Investor_three;
    address payable Investor_four;

    constructor(address payable _one, address payable _two, address payable _three, address payable _four) public {
        Investor_one = _one;
        Investor_two = _two;
        Investor_three = _three;
        Investor_four = _four;
    }


   function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint total;
        uint amount = msg.value /4; 
        
         // @TODO: Calculate and transfer the distribution percentage
        amount = points * 25;
        total += points;
        Investor_one.transfer(amount);
        
        amount = points * 25;
        total += points;
        Investor_two.transfer(amount);
        
        amount = points * 25;
        total += points;
        Investor_three.transfer(amount);
        
        amount = points * 25;
        total += points;
        Investor_four.transfer(amount);
        
        // @TODO: Transfer the amount to each employee
        Investor_one.transfer(amount);
        Investor_two.transfer(amount);
        Investor_three.transfer(amount);
        Investor_four.transfer(amount);

     
        // @TODO: Investor with best idea gets the remaining wei
       
        Investor_one.transfer(msg.value - total);
    }

    

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        deposit();
    }
}



  
 

        
       