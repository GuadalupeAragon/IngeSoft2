accessing
redoAt: aGame
	| player |
	player := aGame  history previousPlayerWhoPlayed.
	self applyTo: player at: aGame atPosition: (aGame history positionOf: player)