applying
playedBy: aPlayer at: aGame
	| effect |
	effect := aGame context lastEffectOrCard.

	effect reapplyAt: aGame.
		aGame context savePlayed: self playedBy: aPlayer.