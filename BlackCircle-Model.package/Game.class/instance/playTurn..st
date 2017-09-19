playing
playTurn: aPlayer
	| sumOfDices |
	self assertIsTheTurnOf: aPlayer.
	sumOfDices := diceCollection sumNumbers: [ :dice | dice throw ].

	self move: aPlayer foward: sumOfDices.
	self assertWinner: aPlayer.
	players size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ]