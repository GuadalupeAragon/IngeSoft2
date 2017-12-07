applying
applyTo: aPlayer at: game atPosition: position
	game picksCard: aPlayer.
	game context updatePositionOf: aPlayer at: position.
		game context saveEffect: self appliedTo: aPlayer