tests
testPlayerCantUseCardHeDoesntHave
	| playerGuada board game overloadCard |
	playerGuada := self playerGuada.
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	overloadCard := OverloadCard new.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {playerGuada}
		generatingCardsFrom: (FixedCardSequence generating: {overloadCard})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 )))}.
	self should: [ game player: playerGuada appliesCard: SpeedCard new to: playerGuada ] raise: PlayTurnException