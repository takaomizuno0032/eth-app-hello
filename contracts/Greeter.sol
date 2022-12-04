pragma solidity ^0.8.17;

import "openzeppelin-solidity/contracts/access/Ownable.sol";

contract Greeter is Ownable {
    string private _greeting = "Hello, World!";

    // it doesn't need if openzeppelin is imported
    // address private _owner;

    constructor() public {
        // it doesn't need if openzeppelin is imported
        // _owner = msg.sender;
    }

    // it doesn't need if openzeppelin is imported
    // modifier onlyOwner() {
    //     require(msg.sender == _owner, "Ownable: caller is not the owner");
    //     // 修飾される関数が呼び出される。という意味。そのため、この_の後に書かれたものは関数の本体の実行が完了した後に実行される。
    //     _;
    // }

    function greet() external view returns (string memory) {
        return _greeting;
    }

    function setGreeting(string calldata greeting) external onlyOwner {
        _greeting = greeting;
    }

    // it doesn't need if openzeppelin is imported
    // function owner() public view returns (address) {
    //     return _owner;
    // }
}
