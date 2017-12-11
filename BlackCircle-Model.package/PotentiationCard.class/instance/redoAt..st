applying
redoAt: aGame
	| effect |
	effect := aGame context previousEffectOrCard.
	effect reapplyAt: aGame.