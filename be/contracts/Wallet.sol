//SPDX-License-Identifier: MIT;
pragma solidity 0.8.0;

contract Wallet{
    address payable private owner;
    uint256 public contractBal;

    event Transfer(
       address indexed receipient,
       uint256 amount
    );
    event Withdraw(
       address indexed owner,
       uint256 amount
    );
    event Deposit(
       address indexed sender,
       uint256 amount
    );

    constructor(){
        owner = payable(msg.sender);
    }

    function transfer(address payable _receipient, uint256 _amount) public{
        require(_amount > 0, "Cannot be lower than 0");
        _receipient.transfer(_amount);
         contractBal -= _amount;
         emit Transfer(_receipient, _amount);
    }

    receive() external payable{
      contractBal += msg.value;
      emit Deposit(msg.sender, msg.value);
    }

    fallback() external payable{
      contractBal += msg.value;
      emit Deposit(msg.sender, msg.value);
    }
}