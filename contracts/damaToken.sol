//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

// Must run `npx oz link @openzeppelin/contracts-ethereum-package` first
// import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";

contract DamaToken is ERC20UpgradeSafe {
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 initialSupply
    ) public ERC20UpgradeSafe() {
        require(initialSupply > 0, "INITIAL_SUPPLY has to be greater than 0");
        __ERC20_init(_name, _symbol);
        _mint(msg.sender, initialSupply * (10 ** 18));
    }
}
