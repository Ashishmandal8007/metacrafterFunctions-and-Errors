# Functionerrors
In this solidity contract I am  using require(), assert(), revert() function and we will check the working of this three function.

# Description
I will be creating smart contract on Etherem blockchain using solidity porogramming language, the function in this programe  used handle the software issue correctly build and execute the smart contract. Our application serves as a solidity programming exception handling, where I have used three function statements require(), assert(), revert().

# Getting Started
## Executing program
I have used online Solidity IDE Remix to excute this program. Visited the Remix website at https://remix.ethereum.org to get started after opening the website, clicked the "+" icon in the left sidebar to start a new file. Save the document with the extension ".sol" (for example, functionError.sol).

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
        assert(_ShamAge > _RamAge);
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
As per require(), it work is to verify input and and condition before excutation to the programe.Its take unsigned integer _voterAge as a input and return output as string.
It will check _voterAge is greater than 18 (Voter can Vote according to criteria) and if not, it will display the message "require" error (Voter Cannot Vote according to criteria).

### function assertCondition()
assert() function accepts an unsigned integer _RamAge as input. It determines whether _RamAge exceeds 34(_ShamvAge). 
The "assert" statement will result in an error if the condition is not satisfied. Otherwise, "Sham is elder than Ram" will be returned on the screen.

### function revertCondittion()
rever() function is a pure function and it takes an unsigned integer _payment as input and checks if it is greater than a value stored in _totalRupee, which is 500. 
If the condition is met, it will return a "revert" with the message "opps! insufficient balance".

## Compilation
By clicking the "Solidity Compiler" tab in the left-hand sidebar to compile the code. Clicking  the "Compile functionError.sol" button after making sure the "Compiler" option is set to "0.8.4".

By Using the "Deploy & Run Transactions" tab in the left-hand sidebar, I have  deployed the contract after the code has been compiled. Click the "Deploy" button after selecting the "functionError" contract from the drop-down menu.
We can start the contract deployment process after the code has been compiled. 

The function displays a require error with the message "Voter Cannot Vote according to criteria" after I first clicked on requireCondition and provided the lesser value of _voterAge is 15 in the field.

This  method will  returns "Voter Cannot Vote according to Criteria" when I entered a greater number for _voterAge, which is 22.

Now on assert condition, if _RamAge entered smaller then the age Of _ShamAge assertCondition will return "Sham is elder than Ram" and otherwise it will diplay error.

In RevertCondition ,_payment is single argument of the function , given total _totalRupee 500, if _payment is greater total balance present that is 500, programe will return "opps! insufficient balance".

## License

This project is licensed under the MIT License - see the LICENSE.md file for details



