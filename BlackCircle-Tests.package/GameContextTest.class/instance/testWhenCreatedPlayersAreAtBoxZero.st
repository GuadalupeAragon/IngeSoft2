tests
testWhenCreatedPlayersAreAtBoxZero
	| player gameHistory |
	player := Player named: 'guadalupe'.
	gameHistory := GameContext  withTotalNumberOfPlayers:1.
	self assert: (gameHistory positionOf: player) currentBox equals: 0