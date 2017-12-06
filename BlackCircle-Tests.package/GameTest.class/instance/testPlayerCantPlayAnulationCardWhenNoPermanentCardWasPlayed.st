test-InstantCard
testPlayerCantPlayAnulationCardWhenNoPermanentCardWasPlayed
	| playerGuada board game playerFacu overloadCardOne undoCardTwo anulationCardOne anulationCardTwo deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	overloadCardOne := self overloadCard.
	anulationCardOne := self anulationCard.
	undoCardTwo := self undoCard .
	anulationCardTwo := self anulationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{overloadCardOne.
					anulationCardOne.
					anulationCardTwo.
					undoCardTwo}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 1)))}.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 4.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	game apply: undoCardTwo  playedBy: playerFacu .
		self assert: (game history positionOf: playerGuada) currentBox equals: 4.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game history positionOf: playerFacu) currentBox equals: 1.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0.
	self should: [ game apply: anulationCardTwo playedBy: playerFacu toPermanetCard: overloadCardOne] raise: PlayTurnException