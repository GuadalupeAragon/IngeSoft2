applying
applyTo: aPlayer at: aGame atPosition: aPosition
	effect invertedApplyTo: aPlayer at: aGame at: aPosition.
	aGame context savePlayed: self playedBy:aPlayer