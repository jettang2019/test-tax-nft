// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TestTaxNft is ERC721, Ownable {
    // 使用mapping来存储每个tokenId对应的URI
    mapping(uint256 => string) private _tokenURIs;

    // 合约初始化时指定代币名称和符号
    constructor(string memory name, string memory symbol) ERC721(name, symbol) Ownable(msg.sender) {
    }

    // 铸造NFT并设置其tokenURI
    function mint(address to, uint256 tokenId, string memory _tokenURI) public {
        _mint(to, tokenId);
        _setTokenURI(tokenId, _tokenURI);  // 设置token的URI
    }

    // 内部函数：设置代币的URI
    function _setTokenURI(uint256 tokenId, string memory _tokenURI) internal {
        _tokenURIs[tokenId] = _tokenURI;
    }

    // 覆盖tokenURI函数，返回每个tokenId的URI
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_ownerOf(tokenId) != address(0), "ERC721Metadata: URI query for nonexistent token");
        return _tokenURIs[tokenId];
    }

}