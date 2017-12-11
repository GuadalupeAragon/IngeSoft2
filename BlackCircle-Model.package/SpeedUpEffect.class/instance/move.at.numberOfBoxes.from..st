applying
move: aPlayer at: aGame numberOfBoxes: aNumberOfBoxes from: aPosition
	| nextPosition |
	nextPosition := aGame positionWhenMoving: (self numberOfBoxes: aNumberOfBoxes withAmortiguationAt: aGame) from: aPosition.
	aGame context updatePositionOf: aPlayer at: nextPosition.
	
	
