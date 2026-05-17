// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KDGOLD_PORO is ERC20, Ownable {
    constructor() ERC20("KDGOLD_PORO", "KDGOLD") Ownable(msg.sender) {
        // تعداد کل توکن‌ها (مثلاً ۱ میلیون توکن با ۱۸ رقم اعشار)
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
