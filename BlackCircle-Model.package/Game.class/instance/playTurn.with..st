playing
playTurn: aPlayer with: aPermanetCard
	self assertIsTheTurnOf: aPlayer.
	self moveAndApplyEffectsTo: aPlayer playing: aPermanetCard .
	self
		ifWon: aPlayer
		do: [ winner := aPlayer.
			hasGameEnded := true ].
	self changeCurrentPlayer