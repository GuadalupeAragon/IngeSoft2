appling
playedBy: aPlayer at: aGame
	| effect player |
	effect := aGame lastEffectOrCard.
	player := aGame lastPlayerWhoPlayed.
	effect reapplyAt: aGame.
	aGame savePlayed: self playedBy: aPlayer