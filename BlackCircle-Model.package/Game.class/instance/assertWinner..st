playing
assertWinner: aPlayer
	laps <= (board positionOf: aPlayer) currentLap
		ifTrue: [ winner := aPlayer.
			hasGameEnded := true ]