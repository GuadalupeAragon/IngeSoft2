applying
undoAt: aGame
	|  player |
	player := aGame history  playerToWhomWasApplied: self.
	self applyEffectToPlayersAt: aGame exceptFor: player  moving: nBoxes
	