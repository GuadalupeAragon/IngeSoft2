tests
testWhenPlayerIsAtMoonWalkBoxAllPlayersButHimMoveBackwardNBoxes
	| board playerOne game playerTwo playerThree |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	playerThree := self playerHijitus.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					(MoonWalkEffect source: (FixedNumberSequence generating: #(2)))}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo.
			playerThree}
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{Snapshot new.
					Permanent new})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(1 3 5 1)))}.
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