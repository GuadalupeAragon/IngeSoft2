test-InstantCard
testWhenPlayerUsesUndoCardUndoesLastCardWhichIsAnulationCardMirrorCardIsBackAtGame
	| playerGuada board game playerFacu mirrorCard deck anulationCard overloadCard undoCard playerHijitus |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	playerHijitus := self playerHijitus.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new}).
	mirrorCard := self mirrorCard.
	anulationCard := self anulationCard.
	overloadCard := self overloadCard.
	undoCard := self undoCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{mirrorCard.
					overloadCard.
					undoCard.
					anulationCard}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu.
			playerHijitus}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2 1 4)))}.
	game apply: mirrorCard playedBy: playerGuada at: 4.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 6.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	game apply: anulationCard playedBy: playerFacu toPermanetCard: mirrorCard.
	game apply: undoCard playedBy: playerFacu.
	game playTurn: playerFacu.
	self assert: (game history positionOf: playerFacu) currentBox equals: 1.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerHijitus.
	self assert: (game history positionOf: playerHijitus) currentBox equals: 4.
	self assert: (game history positionOf: playerHijitus) currentLap equals: 0.
	self assert: (game history positionOf: playerGuada) currentBox equals: 10.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	self assert: (game history positionOf: playerFacu) currentBox equals: 5.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0