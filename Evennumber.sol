/*
Objective 

This challenge will help you learn operators and conditions in smart contracts. 

 

Task

1. Create a function Checkeven which accepts an integer. If the given number is even then return true otherwise return false.

* the functions name should match as defined above

 

Task Description and Guide

1. The modulo operator, denoted by %, is an arithmetic operator. The modulo division operator produces the remainder of an integer division.

int a = 23;
int rem1 =  a % 10;  // rem1 = 3
Solidity has conditional statements such as IF, these Conditional statements are used to perform different actions based on different conditions.

if (expression) {
   // Statement is executed if expression is true
} else {
   // Statement is executed if expression is false
}
 

Sample Input 0

1000
Sample Output

true
*/
		ANSWER
		
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Sample  {

    function Checkeven(int a) public pure returns(bool){
        if (a%2 == 0){
            return true;

        }
        else{
            return false;
        }
    }

}

