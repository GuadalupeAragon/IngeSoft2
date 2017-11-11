test-PermanentCard
testWhenPlayerUsesSpeedCardToOtherPlayerLastOneMovesOneMoreBox
	| playerGuada board game playerFacu speedCard deck |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	speedCard := self speedCard.
	deck := self deckWith: speedCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices:
			{(Dice
				with: 6
				facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 2)))}.
	game apply: speedCard playedBy: playerGuada to: playerGuada.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 5.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 2.
	self assert: (board positionOf: playerFacu) currentLap equals: 0.
	game apply: speedCard playedBy: playerGuada to: playerFacu.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 10.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game apply: speedCard playedBy: playerFacu to: playerFacu.
	game playTurn: playerFacu.
	self assert: (board positionOf: playerFacu) currentBox equals: 6.
	self assert: (board positionOf: playerFacu) currentLap equals: 0