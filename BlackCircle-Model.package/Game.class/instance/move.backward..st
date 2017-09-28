move
move: aPlayer backward: aNumberOfBoxes
	| position  nextPosition |
	position := board positionOf: aPlayer.
	nextPosition := self positionWhenMoving: aNumberOfBoxes from: position.
	board updatePositionOf: aPlayer at: nextPosition