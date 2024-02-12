//SPDX-License-Identifier: MIT
 
pragma solidity ^0.8.7;

contract Test {
  event StringEvent(string indexed s, string u);
  function emitStringEvent() public{
    emit StringEvent("hello world", "hello world");
  }

  event FixedArrayEvent1(uint256[1] indexed u, uint256[1] v);
  function emitFixedArrayEvent1() public{
    emit FixedArrayEvent1([uint256(2)],[uint256(2)]);
  }

  event FixedArrayEvent2(uint256[2] indexed u, uint256[2] v);
  function emitFixedArrayEvent2() public{
    emit FixedArrayEvent2([uint256(1),uint256(2)],[uint256(1),uint256(2)]);
  }

  event VarLenArrayEvent1(uint256[] indexed u, uint256[] v);
  function emitVarLenArrayEvent1() public{
    uint[] memory element1 = new uint[](1);
    uint[] memory element2 = new uint[](1);

    element1[0] = 2;
    element2[0] = 2;

    emit VarLenArrayEvent1(element1, element2);
  }

  function emitVarLenArrayEvent2() public{
    uint[] memory element1 = new uint[](2);
    uint[] memory element2 = new uint[](2);

    element1[0] = 1;
    element1[1] = 2;

    element2[0] = 1;
    element2[1] = 2;

    emit VarLenArrayEvent1(element1, element2);
  }

  event FixedBytesEvent(bytes11 indexed b, bytes11 c);
  function emitFixedBytesEvent() public{
    bytes11 element1 = bytes11("hello world");
    bytes11 element2 = bytes11("hello world");

    emit FixedBytesEvent(element1,element2);
  }

  event BytesEvent(bytes indexed b, bytes c);
  function emitBytesEvent() public{
    string memory message = "hello world";
    bytes memory element1 = bytes(message);
    bytes memory element2 = bytes(message);

    emit BytesEvent(element1,element2);
  }
}