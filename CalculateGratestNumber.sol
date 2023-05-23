/*
Calculate Greatest Number


Objective

Create a function Greaterwhich accepts a dynamic array of unsigned integers. Calculate the greatest number from all of them and return it.


Sample 1

Input : [23, 56, 23, 46, 76, 8]

Output : 76


Sample 2

Input : [134, 567, 22]

Output : 567
*/
	PROGRAM
	
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function Greater(uint[] memory numbers) public pure returns (uint) {
        require(numbers.length > 0, "Empty array");

        uint max = numbers[0];
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        return max;
    }
}
