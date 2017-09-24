playing
playTurn: aPlayer
	| sumOfDices |
	self assertIsTheTurnOf: aPlayer.
	sumOfDices := diceCollection sumNumbers: [ :dice | dice throw ].
	self move: aPlayer foward: sumOfDices.
	0 < (board positionOf: aPlayer) currentBox 
		ifTrue: [self applyEffect: (board effectOfBox: (board positionOf: aPlayer) currentBox)
		to: aPlayer
		].
	self assertWinner: aPlayer.
	players size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ]