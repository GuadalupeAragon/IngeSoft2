playing
playTurn: aPlayer
	self assertIsTheTurnOf: aPlayer.
	self moveAndApplyEffectsTo: aPlayer.
	self
		ifWon: aPlayer
		do: [ winner := aPlayer.
			context gameEnded
		 ].
	context changeCurrentPlayer