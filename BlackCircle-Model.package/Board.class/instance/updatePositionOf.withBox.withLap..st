update
updatePositionOf: aPlayer withBox: numberOfBox withLap: numberOfLap
	"(self positionOf: aPlayer) updateBox: numberOfBox.
	(self positionOf: aPlayer) updateLap: numberOfLap"

	playersPosition at: aPlayer put: (Position inLap: numberOfLap inBox: numberOfBox)