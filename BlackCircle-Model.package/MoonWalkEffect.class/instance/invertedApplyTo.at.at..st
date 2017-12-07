applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	| nextPosition |
	nBoxes := source nextInt: aGame board lapLength.
	nextPosition := aGame
		positionWhenMoving: (self numberOfBoxes: nBoxes negated withAmortiguationAt: aGame)
		from: aPosition.
	aGame history updatePositionOf: aPlayer at: nextPosition