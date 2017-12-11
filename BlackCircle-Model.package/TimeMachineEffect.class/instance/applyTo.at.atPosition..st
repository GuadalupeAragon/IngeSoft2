applying
applyTo: aPlayer at: game atPosition: aPosition
	| previousPosition |
	previousPosition := game context previousPositionOf: aPlayer.
	game context updatePositionOf: aPlayer at: previousPosition.
	game context saveEffect: self appliedTo: aPlayer