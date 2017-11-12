applying
reapplyAt: aGame
	| player |
	player := self playerToWhomEffectWasAppliedAt: aGame.
	self applyTo: player at: aGame atPosition: (aGame board positionOf: player)