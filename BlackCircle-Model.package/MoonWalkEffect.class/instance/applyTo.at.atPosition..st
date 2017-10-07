applying
applyTo: aPlayer at: game atPosition: position
	self applyEffectToPlayersAt: game exceptFor: aPlayer.
	game board updatePositionOf: aPlayer at: position