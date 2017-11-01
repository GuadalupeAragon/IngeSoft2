tests
testOnlyRightPlayerCanPlay
	| board game playerOne playerTwo |
	playerOne := self playerGuada.
	playerTwo := self playerHijitus.
	board := Board with: 10 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{Snapshot new.
					Snapshot new})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: Random new)}.
	game playTurn: playerOne.
	game playTurn: playerTwo.
	game playTurn: playerOne.
	self should: [ game playTurn: playerOne ] raise: PlayTurnException