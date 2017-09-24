move
movePlayersToBeginning
	1 to: players size do: [ :i| board updatePositionOf: (players at: i)  withBox: 0 withLap: ((board positionOf: (players at:i)) currentLap)]