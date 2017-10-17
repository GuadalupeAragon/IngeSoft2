playing
assertIsTheTurnOf: aPlayer
	index = (players indexOfKey: aPlayer)
		ifFalse: [ PlayTurnException signal: 'not your turn' ]