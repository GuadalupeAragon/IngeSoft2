tests
testWhenAPlayerWinsGameEnds
	| player board game |
	player := Player named: 'Facu'.
	board := Board with: 4 source: (FixedEffectSequence generating: {NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(5)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 1.
	self assert: game winner equals: player.
	self assert: game hasEnded 