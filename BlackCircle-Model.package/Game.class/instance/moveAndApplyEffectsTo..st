playing
moveAndApplyEffectsTo: aPlayer
	| nextPosition roll numberOfBoxes |
	numberOfBoxes := (self cardsToBeAppliedAt: aPlayer)
		sumNumbers: [ :card | card numberOfBoxesToMove ].
	roll := self throwDices.
	nextPosition := self
		positionWhenMoving: roll + numberOfBoxes
		from: (board positionOf: aPlayer).
	self assertEffectIsApplyableTo: aPlayer at: nextPosition