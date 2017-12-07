applying
applyTo: aPlayer at: game atPosition: position
	game context updatePositionOf: aPlayer at: position.
		game context saveEffect: self appliedTo: aPlayer