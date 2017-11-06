playing
moveAndApplyEffectsTo: aPlayer
	| nextPosition roll numberOfBoxes |
	numberOfBoxes := (cardsToBeApply at: aPlayer)
		sumNumbers: [ :card | card applyCard ].
	roll := self throwDices.
	nextPosition := self
		positionWhenMoving: roll + numberOfBoxes
		from: (board positionOf: aPlayer).
	self assertEffectIsApplyableTo: aPlayer at: nextPosition