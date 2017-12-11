test-PermanentCard
testWhenAmortiguationCardIsPlayedAndOneOverloadCardAndThreeSpeedCardAppliesToPlayerThatFallsInSpeedUpBoxMoves7Boxes
	| board playerOne game playerTwo amortiguationCard deck speedCard overloadCard speedCardOne speedCardTwo playerThree |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	playerThree := self playerHijitus.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new}).
	amortiguationCard := self amortiguationCard.
	speedCardOne := self speedCard.
	speedCardTwo := self speedCard.
	speedCard := self speedCard.
	overloadCard := self overloadCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{amortiguationCard.
					overloadCard.
					speedCardOne.
					speedCardTwo.
					speedCard}).
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
				facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(1 2 1 2 4)))}.
	game apply: amortiguationCard playedBy: playerOne.
	game playTurn: playerOne.
	self assert: (game context positionOf: playerOne) currentBox equals: 1.
	self assert: (game context positionOf: playerOne) currentLap equals: 0.
	game apply: speedCardOne playedBy: playerTwo to: playerTwo.
	game playTurn: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: 3.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0.
	game apply: speedCard playedBy: playerThree to: playerTwo.
	game playTurn: playerThree.
	self assert: (game context positionOf: playerThree) currentBox equals: 1.
	self assert: (game context positionOf: playerThree) currentLap equals: 0.
	game apply: overloadCard playedBy: playerOne to: playerTwo.
	game playTurn: playerOne.
	self assert: (game context positionOf: playerOne) currentBox equals: 3.
	self assert: (game context positionOf: playerOne) currentLap equals: 0.
	game apply: speedCardTwo playedBy: playerTwo to: playerTwo.
	game playTurn: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: 10.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0