tests
testPlayerCantPlayCardWhenItIsNotHisTurn
	| playerGuada board game overloadCard playerFacu |
	playerFacu := self playerFacu.
	playerGuada := self playerGuada.
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	overloadCard := OverloadCard new.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {playerFacu.playerGuada}
		generatingCardsFrom: (FixedCardSequence generating: {overloadCard})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4)))}.
	game playTurn: playerFacu.
	self should: [ game player: playerFacu appliesCard: overloadCard  to: playerGuada ] raise: PlayTurnException