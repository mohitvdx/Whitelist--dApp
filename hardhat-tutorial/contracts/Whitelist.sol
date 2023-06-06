// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Whitelist {

    uint8 public maxWhitelistedAddresses;

    mapping (address => bool) public whitelistedAddresses;

    uint public numAddressesWhitelisted;
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist(address _address) public {
        require(whitelistedAddresses[msg.sender], "You aren't whitelisted");
        require(!whitelistedAddresses[_address], "Address is already whitelisted");
        whitelistedAddresses[_address] = true;

        numAddressesWhitelisted +=1 ;
    }
}