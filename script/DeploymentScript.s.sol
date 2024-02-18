// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {myContract} from "../src/SimpleStore.sol";
import "../lib/forge-std/src/Script.sol";

contract DeploymentScript is Script {
    function run() external returns (myContract) {
        // all transactions will take place in between the startBroadcast() and stopBroadcast()
        vm.startBroadcast();
        myContract myc = new myContract();
        vm.stopBroadcast();
        return myc;
    }
}
