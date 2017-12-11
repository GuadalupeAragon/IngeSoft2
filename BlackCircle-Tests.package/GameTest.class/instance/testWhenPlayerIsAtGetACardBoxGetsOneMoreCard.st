test-effects
testWhenPlayerIsAtGetACardBoxGetsOneMoreCard
	| board player game speedCard overloadCard deck |
	player := self playerGuada.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					GetACardEffect new}).
	speedCard := SpeedCard new.
	overloadCard := OverloadCard new.
	deck := Deck generatingCardsFrom: (FixedCardSequence
				generating:
					{speedCard.
					overloadCard}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2)))}.
	game playTurn: player.
	self assert: (game context positionOf: player) currentBox equals: 2.
	self assert: (game context positionOf: player) currentLap equals: 0.
	self assert: (game cardsOf: player) equals: (OrderedCollection with: speedCard with: overloadCard with: speedCard)