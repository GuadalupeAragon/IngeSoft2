tests
testWhenCreatedPlayersAreAtBoxZero
	| player gameContext |
	player := Player named: 'guadalupe'.
	gameContext := GameContext  withTotalNumberOfPlayers:1.
	self assert: (gameContext positionOf: player) currentBox equals: 0