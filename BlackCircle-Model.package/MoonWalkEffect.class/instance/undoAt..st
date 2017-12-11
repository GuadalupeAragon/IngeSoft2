applying
undoAt: aGame
	|  player |
	player := aGame context  playerToWhomWasApplied: self.
	self applyEffectToPlayersAt: aGame exceptFor: player  moving: nBoxes
	