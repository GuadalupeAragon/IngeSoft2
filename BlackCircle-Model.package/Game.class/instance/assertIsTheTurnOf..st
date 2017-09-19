playing
assertIsTheTurnOf: aPlayer
	aPlayer = (players at: index)
		ifFalse: [ PlayTurnException signal: 'not your turn' ]