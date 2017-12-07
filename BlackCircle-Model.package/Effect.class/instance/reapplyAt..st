applying
reapplyAt: aGame
	| player |
	
	player := aGame  context playerToWhomWasApplied: self.
	self applyTo: player at: aGame atPosition: (aGame context positionOf: player)