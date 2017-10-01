tests
testCreateRandomizedEffectBoard
	| player board game |
	player := Player named: 'Facu'.
	board := Board with: 20 source: RandomEffectGenerator new.
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		withDices: {(Dice with: 26 source: (FixedSequence generating: #(5 26)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox > 0.
