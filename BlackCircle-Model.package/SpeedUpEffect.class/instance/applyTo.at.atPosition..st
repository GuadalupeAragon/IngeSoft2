applying
applyTo: aPlayer at: game atPosition: position
	| nextPosition |
	nextPosition := game positionWhenMoving: (self numberOfBoxes: 4 withAmortiguationAt: game ) from: position.
	game board updatePositionOf: aPlayer at: nextPosition