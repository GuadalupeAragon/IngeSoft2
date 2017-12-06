applying
reapplyAt: aGame
	| player |
	
	player := aGame playerToWhomWasApplied: self.
	self applyTo: player at: aGame atPosition: (aGame history positionOf: player)