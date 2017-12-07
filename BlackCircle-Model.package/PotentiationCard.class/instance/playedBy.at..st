applying
playedBy: aPlayer at: aGame
	| effect  |
	effect := aGame history lastEffectOrCard.
	
	effect reapplyAt: aGame.
	aGame history savePlayed: self playedBy: aPlayer