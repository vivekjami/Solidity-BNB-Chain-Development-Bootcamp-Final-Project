// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/utils/Counters.sol";

contract CarRentalPlatform {
  //DATA

  //Counter
  using Counters for Counters.Counter;
  Counters.Counter private_counter;

  //Owner
  address private owner;

  //totalPayments
  uint private totalPayments;

  //user struct
  struct User{
    address walletAddress;
    string name;
    string lastname;
    uint rentedCarId;
    uint balance;
    uint debt;
    uint start;
  }

  //car struct
  struct Car {
    uint id;
    string name;
    string imgUrl;
    Status status;
    uint rentFee;
    uint saleFee;
  }

  //enum to indicate the status of the car
  enum Status {
    Retired,
    InUse,
    Available
  }

  //events
  event CarAdded(uint indexed id,string name,string imgUrl, uint rentFee, uint saleFee );
  event CarMetadataEdited(uint indexed id, string name , string imgUrl, uint rentFee, uint saleFee);
  event CarStatusEdited(uint indexed id, Status status);
  event UserAdded(address indexed walletAddress,string name, string lastname);
  event Deposit(address indexed walletAdderss, uint amount);
  event CheckOut(address indexed walletAddress, uint carId );
  event CheckIn(address indexed walletAddress, uint indexed carId );
  event PaymentMade(address indexed walletAdderss, uint amount);
  event BalanceWithdrawn(address indexed walletAddress, uint amount);

  //user mapping
  mapping(address => User) private users;

  //car mapping
  mapping(uint => Car) private cars;

  //constructor
  constructor(){
    owner = msg.sender;
    totalPayments=0;
  }

  //MODIFIERS
  //onlyOwner
  modifier onlyOwner(){
    require(msg.sender == owner, "Only the owner can call this function");
    _;
  }

  //FUNCTIONS
  //Execute FUNCTIONS

  //setOwner #onlyOwner

  //addUser #nonExisting

  //addCar #onlyOwner #nonExistingCar

  //editCarMetadata #onlyOwner #existingcar

  //editCarStatus #onlyOwner #existingcar

  //checkOut #existingUser #isCarAvailable #userHasNotRentedACar #userHasNoDebt

  //checkIn #existingUser #userHasNotRentedACar

  //deposit #existingUser

  //makePayment #existingUser #existingDebt #sufficientBalance

  //withdrawBalance #existingUser

  //withdrawOwnerBalance #onlyOwner

  //Query functions

  //getOwner

  //isUser

  //getUser #existingUser

  //getCar #existingcar

  //getCarByStatus

  //calculateDebt

  //getCurrentCount

  //getContractBalance #onlyOwner

  //getTotalPayments #onlyOwner

  
}
