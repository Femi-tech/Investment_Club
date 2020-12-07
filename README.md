# Investment_Club
![IVMTC](Images/Investment-club.jpg)

Contributors: Phara Dorisca (https://github.com/pdorisca), Khulika Rojanakanoksak (https://github.com/Khulikaroj), Femi Aina (https://github.com/Femi-tech), Ogo Nwanyanwu (https://github.com/Ogo1024)

#### The goal of this project is to create an investment club leveraging python and solidity tech stacks for financial automation

### Project functionality
Support and track funding of investment club by multiple users
Track and verify security or strategy selection of each user
Account for performance of individual security/strategy selections
Account for overall performance of investment club
Reference investment club rules to allocate capital and confirm transactions efficiently
Reference investment club rules to disburse funds accurately to members

### Project Structure

The whole fund structure can be setup with the Nine Solidity contracts:
FundOperator.sol 
FundJointAccount.sol
ContractOwnership.sol 
Voting.sol
Mint.sol
CrowdSale.sol
SellToken.sol
TokenPrice.sol
MemberInfo.sol 

## Dependencies:
### Security selection
Dow Jones 30 Index: AXP, AMGN, AAPL, BA, CAT, CSCO, CVX, GS, HD, HON, IBM, INTC, JNJ, KO, JPM, MCD, MMM, MRK, MSFT, NKE, PG, TRV, UNH, CRM, VZ, V, WBA, WMT, DIS, DOW
### Strategy selection

### Data for performance tracking
Use off-chain data from Yahoo finance by running python shell. This would allow member to track latest value of his/her investment share in form of an ERC20 fund token. Also, historical return could be shown from 1D to 1M horizon. Member's information and fund token balance also store in form of ERC721 toke


### Qualifications for investment club
Minimum investment (Onboarding fee, monthly contribution,equal share)
Close-end fund
Lock-up period: 6M
To make members more active, one might need to require each member to submit an investment idea before he/she can put money into the fund.
Allocation for each strategy-equal. Best investment idea will get an extra fund to invest in, determined by voting, veto.
Holding time of selection is 1 month rebalancing period.
Can be based on members’ common investment philosophy
Based on share in the fund x overall return on the fund


## Benefits of having investment club on Blockchain
Investment club, a small-scale mutual fund which allows you to have larger transactions with lower transaction fee and no brokerage fee. 
Decentralized exchanges in a trust-less manner
More efficiency and transparency
Trackable transactions- no need to have custodian
Trackable  investment ideas- to improve investment decisions in the future.
