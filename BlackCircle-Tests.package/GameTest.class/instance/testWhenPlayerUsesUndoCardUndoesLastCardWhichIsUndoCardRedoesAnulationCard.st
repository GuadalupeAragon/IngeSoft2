test-InstantCard
testWhenPlayerUsesUndoCardUndoesLastCardWhichIsUndoCardRedoesAnulationCard
	| playerGuada board game playerFacu undoCardTwo undoCardOne anulationCardTwo deck amortiguationCard |
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
	undoCardOne := self undoCard.
	undoCardTwo := self undoCard.
	anulationCardTwo := self anulationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{amortiguationCard.
					undoCardOne.
					anulationCardTwo.
					undoCardTwo}).
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
	self assert: (board positionOf: playerGuada) currentBox equals: 6.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 1.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: anulationCardTwo playedBy: playerFacu toPermanetCard: amortiguationCard.
	game apply: undoCardOne playedBy: playerGuada.
	game apply: undoCardTwo  playedBy: playerFacu.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 12.
	self assert: (board positionOf: playerGuada) currentLap equals: 0