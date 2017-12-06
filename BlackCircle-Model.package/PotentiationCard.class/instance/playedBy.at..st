applying
playedBy: aPlayer at: aGame
	| effect player |
	effect := aGame history  lastEffectOrCard.
	player := aGame  history  lastPlayerWhoPlayed.
	effect reapplyAt: aGame.
	aGame history savePlayed: self playedBy: aPlayer