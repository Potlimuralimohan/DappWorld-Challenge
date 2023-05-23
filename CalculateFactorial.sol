/*
Objective 

This challenge will help you learn how loops work in smart contracts. These loops are programming language statements that allow code to be executed until a terminal condition is met. They can even repeat forever if the terminal condition is never met. On Blockchain running an infinite loop will break the system, this problem was solved by Ethereum with the introduction of gas system which implements restrictions on execution and every operation has a specific cost.

Once you learn about smart contracts, next thing is to build complex applications on them which requires problem-solving skills. 

 

Task

1. Create a function Factorial that accepts an unsigned integer as an argument. Calculate and return the factorial of that number

* the functions name should match as defined above

 

Task Description

1. Solidity has loops such as for, while, and do-while which you can use to create complex algorithms for your smart contract. 

example:

Syntax -
  for ( initialization; expression; increment ) {
       // statements
  }


Example -
  for( int i=0; i<10 ; i++ ){
            
  }
Factorial, in mathematics, is the product of all positive integers less than or equal to a given positive integer and denoted by that integer and an exclamation point. Thus, factorial seven is written 7!, means 1 x 2 x 3 x 4 x 5 x 6 x 7.

7! = 7 x 6 x 5 x 4 x 3 x 2 x 1
Here is how you write a function in smart contracts :

function   myFunction(int  _a )   public   returns( int )  {

 . . .

}
 

Sample Input 0

7
Sample Output

5040
*/

	//program

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract CalculateFactorial {

    // this function calculates the factorial of a give number
    function Factorial(uint _a) public pure returns(uint) {
        uint factorial=1;
        if (_a==1 || _a==0){
            factorial=1;
        }
        else{
            for (uint i=1;i<= _a ; i++){
                factorial*=i;

            }
        }
        return factorial;

    }

}


