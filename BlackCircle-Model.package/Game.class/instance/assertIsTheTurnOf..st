playing
assertIsTheTurnOf: aPlayer
	(context currentPlayerIndex) = (players indexOfKey: aPlayer)
		ifFalse: [ PlayTurnException signal: 'not your turn' ]