// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract functionError{
    function requireConditon(uint _voterAge) 
    public pure returns (string memory){
        uint _perfectAge =18;
        require(_voterAge > _perfectAge,"Voter Cannot Vote according to criteria");
        return ("Voter can Vote according to criteria");
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
