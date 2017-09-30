tests
testWhenAPlayerIsAtBoxWithNoEffect
	| board playerOne game playerTwo |
	playerOne := Player named: 'Guada'.
	playerTwo := Player named: 'Facu'.
	board := Board
		with: 2
		source:
			(FixedEffectSequence
				generating:
					{NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(1)))}.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	self assert: (board positionOf: playerTwo) currentBox equals: 0.
	self assert: (board positionOf: playerTwo) currentLap equals: 0