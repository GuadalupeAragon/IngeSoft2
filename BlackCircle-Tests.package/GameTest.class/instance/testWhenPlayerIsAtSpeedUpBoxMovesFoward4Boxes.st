tests
testWhenPlayerIsAtSpeedUpBoxMovesFoward4Boxes
	| board playerOne game playerTwo |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{Snapshot new.
					Permanent new})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(1 2)))}.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 6.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 6.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 12.
	self assert: (board positionOf: playerTwo) currentLap equals: 0