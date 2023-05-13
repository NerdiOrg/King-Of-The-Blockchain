# King Of The Blockchain
"King of the Blockchain" is a game where the players can become the leader by sending more tokens than the current leader did previously. There is no withdraw function and the deploying user cannot manage or use funds. All tokens sent to the contract to secure the leader position are considered lost / burned / stuck. This Solidity smart contract game is for entertainment and educational purposes only.



## Contract Details

The contract includes the following state variables:

- `leader`: the address of the current leader.
- `currentValue`: the amount of Wei the current leader sent.
- `history`: a mapping to store the address and amount sent by each player.
- `playerIndex`: an index to track the order of the players.

Upon deployment, the contract deployer becomes the initial leader with a `currentValue` of 0. 

Any address can call the `becomeLeader` function and if they send more Wei than the `currentValue`, they become the new leader. 

The history of leaders and their respective values is stored in the `history` mapping.

The `NewLeader` event is emitted whenever a new leader is set.

## Functions

- `becomeLeader`: This function is used to become the new leader. You need to send more Wei than the current leader.

- `whoisLeader`: This function returns the address of the current leader.

- `amountToBeat`: This function returns the amount that needs to be sent to become the new leader, which is the current highest amount sent to the contract.

## Usage

To become a leader, call the `becomeLeader` function with a value higher than the current value.

To know the current leader, call the `whoisLeader` function.

To know the amount to beat to become the new leader, call the `amountToBeat` function.

## Note

Please test and verify this contract thoroughly before using it in a production environment.
