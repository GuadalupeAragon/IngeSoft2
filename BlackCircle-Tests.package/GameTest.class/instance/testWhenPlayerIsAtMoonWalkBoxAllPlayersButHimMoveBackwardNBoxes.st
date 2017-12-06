test-effects
testWhenPlayerIsAtMoonWalkBoxAllPlayersButHimMoveBackwardNBoxes
	| board playerOne game playerTwo playerThree deck |
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
	deck := self deckWithOverloadCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo.
			playerThree}
		generatingCardsFrom: deck
		withDices:
			{(Dice
				with: 6
				facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(1 3 5 1)))}.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 1.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: 3.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerThree.
	self assert: (game history positionOf: playerThree) currentBox equals: 5.
	self assert: (game history positionOf: playerThree) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 2.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	self assert: (game history positionOf: playerTwo) currentBox equals: 1.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	self assert: (game history positionOf: playerThree) currentBox equals: 3.
	self assert: (game history positionOf: playerThree) currentLap equals: 0