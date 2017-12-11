test-PermanentCard
testWhenPlayerUsesMirrorCardToTimeMachineBoxAllPlayersButHimGoToPreviousPosition
	| playerGuada board game playerFacu mirrorCard deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					TimeMachineEffect new}).
	mirrorCard := self mirrorCard.
	deck := self deckWith: mirrorCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 5 1)))}.
	game apply: mirrorCard playedBy: playerGuada at: 4.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 3.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (game context positionOf: playerFacu) currentBox equals: 5.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 4.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
		self assert: (game context positionOf: playerFacu) currentBox equals: 0.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	