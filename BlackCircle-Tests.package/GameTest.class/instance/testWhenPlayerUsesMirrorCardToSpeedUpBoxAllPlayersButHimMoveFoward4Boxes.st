test-PermanentCard
testWhenPlayerUsesMirrorCardToSpeedUpBoxAllPlayersButHimMoveFoward4Boxes
	| playerGuada board game playerFacu mirrorCard deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect  new}).
	mirrorCard := self mirrorCard.
	deck := self deckWith: mirrorCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2 1)))}.
	game apply: mirrorCard playedBy: playerGuada at: 2.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 2.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	self assert: (game history positionOf: playerFacu) currentBox equals: 4.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0.
	game apply: mirrorCard playedBy: playerFacu at: 5.
	game playTurn: playerFacu.
	self assert: (game history positionOf: playerGuada) currentBox equals: 2.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	self assert: (game history positionOf: playerFacu) currentBox equals: 5.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0