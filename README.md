# King Of The Blockchain
"King of the Blockchain" is a game where the players can become the leader by sending more tokens than the current leader did previously. There is no withdraw function and the deploying user cannot manage or use funds. All tokens sent to the contract to secure the leader position are considered lost / burned / stuck. This Solidity smart contract game is for entertainment and educational purposes only.



## Contract Details

The contract holds the following state variables:

- `leader`: The current leader's address.
- `currentValue`: The current highest amount of Tokens sent to the contract.

And the following functions:

- `becomeLeader()`: Any address (except the current leader) can become the new leader by sending an amount of Tokens higher than `currentValue`. The amount of Tokens is sent along with the transaction as `msg.value`.
- `whoisLeader()`: This function returns the address of the current leader.
- `amountToBeat()`: This function returns the current highest amount of Tokens. To become the new leader, a player has to send more than this amount.

Additionally, the contract emits a `NewLeader` event every time a new leader emerges.

## Usage

1. To become the leader, call `becomeLeader()` with a value of Tokens higher than the current `currentValue`. You can check the `currentValue` by calling `amountToBeat()`.
2. To check the current leader, call `whoisLeader()`.
3. If you send Tokens directly to the contract's address without calling a function, the `becomeLeader()` function will be triggered thanks to the `receive()` function.

## Rules

1. The current leader cannot become the leader again immediately. They must wait for someone else to become the leader first.
2. There is no way to withdraw Tokens from the contract in the current design. Please be aware of this before interacting with the contract.

## Important

This contract is a simple game and is not intended for serious use. Always be cautious when interacting with Tokenseum smart contracts. This contract should be audited by a professional security firm before being used on mainnet.
