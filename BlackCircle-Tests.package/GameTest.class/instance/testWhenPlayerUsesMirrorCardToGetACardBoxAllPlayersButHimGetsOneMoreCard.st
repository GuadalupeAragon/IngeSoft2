test-PermanentCard
testWhenPlayerUsesMirrorCardToGetACardBoxAllPlayersButHimGetsOneMoreCard
	| board game speedCard overloadCard deck mirrorCard playerGuada playerFacu |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					GetACardEffect new}).
	speedCard := self speedCard.
	overloadCard := self overloadCard.
	mirrorCard := self mirrorCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{mirrorCard.
					speedCard.
					overloadCard}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2)))}.
	game apply: mirrorCard playedBy: playerGuada at: 2.
	game playTurn: playerGuada.
	self assert: (game history positionOf: playerGuada) currentBox equals: 2.
	self assert: (game history positionOf: playerGuada) currentLap equals: 0.
	self assert: (game history positionOf: playerFacu) currentBox equals: 0.
	self assert: (game history positionOf: playerFacu) currentLap equals: 0.
	self assert: (game cardsOf: playerGuada) equals: (OrderedCollection with: speedCard).
	self assert: (game cardsOf: playerFacu ) equals: (OrderedCollection with: overloadCard with: mirrorCard with: speedCard)