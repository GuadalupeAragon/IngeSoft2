move
movePlayersToBeginning
	players
		do:
			[ :player | board updatePositionOf: player at: (Position currentlyIn: ((board positionOf: player) currentLap) at: 0) ]