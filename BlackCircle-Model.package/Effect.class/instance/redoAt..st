accessing
redoAt: aGame
	| player |
	player := aGame previousEffect at:2.
	self applyTo: player at: aGame atPosition: (aGame board positionOf: player)