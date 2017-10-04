playing
moveAndApplyEffectsTo: aPlayer
	| nextPosition roll |
	roll := self throwDices.
	nextPosition := self
		positionWhenMoving: roll
		from: (board positionOf: aPlayer).
	self assertEffecrIsApplyableTo: aPlayer at: nextPosition