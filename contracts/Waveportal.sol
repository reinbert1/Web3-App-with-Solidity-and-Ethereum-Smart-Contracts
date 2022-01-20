// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] senders;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        senders.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getTotalSenders() public view returns (uint256) {
        console.log("We have %d total senders!", senders.length);
        return senders.length;
    }

    function PrintSendersAddresses() public {
        console.log("The senders are: ");
        for(uint i=0; i<senders.length; i++) {
            console.log("Sender %d: %s", i,senders[i]);
        }
    }
}