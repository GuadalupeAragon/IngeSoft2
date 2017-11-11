test-PermanentCard
testPlayerCantPlayCardWhenItIsNotHisTurn
	| playerGuada board game overloadCard playerFacu deck |
	playerFacu := self playerFacu.
	playerGuada := self playerGuada.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	overloadCard := self overloadCard.
	deck := self deckWith: overloadCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerFacu.
			playerGuada}
		generatingCardsFrom: deck
		withDices:
			{(Dice
				with: 6
				facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4)))}.
	game playTurn: playerFacu.
	self
		should: [ game apply: overloadCard playedBy: playerFacu to: playerGuada ]
		raise: PlayTurnException