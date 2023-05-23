/*
Meet Erlich - he's excited to invest in the stock market and make a profit.
However, he's not sure when to buy and sell his stock. But don't worry, Erlich is a smart cookie and knows how to write smart contracts. So, he's decided to create one to help him maximize his profit!

Here's where you come in: you're given an array called 'prices' that represents the prices of the stock on some consecutive days. Your job is to write a contract that will help Erlich find the maximum profit he can make by choosing a day to buy one stock and another day in the future to sell it.
If Erlich can't make any profit, the contract should return 0.
To do this, you'll need to create a smart contract with following public function :

TWrite a smart contract that has the following public functions:

 

function maxProfit(uint256[] memory prices) public returns (uint256): This function takes array of unsigned integers and returns an unsigned integer which is the maximum profit that Richard can make. It is guaranteed that the prices of all the shares never exceed or equal 2^256

 

Example :
Input -
[7, 1, 5, 3, 6, 4]

Output - 5
Let's help Erlich make some money in the stock market!

*/

		//PROGRAM

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MaxProfit {

    //this function takes an array of prices and calculate maximum profit
    function maxProfit(uint256[] memory prices) public returns (uint256) {
        uint maxnum=prices[0];
        for (uint i=1; i< prices.length ; i++){
            maxnum > prices[i];
        }
        return maxnum;

    }

}
