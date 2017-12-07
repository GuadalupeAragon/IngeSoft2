applying
playedBy: aPlayer at: aGame
	
	aGame context  lastEffectOrCard undoAt: aGame.
	aGame context savePlayed: self playedBy: aPlayer