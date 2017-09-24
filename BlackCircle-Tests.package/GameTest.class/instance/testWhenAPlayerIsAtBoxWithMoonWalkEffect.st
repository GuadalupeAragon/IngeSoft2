tests
testWhenAPlayerIsAtBoxWithMoonWalkEffect
	| board playerOne game playerTwo playerThree |
	playerOne := Player named: 'Guada'.
	playerTwo := Player named: 'Facu'.
	playerThree := Player named: 'Hijitus'.
	board := Board
		with: 20
		source:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					(MoonWalkEffect source: (FixedSequence generating: #(2)))}).
	game := Game
		withBoard: board
		withLaps: 1
		involving:
			{playerOne.
			playerTwo.
			playerThree}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(1 3 5 1)))}.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 3.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerThree.
	self assert: (board positionOf: playerThree) currentBox equals: 5.
	self assert: (board positionOf: playerThree) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 2.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	self assert: (board positionOf: playerTwo) currentBox equals: 1.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	self assert: (board positionOf: playerThree) currentBox equals: 3.
	self assert: (board positionOf: playerThree) currentLap equals: 0