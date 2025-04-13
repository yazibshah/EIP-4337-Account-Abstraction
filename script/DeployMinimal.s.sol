// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Script, console} from "forge-std/Script.sol";
import {MinimalAccount} from "../src/ethereum/MinimalAccount.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployMinimal is Script{
    function run() public {

    }

    function deployMinimalAccount() public returns(HelperConfig , MinimalAccount){
        HelperConfig helperConfig= new HelperConfig();
        HelperConfig.NetworkConfig memory config= helperConfig.getConfig();

        vm.startBroadcast(config.account);
        MinimalAccount minimalAccount = new MinimalAccount(config.entryPoint);
        minimalAccount.transferOwnership(config.account);
        // console.log("MSG SENDER: ", msg.sender);
        // console.log("Config Account: ", config.account);
        // console.log("Address This: ", address(this));
        console.log("MinimalAccount deployed Owner: ", minimalAccount.owner());
        vm.stopBroadcast();

        return (helperConfig , minimalAccount);
    }
 }