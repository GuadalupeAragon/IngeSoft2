tests
testCreateRandomizedEffectBoard
	| player board game dice |
	player := Player named: 'Facu'.
	board := Board with: 20 source: RandomEffectGenerator new.
	dice := Dice with: 6 source: Random new.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		withDices: {dice}.
	[ game hasEnded = false ] whileTrue: [ game playTurn: player ].
	self assert: game winner equals: player