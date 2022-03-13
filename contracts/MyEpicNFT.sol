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
        console.log("This is my NFT contract. Whoah!")
    }
}


