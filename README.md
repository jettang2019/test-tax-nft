# 说明：
- contracts: solidity合约文件
- html
    - images: 放置的测试NFT图片文件
    - 1.json: tokenId为1的json属性文件
    - demo.html 测试的html文件，用于生成NFT
- json: json的格式文件

# 对应关系
NFT的tokenId  【一对一】 {tokenId}.json 【多对一】 图片文件

{tokenId}.json 中的属性信息对应一张票据的内容（具体内容参考demo.json中的内容），即一个NFT对应一张票据


# 其他
使用服务端动态生成json信息，保证隐私的情况下可使用单一默认图片

NFT发行对象为客户，客户钱包地址？（待定）

测试方法为在浏览器安装coinbase wallet 或 okx wallet，加入测试链（使用 https://chainlist.org/chain/84532 里面的Add to metamask按钮），领取测试ETH币即可开始操作。

测试代码为Base的Testnet，全称Base Sepolia Testnet，chainId为84532，使用ETH。获取免费测试链的ETH地址：https://docs.base.org/docs/tools/network-faucets/

已完成的测试Tx： https://sepolia.basescan.org/tx/0x049fdc434ea1e5c39036204eef3ea2163d8e2881d537a8a1b768aac8da2c5229








