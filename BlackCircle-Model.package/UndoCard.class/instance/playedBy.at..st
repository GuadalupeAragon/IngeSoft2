applying
playedBy: aPlayer at: aGame
	
	aGame history  lastEffectOrCard undoAt: aGame.
	aGame history savePlayed: self playedBy: aPlayer