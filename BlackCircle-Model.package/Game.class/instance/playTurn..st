playing
playTurn: aPlayer
	| sumOfDices |
	self assertIsTheTurnOf: aPlayer.
	sumOfDices := dices sumNumbers: [ :dice | dice throw ].
	self move: aPlayer forward: sumOfDices.
	self assertApplyEffectTo: aPlayer.
	
	self assertWinner: aPlayer.
	players size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ]