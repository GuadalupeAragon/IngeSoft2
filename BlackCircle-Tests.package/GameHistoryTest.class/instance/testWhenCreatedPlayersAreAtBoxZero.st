tests
testWhenCreatedPlayersAreAtBoxZero
	| player gameHistory |
	
	player := Player named: 'guadalupe'.
	gameHistory := GameHistory initialization.
	self assert: (gameHistory positionOf: player) currentBox equals: 0