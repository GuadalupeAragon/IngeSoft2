applying
applyTo: aPlayer at: game atPosition: position
	game history updatePositionOf: aPlayer at: position.
		game history saveEffect: self appliedTo: aPlayer