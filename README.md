# Investment Club
![IVMTC](Images/Investment-club.jpg)

### Contributors: 

Phara Dorisca (https://github.com/pdorisca), Khulika Rojanakanoksak (https://github.com/Khulikaroj), Femi Aina (https://github.com/Femi-tech), Ogo Nwanyanwu (https://github.com/Ogo1024)

---

### The goal of this project is to create an investment club leveraging python and solidity tech stacks for financial automation

---

## Project functionality

* Support and track funding of investment club by multiple users.

* Track and verify security or strategy selection of each user.

* Account for performance of individual security/strategy selections.

* Account for overall performance of investment club.

* Reference investment club rules to allocate capital and confirm transactions efficiently.

* Reference investment club rules to disburse funds accurately to members.

---

## Contract Structure

The whole fund structure can be setup with the 7 Solidity contracts:

    Investors.sol

    Investment_Club_join_acc.sol

    Contract_Ownership.sol

    MembersVote.sol

    SellToken.sol

    InvestmentMintableToken.sol

    MemberInfo.sol
---

## Dependencies:
### Security selection
Dow Jones 30 Index: AXP, AMGN, AAPL, BA, CAT, CSCO, CVX, GS, HD, HON, IBM, INTC, JNJ, KO, JPM, MCD, MMM, MRK, MSFT, NKE, PG, TRV, UNH, CRM, VZ, V, WBA, WMT, DIS, DOW

### Data for performance tracking
Use off-chain data from Yahoo finance by running python shell, `TokenPrice.py`. This would allow member to track latest value of his/her investment share in form of an ERC20 fund token. Also, historical return could be shown from 1D to 1M horizon. Member's information and fund token balance also store in form of ERC721 token

---

## Qualifications for investment club

* Minimum investment sould cover onboarding fee, and monthly contribution which would be splited in inequal share.

* Close-end fund

* Lock-up period: 6M

* To make members more active, one might need to require each member to submit an investment idea before he/she can put money into the fund.

* Holding time of selection is 1 month rebalancing period.

* Can be based on members’ common investment philosophy

---

## Benefits of having investment club on Blockchain

* From a private and automate Investment club  which allows club members to gain benefit from being able to enter market with larger transactions with lower transaction fee but without brokerage fee. 

* Decentralized exchanges in a trust-less manner

* More efficiency and transparency

* Trackable transactions- no need to have custodian

* Trackable  investment ideas- to improve investment decisions in the future.
