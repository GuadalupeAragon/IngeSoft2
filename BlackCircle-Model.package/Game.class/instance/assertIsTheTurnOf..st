playing
assertIsTheTurnOf: aPlayer
	currentPlayerIndex = (players indexOfKey: aPlayer)
		ifFalse: [ PlayTurnException signal: 'not your turn' ]