update
updatePositionOf: aPlayer withBox: numberOfBox withLap: numberOfLap
	
	playersPosition at: aPlayer put: (Position inLap: numberOfLap inBox: numberOfBox)