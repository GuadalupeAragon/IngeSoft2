applying
applyTo: aPlayer at: game atPosition: position
	nBoxes := source nextInt: game board lapLength.
	self applyEffectToPlayersAt: game exceptFor: aPlayer moving: nBoxes negated.
	game history updatePositionOf: aPlayer at: position.
		game history saveEffect: self appliedTo: aPlayer.