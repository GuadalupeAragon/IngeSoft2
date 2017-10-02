applying
applyTo: aPlayer at: game atPosition: position
	| nextPosition |
	nextPosition := game positionWhenMoving: -4 from: position.
	game board updatePositionOf: aPlayer at: nextPosition