tests
testWhenUsingBoardWithRandomEffectGeneratorAPlayerWins
	| player board game |
	player := self playerFacu.
	board := Board with: 20 source: RandomEffectGenerator new.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		withDices: {(Dice with: 6 source: Random new)}.
	[ game hasEnded = false ] whileTrue: [ game playTurn: player ].
	self assert: game winner equals: player