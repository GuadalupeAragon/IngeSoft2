applying
applyTo: aPlayer at: game atPosition: position
	| nextPosition |
	nextPosition := game positionWhenMoving: (AmortiguatedPositionCalculator forNumber: 4 at: game ) from: position.
	game board updatePositionOf: aPlayer at: nextPosition