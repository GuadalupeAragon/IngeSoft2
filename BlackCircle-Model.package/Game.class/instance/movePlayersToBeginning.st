move
movePlayersToBeginning
	
	players do: [ :i | 
		board
			updatePositionOf: (players at: i)
			withBox: 0
			withLap: (board positionOf: (players at: i)) currentLap ]