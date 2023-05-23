/*
Objective 

This challenge will help you to learn how to save and retrieve values in smart contracts. Read and Write operations are the most important operations in any system, with this simple problem statement you will be able to understand how the read and write operations are done in smart contracts on the blockchain. 

 

Task

1. Create a private variable to store an Integer value.

2. Create a store() function to assign value to the created variable in the smart contract.

3. Create a retrieve() function to retrieve the stored value from the variable.

*note: keep the function names as it is.

 

Task Description

In this challenge, you need to save value to the smart contract and retrieve that value. 

1. You will save that value in the form of a variable, it is a simple initialization of a variable.  

example -

int a = 23;
Now if you have to change the value of 'a' you can set this value through a function written in the smart contract.

You can learn more about solidity in this course on DApp World itself for free

Here is how you write a function in smart contracts :

function   change_value(int  _a )   public   returns( int )  {

 . . .

}
2. Now you have to read or retrieve the value of the same variable. In smart contracts you can do that through functions,  you simply have to return the value of the variable using a function. 

 

Sample Input 0

1000
Sample Output

1000
*/

	//PROGRAM
	
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Storage {

    int private num;

    //this function stores an integer
    function store(int _a) public {
        num=_a;
    }

    //this function returns the stored integer
    function retrieve() public view returns(int) {
        return num;
    }

}
