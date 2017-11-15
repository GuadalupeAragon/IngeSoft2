applying
undoAt: aGame
	|  player |
	player := aGame playerToWhomWasApplied: self.
	self applyTo: player at: aGame atPosition: (aGame board positionOf: player)