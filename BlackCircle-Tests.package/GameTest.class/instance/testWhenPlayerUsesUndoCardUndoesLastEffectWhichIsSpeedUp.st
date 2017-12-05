test-InstantCard
testWhenPlayerUsesUndoCardUndoesLastEffectWhichIsSpeedUp
	| playerGuada board game playerFacu overloadCard undoCard deck overloadCardOne undoCardOne |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{SpeedUpEffect new.
					NoEffect new}).
	overloadCard := self overloadCard.
	undoCard := self undoCard.
	overloadCardOne := self overloadCard.
	undoCardOne := self undoCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{overloadCard.
					undoCard.
					overloadCardOne.
					undoCardOne}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 2)))}.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 7.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game apply: undoCardOne playedBy: playerFacu.
	self assert: (board positionOf: playerGuada) currentBox equals: 3.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 2.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	