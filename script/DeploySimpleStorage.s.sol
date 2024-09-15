// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "./../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage, address) {
        vm.startBroadcast();
        SimpleStorage sS = new SimpleStorage();
        vm.stopBroadcast();
        return (sS, address(sS));
    }
}
