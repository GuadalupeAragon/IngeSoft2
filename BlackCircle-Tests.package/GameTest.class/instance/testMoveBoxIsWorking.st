tests
testMoveBoxIsWorking
	| player board game |
	player := Player named: 'Hijitus'.
	board := Board with: 4.
	game := Game
		withBoard: board
		withLaps: 3
		involving: {player}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(2)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 2