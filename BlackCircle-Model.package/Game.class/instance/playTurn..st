playing
playTurn: aPlayer
	| sumOfDices nextPosition |
	self assertIsTheTurnOf: aPlayer.
	sumOfDices := dices sumNumbers: [ :dice | dice throw ].
	nextPosition := self positionWhenMoving: sumOfDices from: (board positionOf: aPlayer).
	self assertApplyEffectTo: aPlayer atPosition: nextPosition .
	self assertWinner: aPlayer.
	players size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ]