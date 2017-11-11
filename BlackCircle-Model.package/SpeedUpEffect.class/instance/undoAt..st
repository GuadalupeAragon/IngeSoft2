accessing
undoAt: aGame
	| player nextPosition |
	player := aGame players keyAtIndex: (aGame currentPlayerIndex -1).
	nextPosition := aGame positionWhenMoving: (self numberOfBoxes: -4 withAmortiguationAt: aGame) from: (aGame board positionOf: player).
	aGame board updatePositionOf: player at: nextPosition