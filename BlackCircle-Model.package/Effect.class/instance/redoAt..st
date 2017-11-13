accessing
redoAt: aGame
	| player |
	player := aGame previousPlayerWhoPlayed.
	self applyTo: player at: aGame atPosition: (aGame board positionOf: player)