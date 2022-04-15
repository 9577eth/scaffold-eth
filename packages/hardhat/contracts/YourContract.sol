pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IGameMaker {
  function register() external;
  function collectHealth() external;
  function collectTokens() external;
  function move(uint256 direction) external;
}

contract YourContract {

  IGameMaker gameMaker;

  constructor(address _gameMaker) payable {
    gameMaker = IGameMaker(_gameMaker);
  }

  function register() public {
    gameMaker.register();
  }

  function move(uint256 direction) public {
    gameMaker.move(direction);
  }

  function collectTokens() public {
    gameMaker.collectTokens();
  }

  function collectHealth() public {
    gameMaker.collectHealth();
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}
