pragma solidity ^0.5.17;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/drafts/Counters.sol";

contract MemberRegistry is ERC721Full {

    constructor() ERC721Full("MemberToken", "MEM") public { }

    using Counters for Counters.Counter;
    Counters.Counter token_ids;

    struct Memwork {
        string name;
        string member_address;
        uint account_balance;
    }

    mapping(uint => Memwork) public member_info;

    event Updatebalance(uint token_id, uint investment_value, string report_uri);

    function registerMember(address owner, string memory name, string memory member_address, uint initial_balance, string memory token_uri) public returns(uint) {
        token_ids.increment();
        uint token_id = token_ids.current();

        _mint(owner, token_id);
        _setTokenURI(token_id, token_uri);

        member_info[token_id] = Memwork(name, member_address, initial_balance);

        return token_id;
    }

    function newBalancel(uint token_id, uint new_value, string memory report_uri) public returns(uint) {
        member_info[token_id].account_balance = new_value;

        emit Updatebalance(token_id, new_value, report_uri);

        return member_info[token_id].account_balance;
    }
}
