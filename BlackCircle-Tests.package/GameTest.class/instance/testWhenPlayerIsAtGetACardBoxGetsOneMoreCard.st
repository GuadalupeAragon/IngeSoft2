tests
testWhenPlayerIsAtGetACardBoxGetsOneMoreCard
	| board player game speedCard overloadCard |
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
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{speedCard.
					overloadCard})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 2.
	self assert: (board positionOf: player) currentLap equals: 0.
	self assert: (game cardsOf: player) equals: (OrderedCollection with: speedCard with: overloadCard with: speedCard)