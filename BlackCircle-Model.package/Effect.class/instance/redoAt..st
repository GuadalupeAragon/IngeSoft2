accessing
redoAt: aGame
	| player |
	player := aGame  context previousPlayerWhoPlayed.
	self applyTo: player at: aGame atPosition: (aGame context positionOf: player)