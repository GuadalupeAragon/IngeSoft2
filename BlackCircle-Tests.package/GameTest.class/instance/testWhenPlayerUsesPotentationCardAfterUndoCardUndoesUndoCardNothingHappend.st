test-InstantCard
testWhenPlayerUsesPotentationCardAfterUndoCardUndoesUndoCardNothingHappend
	| playerGuada board game playerFacu potentationCard undoCard deck potentationCardOne undoCardOne |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					AtomicBombEffect new}).
	potentationCard := self potentationCard .
	undoCard := self undoCard.
	potentationCardOne := self potentationCard .
	undoCardOne := self undoCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{potentationCard.
					undoCard.
					potentationCardOne.
					undoCardOne}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(5 1 1)))}.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 5.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game apply: potentationCard  playedBy: playerFacu .
	self assert: (board positionOf: playerGuada) currentBox equals: 5.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 1.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 0.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	self assert: (board positionOf: playerFacu) currentBox equals: 0.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: undoCardOne playedBy: playerFacu.
	self assert: (board positionOf: playerGuada) currentBox equals: 5.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	self assert: (board positionOf: playerFacu) currentBox equals: 1.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: undoCard playedBy: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 0.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	self assert: (board positionOf: playerFacu) currentBox equals: 0.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: potentationCard playedBy: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 0.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	self assert: (board positionOf: playerFacu) currentBox equals: 0.
	self assert: (board positionOf: playerFacu) currentLap equals: 0