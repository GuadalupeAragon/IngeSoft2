applying
applyTo: aPlayer at: game atPosition: anObject
	| previousPosition |
	previousPosition := game board previousPositionOf: aPlayer.
	game board updatePositionOf: aPlayer at: previousPosition