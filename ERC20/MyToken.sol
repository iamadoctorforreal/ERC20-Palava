// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }




    
    
    mapping(address => uint256) balances;



event Bought (uint256 amount);
//token = new ERC20Basic();
 //event TransferToken(address indexed from, address indexed to, uint tokens);

 /**function transfer(address receiver, uint numTokens) public returns (bool) {
    require(numTokens <= balances[msg.sender]);
    balances[msg.sender] = balances[msg.sender] - numTokens;
    balances[receiver] = balances[receiver] + numTokens;
    emit Transfer(msg.sender, receiver, numTokens);
    return true;
}
*/

/*function buyToken(address receiver, uint256 numTokens) public payable returns(bool) {
    numTokens = msg.value * 1000;
   // balances[msg.sender] = balances[msg.sender] + msg.value.mul(1000);
   
    require(numTokens <= balances[msg.sender]);
    balances[msg.sender] = balances[msg.sender] - numTokens;
    balances[receiver] = balances[receiver] + numTokens;
    emit Transfer(msg.sender, receiver, numTokens);
    emit Bought(numTokens);
    return true;
}**/

function buyToken(address receiver, uint256 numTokens) public payable {
    numTokens = msg.value * 1000;
   // balances[msg.sender] = balances[msg.sender] + msg.value.mul(1000);
   
    require(numTokens <= balances[msg.sender]);
    balances[msg.sender] = balances[msg.sender] - numTokens;
    balances[receiver] = balances[receiver] + numTokens;
    emit Transfer(msg.sender, receiver, numTokens);
    emit Bought(numTokens);
    
}



/**function buy(address receiver) payable public {
    uint256 amountToBuy = msg.value *1000;
    uint256 tokenBalance = token.balanceOf(address(this));
    require(amountToBuy <= tokenBalance, "Not enough tokens in the reserve");
    token.transfer(msg.sender, amountToBuy);
    emit Bought(amountToBuy);

}*/

}





