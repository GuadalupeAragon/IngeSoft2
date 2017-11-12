applying
applyTo: aPlayer at: game atPosition: aPosition
	| previousPosition |
	previousPosition := game board previousPositionOf: aPlayer.
	
	game board updatePositionOf: aPlayer at: previousPosition