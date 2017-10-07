tests
testOnlyRightPlayerCanPlay
	| board game playerOne playerTwo |
	playerOne := self playerGuada.
	playerTwo := self playerHijitus.
	board := Board
		with: 10
		source: (FixedEffectSequence generating: {NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerOne.
			playerTwo}
		withDices: {(Dice with: 6 source: Random new)}.
	game playTurn: playerOne.
	game playTurn: playerTwo.
	game playTurn: playerOne.
	self should: [ game playTurn: playerOne ] raise: PlayTurnException