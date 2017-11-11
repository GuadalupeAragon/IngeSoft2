test-PermanentCard
testPlayerCantUseCardHeDoesntHave
	| playerGuada board game overloadCard deck |
	playerGuada := self playerGuada.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	overloadCard := self overloadCard.
	deck := self deckWith: overloadCard.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {playerGuada}
		generatingCardsFrom: deck
		withDices:
			{(Dice
				with: 6
				facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4)))}.
	self
		should:
			[ game apply: SpeedCard new playedBy: playerGuada to: playerGuada ]
		raise: PlayTurnException