applying
applyTo: aPlayer at: game atPosition: position
	nBoxes := source nextInt: game board lapLength.
	self applyEffectToPlayersAt: game exceptFor: aPlayer moving: nBoxes negated.
	game context updatePositionOf: aPlayer at: position.
		game context saveEffect: self appliedTo: aPlayer.