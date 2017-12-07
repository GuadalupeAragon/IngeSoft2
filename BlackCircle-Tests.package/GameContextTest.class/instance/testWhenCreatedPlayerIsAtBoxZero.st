tests
testWhenCreatedPlayerIsAtBoxZero
	| player1 player2 gameHistory |

	player1 := Player named: 'guadalupe'.
	player2 := Player named: 'mariano'.
	gameHistory := GameContext  withTotalNumberOfPlayers:2.
	self assert: (gameHistory positionOf: player1) currentBox equals: 0.
	self assert: (gameHistory positionOf: player2) currentBox equals: 0