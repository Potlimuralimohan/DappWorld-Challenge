/*
Objective 

This challenge will help you to learn how to transfer tokens or ethers using Smart Contracts. Every function call is also a transaction but we will be specifically transferring Ethereum in this type of transaction. Just sending tokens or ethers is not the end goal for most of the dapps or smart contracts. Using smart contracts we can completely manage every token transaction happening on our smart contract and build many amazing dapps and financial systems, isn't it amazing!

 

Task

1. Create a mapping user_account to store user balance, user as an address. Keep the mapping variable public.

2. Create a deposit() function to send ethers into an account created for the user.

3. Create a withdraw() function to withdraw ethers from the user account created in the smart contract.

4. Create a get_balance() function to read user balance from the smart contract.

* the functions name should match as defined above

 

Sample Input 0

-
Sample Output

-
*/

// PROGRAM

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Sample  {
    mapping(address=>uint) public user_account;

    function deposit() public payable {
        user_account[msg.sender]+=msg.value;
    }
    function withdraw(uint amount) public payable{
        require(user_account[msg.sender]>=amount,"not enough balance");
        user_account[msg.sender]-=amount;
        payable(msg.sender).transfer(amount);
        

    }
    function get_balance() public view returns(uint){
        return user_account[msg.sender];
    }

}
