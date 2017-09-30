move
moveToPreviousPosition: aPlayer
	| position |
	position := board previousPositionOf: aPlayer.
	board updatePositionOf: aPlayer at: position 