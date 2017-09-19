tests
testAdvancingLapLengthIncreasesLapInOne
	| player board game |
	player := Player named: 'Facu'.
	board := Board with: 4.
	game := Game
		withBoard: board
		withLaps: 3
		involving: {player}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(4 2)))}.
	game playTurn: player.
	game playTurn: player.
	self assert: (board positionOf: player) currentLap equals: 1