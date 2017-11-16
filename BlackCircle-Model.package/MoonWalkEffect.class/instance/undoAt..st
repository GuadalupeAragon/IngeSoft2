applying
undoAt: aGame
	|  player |
	player := aGame playerToWhomWasApplied: self.
	self applyEffectToPlayersAt: aGame exceptFor: player  moving: nBoxes
	