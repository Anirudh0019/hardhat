// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FileHashStorage {
    mapping(string => string) private fileHashes;
    string[] private filenames;

    function storeHash(string memory fileName, string memory fileHash) public {
        fileHashes[fileName] = fileHash;
        filenames.push(fileName);
    }

    function getHash(string memory fileName) public view returns (string memory) {
        return fileHashes[fileName];
    }

    function getAllFilenames() public view returns (string[] memory) {
        return filenames;
    }
}