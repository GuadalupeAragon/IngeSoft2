applying
playedBy: aPlayer at: aGame
	| effect |

	effect := aGame context lastEffectOrCard.
		aGame context savePlayed: self playedBy: aPlayer.
	effect reapplyAt: aGame