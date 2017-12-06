test-InstantCard
testWhenPlayerUsesPotentationCardReapplysLastEffectWhichWasTimeMachine
	| playerGuada board game playerFacu overloadCard undoCard deck overloadCardOne potentationCardOne |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					TimeMachineEffect new}).
	overloadCard := self overloadCard.
	undoCard := self undoCard.
	overloadCardOne := self overloadCard.
	potentationCardOne := self potentationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{overloadCard.
					undoCard.
					overloadCardOne.
					potentationCardOne}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(5 1 2 1 1)))}.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 5.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game history positionOf: playerFacu) currentBox equals: 1.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 7.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game history positionOf: playerFacu) currentBox equals: 0.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 5.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	game apply: potentationCardOne playedBy: playerFacu.
	self assert: (game history positionOf: playerGuada) currentBox equals: 0.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0