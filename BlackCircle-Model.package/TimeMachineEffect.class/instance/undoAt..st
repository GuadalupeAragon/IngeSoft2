applying
undoAt: aGame
	|  player |
	player := aGame  context playerToWhomWasApplied: self.
	self applyTo: player at: aGame atPosition: (aGame context  positionOf: player)