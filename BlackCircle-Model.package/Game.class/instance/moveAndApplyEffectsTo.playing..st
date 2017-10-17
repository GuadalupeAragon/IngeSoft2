playing
moveAndApplyEffectsTo: aPlayer playing: aPermanentCard
	| nextPosition roll |
	roll := self throwDices.
	nextPosition := self positionWhenMoving: roll from: (board positionOf: aPlayer).
	nextPosition := self applyCard: aPermanentCard to: aPlayer at: nextPosition .
	self assertEffectIsApplyableTo: aPlayer at: nextPosition