accessing
undoAt: aGame
	| player nextPosition |
	player := self playerToWhomEffectWasAppliedAt: aGame.
	nextPosition := aGame positionWhenMoving: (self numberOfBoxes: -4 withAmortiguationAt: aGame) from: (aGame board positionOf: player).
	aGame board updatePositionOf: player at: nextPosition