test-InstantCard
testWhenPlayerUsesUndoCardUndoesLastCardWhichIsUndoCardRedoesWormholeEffect
	| board playerOne game playerTwo overloadCard undoCard overloadCardOne undoCardOne deck |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					WormholeEffect new}).
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
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 1 2 1)))}.
	game playTurn: playerOne.
	self assert: (game context positionOf: playerOne) currentBox equals: 3.
	self assert: (game context positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: 1.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (game context positionOf: playerOne) currentBox equals: 5.
	self assert: (game context positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: -2.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0.
	game apply: undoCard playedBy: playerOne.
	self assert: (game context positionOf: playerTwo) currentBox equals: 2.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0.
	game apply: undoCardOne  playedBy: playerTwo.
	self assert: (game context positionOf: playerTwo) currentBox equals: -2.
	self assert: (game context positionOf: playerTwo) currentLap equals: 0.