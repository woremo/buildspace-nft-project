// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.1;

//import OpenZeppelin Contracts
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";


//inherit imported contracts
contract MyEpicNFT is ERC721URIStorage{
    //OpenZeppelin gives ability to keep track of tokenIds.
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    //We need to pass the name of our NFTs token and its symbol
    constructor() ERC721 ("SquareNFT", "SQUARE"){
        console.log("This is my NFT contract. Whoah!");
    }

    //A function our user will hit ot get their NFT
    function makeAnEpicNFT() public{
        //get the current tokenId, starts at 0
        uint256 newItemId = _tokenIds.current();

        // Actually mint the NFT to the sender using msg.sender.
        _safeMint(msg.sender, newItemId);

        //Set the NFTs data
        _setTokenURI(newItemId, "data:application/json;base64,ewogICAgIm5hbWUiOiDigJxFcGljTG9yZEhhbWJ1cmdlcuKAnSwKICAgICJkZXNjcmlwdGlvbiI6IOKAnEFuIE5GVCBmcm9tIHRoZSBoaWdobHkgYWNjbGFpbWVkIHNxdWFyZSBjb2xsZWN0aW9u4oCdLAogICAgImltYWdlIjogImRhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIQnlaWE5sY25abFFYTndaV04wVW1GMGFXODlJbmhOYVc1WlRXbHVJRzFsWlhRaUlIWnBaWGRDYjNnOUlqQWdNQ0F6TlRBZ016VXdJajRLSUNBZ0lEeHpkSGxzWlQ0dVltRnpaU0I3SUdacGJHdzZJSGRvYVhSbE95Qm1iMjUwTFdaaGJXbHNlVG9nYzJWeWFXWTdJR1p2Ym5RdGMybDZaVG9nTVRSd2VEc2dmVHd2YzNSNWJHVStDaUFnSUNBOGNtVmpkQ0IzYVdSMGFEMGlNVEF3SlNJZ2FHVnBaMmgwUFNJeE1EQWxJaUJtYVd4c1BTSmliR0ZqYXlJZ0x6NEtJQ0FnSUR4MFpYaDBJSGc5SWpVd0pTSWdlVDBpTlRBbElpQmpiR0Z6Y3owaVltRnpaU0lnWkc5dGFXNWhiblF0WW1GelpXeHBibVU5SW0xcFpHUnNaU0lnZEdWNGRDMWhibU5vYjNJOUltMXBaR1JzWlNJK1JYQnBZMHh2Y21SSVlXMWlkWEpuWlhJOEwzUmxlSFErQ2p3dmMzWm5QZz09Igp9");

        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        // Increment the counter for when the next NFT is minted
        _tokenIds.increment();
    }
}


