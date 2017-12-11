test-PermanentCard
testWhenPlayerIsAtSpeedUpBoxAndPlayedOneAmortiguationIsSetMovesFoward2Boxes
	| board playerOne game playerTwo amortiguationCard deck |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new}).
	amortiguationCard := self amortiguationCard.
	deck := self deckWith: amortiguationCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom: deck
		withDices:
			{(Dice
				with: 6
				facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(1 2)))}.
	game apply: amortiguationCard playedBy: playerOne.
	game playTurn: playerOne.
	self assert: (game context positionOf: playerOne) currentBox equals: 1.
	self assert: (game context positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: 4.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (game context positionOf: playerOne) currentBox equals: 4.
	self assert: (game context positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: 8.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0