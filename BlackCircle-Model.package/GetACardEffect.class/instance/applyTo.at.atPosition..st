applying
applyTo: aPlayer at: game atPosition: position
	
	game picksCard: aPlayer.

	game history updatePositionOf: aPlayer at: position