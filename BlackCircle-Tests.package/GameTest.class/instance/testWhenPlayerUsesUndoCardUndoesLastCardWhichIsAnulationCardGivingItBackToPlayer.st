test-InstantCard
testWhenPlayerUsesUndoCardUndoesLastCardWhichIsAnulationCardGivingItBackToPlayer
	| playerGuada board game playerFacu speedCard overloadCardTwo undoCardOne anulationCardTwo deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	speedCard := self speedCard.
	undoCardOne := self undoCard.
	overloadCardTwo := self overloadCard.
	anulationCardTwo := self anulationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{speedCard.
					undoCardOne.
					anulationCardTwo.
					overloadCardTwo}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 1)))}.
	game apply: speedCard playedBy: playerGuada to: playerGuada.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 5.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game context positionOf: playerFacu) currentBox equals: 1.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	game apply: anulationCardTwo playedBy: playerFacu toPermanetCard: speedCard.
	game apply: undoCardOne  playedBy: playerGuada .
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 10.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game context positionOf: playerFacu) currentBox equals: 2.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0