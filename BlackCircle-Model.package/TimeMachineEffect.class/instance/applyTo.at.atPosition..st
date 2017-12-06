applying
applyTo: aPlayer at: game atPosition: aPosition
	| previousPosition |
	previousPosition := game history  previousPositionOf: aPlayer.
	
	game history updatePositionOf: aPlayer at: previousPosition