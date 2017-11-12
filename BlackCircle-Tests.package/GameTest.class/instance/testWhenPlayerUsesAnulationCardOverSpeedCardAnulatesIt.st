test-InstantCard
testWhenPlayerUsesAnulationCardOverSpeedCardAnulatesIt
	| playerGuada board game playerFacu speedCard overloadCardTwo anulationCardOne anulationCardTwo deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	speedCard := self speedCard.
	anulationCardOne := self anulationCard.
	overloadCardTwo := self overloadCard.
	anulationCardTwo := self anulationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{speedCard.
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
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 1)))}.
	game apply: speedCard playedBy: playerGuada to: playerGuada.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 5.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 1.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: anulationCardTwo playedBy: playerFacu toPermanetCard: speedCard.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 9.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 2.
	self assert: (board positionOf: playerFacu) currentLap equals: 0