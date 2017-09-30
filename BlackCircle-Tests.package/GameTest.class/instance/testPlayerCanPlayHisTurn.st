tests
testPlayerCanPlayHisTurn
	| player board game |
	player := Player named: 'Hijitus'.
	board := Board with: 600 source: (FixedEffectSequence generating: {NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		withDices:
			{(Dice with: 6 source: Random new).
			(Dice with: 4 source: Random new)}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox > 0