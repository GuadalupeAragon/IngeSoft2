appling
playedBy: aPlayer at: aGame
	| effect player |
	effect := aGame lastEffectOrInstantCardPlay at: 1.
	player := aGame lastEffectOrInstantCardPlay at: 2.
	effect reapplyAt:aGame."applyTo: player at: aGame atPosition: (aGame board positionOf: player)"