tests
testOnlyRightPlayerCanPlay
	| board game playerOne playerTwo |
	playerOne := Player named: 'Guada'.
	playerTwo := Player named: 'Hijitus'.
	board := Board with: 10 source: (FixedEffectSequence generating: {NoEffect new}).
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