/*
	PROBLRM STATEMENT
	
Objective 

This challenge will help you to learn how to add conditions for executing your functions from smart contracts. This operation is very important in constructing any smart contracts especially if you are developing smart contracts which will be dealing with a huge amount of tokens as it can add great security.

 

Task

1. Create two state variables to store the number and the owner's address

2. Create a constructor where the owner of the smart contract will be assigned at the time of contract deploy

3. Create a function get_owner which returns the address of the owner of the smart contract

4. Create a function change_owner which accepts the new owner's address as an argument and sets the new owner as the current owner of the smart contract,
note*: this function can only be accessed by the current owner of the smart contract

5. Create a function store that accepts an unsigned integer as an argument and sets the value to the state variable, note*: this function can only be accessed by the current owner of the smart contract

6. Create a function retrieve that returns the value of the state variable which is set by using the store function

* the functions name should match as defined above

 

Task Description and Guide

1. You will save that value in the form of a variable of type address. In solidity, address is a data type of size 20 bytes.

example -

address acc1 = "0x4b94AF7e541396Ee21DEf1f0DBc49aE9B96da026";
Suppose your account address is (0x4b94AF7e541396Ee21DEf1f0DBc49aE9B96da026) and you are calling a function from a smart contract and you want the same address of account that is calling the function. You can simply get the address of the account interacting with a smart contract like - 

address acc1 = msg.sender;     // acc1 =  0x4b94AF7e541396Ee21DEf1f0DBc49aE9B96da026
2.  Constructor is a special function declared using the "constructor" keyword. It is an optional function executed only at the time of deployment and can be used to initialize the state variables of any contract. 

Here is how you can initialize a constructor :

pragma solidity ^0.8.0;

contract Example1 {
    
    constructor() public {
      . . .
    }

}
You can learn more about solidity in this course on DApp World itself for free

3. You need to mention the return variable type in the function to return any value from a function.

example -

function  get_value(int  _a) public  returns(int)  {
   int num = a + 23;
   return num;
}
In solidity, there are different function types like view, pure, payable, and non-payable. The above function is a non-payable function and will charge the user gas for calling it.  

You can avoid it using the function type view. These are special functions used for reading or getting data from smart contracts or blockchains. These functions are fast and can be called infinite times and they don't need any gas fees for calling. 

example -

function  get_value() public view returns(int)  {
   int num = 23;
   return num;
}
4. You can use require() function to restrict and control function accessibility. Require takes two arguments, one is the condition you want to put and the other is the message you want to print after failed condition. The function will execute if the condition you put in the require is true.

require( Condition, Comment );
Suppose we don't want to execute a smart contract if the argument value is less than 10 then you can use require to do this like -

function  set_value(int _arg) public returns(int)  {
   require( _arg > 10, 'Value is less than 10');
   int num = _arg + 23;
   return num;
}
This will revert if the argument is less than 10. For the execution of the function, the condition must be true, if false, the function will revert with an error and it will stop the execution of smart contract which is a very important aspect of require function from the security point of view. 

 

Sample Input 0

<your-address>
Sample Output

<your address>
*/

	//PROGRAM
	
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Sample  {
    uint number;
    address owner;

    constructor() {
        owner=msg.sender;
    }

    function get_owner() public view returns(address){
        return owner;
    }

    function change_owner(address newuser) public {
        require(msg.sender==owner ,"you are not the owner");
        owner=newuser;
    }

    function store(uint num) public {
        require(msg.sender==owner ,"you are not the owner");
        number=num;
    }

    function retrieve() public view returns(uint){
        return number;
        
    }

}
