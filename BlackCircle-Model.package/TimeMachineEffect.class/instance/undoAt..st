applying
undoAt: aGame
	|  player |
	player := aGame  history playerToWhomWasApplied: self.
	self applyTo: player at: aGame atPosition: (aGame history  positionOf: player)