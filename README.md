# metacrafterFunctions-and-Errors
In this solidity contract we will be using require(), assert(), revert() function and we will check the working of this three function

# Description
Solidity, a programming language used to create smart contracts for the Ethereum blockchain, was used to create this program, a Function and Error contract. 
The three functions that handle software issues and correctly build and execute the smart contract are part of the contract. 
This application serves as a solidity programming exception handling, used three statements require, assert, revert.
 # Getting Started
## Executing program
Use the online Solidity IDE Remix to run this program. Visit the Remix website at https://remix.ethereum.org to get started.
When you are on the Remix website, click the "+" icon in the left sidebar to start a new file. Save the document with the extension ".sol" (for example, functionError.sol).
Fill out the file with the code.

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract functionError{
    function requireConditon(uint _voterAge) 
    public pure returns (string memory){
        uint _perfectAge =18;
        require(_voterAge > _perfectAge,"Voter Cannot Vote according to criteria");
        return ("C");
    }
    function assertCondition(uint _RamAge) 
    public pure returns (string memory){
        uint _ShamAge=34;
        assert(_RamAge > _ShamAge);
        return("Sham is elder than Ram");
    }
    function revertCondittion(uint _payment) 
    public pure {
    uint _totalRupee = 500;
        if (_payment > _totalRupee ) {
        revert("opps! insufficient balance");
        }
         
    }
}

```
## Explanation
### function requireConditon()
As a pure function, this one doesn't alter the state of the contract in any way.Its take unsigned integer _voterAge as a input and return output as string.
It will check _voterAge is greater than 18 (Voter can Vote according to criteria) and if not, it will display the message "require" error (Voter Cannot Vote according to criteria).

### function assertCondition()
This function accepts an unsigned integer _SoravAge as input and is also pure. It determines whether _RamAge exceeds 34(_ShamvAge). 
The "assert" statement will result in an error if the condition is not satisfied. Otherwise, "Sham is elder than Ram" will be returned.

### function revertCondittion()
This function is a pure function and it takes an unsigned integer _payment as input and checks if it is greater than a value stored in _totalRupee, which is 700. 
If the condition is met, it will trigger a "revert" with the message "opps! insufficient balance".

## Compilation
Click the "Solidity Compiler" tab in the left-hand sidebar to compile the code. Click the "Compile functionError.sol" button after making sure the "Compiler" option is set to "0.8.4" (or another compatible version).

Using the "Deploy & Run Transactions" tab in the left-hand sidebar, you can deploy the contract after the code has been compiled. Click the "Deploy" button after selecting the "functionError" contract from the drop-down menu.
You can start the contract deployment process after the code has been compiled. Three stell blue buttons that symbolize the variables will be present throughout deployment.

The function displays a require error with the message "Voter Cannot Vote according to criteria" after I first clicked on requireCondition and provided the lesser value of _voterAge is 15 in the field.

The method returns "Voter Cannot Vote according to Criteria" when I entered a larger number for _voterAge, which is 22.

Move the second assertCondition button now and enter _.ShamAge returns "Sham is older than Ram" and has a 45-year-old age.

RevertCondition is the last button, and 500 is the entered _payment. The notification "opps! insufficient balance" will "revert" because the payment is more than the total rupee.


## Contract Mechanisms
The contract's error-handling procedures are as follows:

require: Used in the first function, it verifies a condition and, if it is not satisfied, throws an error with a specific message. This is frequently used to enforce a function's preconditions and stop invalid inputs.

assert: It checks a critical invariant that should never be false and is used in the second function. The transaction is reverted if the condition is false because it implies a programming error. Assert is frequently used to test for conditions that ought to hold true without fail.

Revert: This function, which is used in the third, enables the contract to undo the modifications performed in the current transaction and to send a specific error message. It is frequently used to deal with extraordinary circumstances or to stop unwanted contract states.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details



