test-Card
testWhenPlayerUsesAnulationCardOverOverloadCardAnulatesIt
	| playerGuada board game playerFacu overloadCardOne overloadCardTwo anulationCardOne anulationCardTwo deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	overloadCardOne := self overloadCard.
	anulationCardOne := self anulationCard.
	overloadCardTwo := self overloadCard.
	anulationCardTwo := self anulationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{overloadCardOne.
					anulationCardOne.
					
					anulationCardTwo.overloadCardTwo}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 1)))}.
	game apply: overloadCardOne playedBy: playerGuada to: playerGuada.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 2.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 1.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: anulationCardTwo playedBy: playerFacu toPermanetCard: overloadCardOne.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 6.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 2.
	self assert: (board positionOf: playerFacu) currentLap equals: 0