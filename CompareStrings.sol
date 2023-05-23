/*
	PROBLEM STATEMENT
Objective 

This challenge will help you learn about string data type and their comparison in Smart Contracts. While developing a smart contract you will use strings most of the time.  

 

Task

1. Create a public function compare which accepts two arguments of type string and returns true if they are equal otherwise returns false, the function should be declared as pure

2. Make sure you do not use require, revert or assert conditions anywhere

* the functions name should match as defined above

 

Sample Input 0

"Hello", "World"
Sample Output

False

*/

	//PROGRAM
	
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Sample  {

    function compare(string memory num,string memory num1) public pure returns(bool){
    return keccak256(abi.encodePacked((num))) == keccak256(abi.encodePacked((num1)));
    }

}
