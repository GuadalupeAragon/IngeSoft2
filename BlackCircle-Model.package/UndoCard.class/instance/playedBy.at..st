applying
playedBy: aPlayer at: aGame
	aGame lastEffectOrCard undoAt: aGame.

	aGame savePlayed: self playedBy: aPlayer
	