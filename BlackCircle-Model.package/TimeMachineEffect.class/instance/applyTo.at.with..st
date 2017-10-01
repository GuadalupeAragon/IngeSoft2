applying
applyTo: aPlayer at: game with: board
	| position |
	position := board previousPositionOf: aPlayer.
	board updatePositionOf: aPlayer at: position