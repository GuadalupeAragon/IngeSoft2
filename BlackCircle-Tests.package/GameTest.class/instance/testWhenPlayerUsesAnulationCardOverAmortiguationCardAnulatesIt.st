test-InstantCard
testWhenPlayerUsesAnulationCardOverAmortiguationCardAnulatesIt
	| playerGuada board game playerFacu overloadCardTwo anulationCardOne anulationCardTwo deck amortiguationCard |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new}).
	amortiguationCard := self amortiguationCard.
	anulationCardOne := self anulationCard.
	overloadCardTwo := self overloadCard.
	anulationCardTwo := self anulationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{amortiguationCard.
					anulationCardOne.
					anulationCardTwo.
					overloadCardTwo}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 1 2)))}.
	game apply: amortiguationCard playedBy: playerGuada.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 6.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game context positionOf: playerFacu) currentBox equals: 1.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	game apply: anulationCardTwo playedBy: playerFacu toPermanetCard: amortiguationCard.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 12.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0