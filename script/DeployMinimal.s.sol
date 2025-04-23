// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.28;

// import {Script, console} from "forge-std/Script.sol";
// import {MinimalAccount} from "../src/ethereum/MinimalAccount.sol";
// import {HelperConfig} from "./HelperConfig.s.sol";

// contract DeployMinimal is Script{
//     function run() public {
//         (HelperConfig helperConfig, MinimalAccount minimalAccount) = deployMinimalAccount();

//         console.log("MinimalAccount deployed at:", address(minimalAccount));
//         console.log("Owner:", minimalAccount.owner());
//     }

//     function deployMinimalAccount() public returns(HelperConfig , MinimalAccount){
//         HelperConfig helperConfig= new HelperConfig();
//         HelperConfig.NetworkConfig memory config= helperConfig.getConfig();

//         vm.startBroadcast(config.account);
//         MinimalAccount minimalAccount = new MinimalAccount(config.entryPoint);
//         minimalAccount.transferOwnership(config.account);
        
//         console.log("MinimalAccount deployed Owner: ", address(minimalAccount) ," ",minimalAccount.owner());
//         vm.stopBroadcast();

//         return (helperConfig , minimalAccount);
//     }
//  }