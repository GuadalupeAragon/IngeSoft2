tests
testWhenCreatedPlayerIsAtBoxZero
	| player1 player2 gameContext |

	player1 := Player named: 'guadalupe'.
	player2 := Player named: 'mariano'.
	gameContext := GameContext  withTotalNumberOfPlayers:2.
	self assert: (gameContext positionOf: player1) currentBox equals: 0.
	self assert: (gameContext positionOf: player2) currentBox equals: 0