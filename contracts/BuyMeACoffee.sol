// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//Deployed to goerli at this address: 0xa9Fb2da18CA870BC9856E65b3BF1E2D401C5f50e

// Import this file to use console.log
import "hardhat/console.sol";

contract BuyMeACoffee {
    // Event to emit when a Memo is created 
    event NewMemo(
        address indexed from,
        uint256 timestamp,
        string name,
        string message
    );

    // Memo Struct
    struct Memo {
        address from;
        uint256 timestamp;
        string name;
        string message;
    }

    // List of all memos recieved from freinds 
    Memo[] memos;

    //Address of contract deployer
    address payable owner;

    //constructor only run once the contract deploys
    constructor() {
        owner = payable (msg.sender);
    }

/**
* @dev buy a coffee for a contract owner
* @param _name name of coffee buyer
* @param _message a nice message from the coffee buyer
 */
    function buyCoffee(string memory _name, string memory _message) public payable {
        require(msg.value > 0, "cannot buy coffee with 0 eth");

        //add memo to smart contract storage
        memos.push(Memo(
            msg.sender,
            block.timestamp,
            _name,
            _message
        ));

        // Emit a log event when a new memo is created
        emit NewMemo(
            msg.sender,
            block.timestamp,
            _name,
            _message
        );
    }


/**
* @dev send the entire balance stored in this contract to the owner
 */
    function withdrawTips() public {
        require(owner.send(address(this).balance));
    }

    /**
* @dev retreive all the memos recieved and stored on the blockchain
 */

    function getMemos() public view returns(Memo[] memory) {
        return memos;
    }


}
