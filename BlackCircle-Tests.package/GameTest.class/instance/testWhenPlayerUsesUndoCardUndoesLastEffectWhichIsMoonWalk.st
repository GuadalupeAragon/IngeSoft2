test-InstantCard
testWhenPlayerUsesUndoCardUndoesLastEffectWhichIsMoonWalk
	| playerGuada board game playerFacu overloadCard undoCard deck overloadCardOne undoCardOne |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					(MoonWalkEffect source: (FixedNumberSequence generating: #(2)))}).
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
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(5 5 1)))}.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 5.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game context positionOf: playerFacu) currentBox equals: 5.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 6.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	self assert: (game context positionOf: playerFacu) currentBox equals: 3.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	game apply: undoCardOne playedBy: playerFacu.
	self assert: (game context positionOf: playerGuada) currentBox equals: 6.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	self assert: (game context positionOf: playerFacu) currentBox equals: 5.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0