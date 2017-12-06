tests
testWhenCreatedPlayerIsAtBoxZero
	| player1 player2 gameHistory |

	player1 := Player named: 'guadalupe'.
	player2 := Player named: 'mariano'.
	gameHistory := GameHistory initialization.
	self assert: (gameHistory positionOf: player1) currentBox equals: 0.
	self assert: (gameHistory positionOf: player2) currentBox equals: 0