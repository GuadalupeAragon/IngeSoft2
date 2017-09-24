update
updatePositionOf: aPlayer withBox: numberOfBox withLap: numberOfLap
	playersHistory
		at: aPlayer
		put:
			(Array with:((playersHistory at: aPlayer) at:2) with:(Position inLap: numberOfLap inBox: numberOfBox))
	"en playersHistory en la key aPlayer pongo lo que tenia antes y agrego la nueva position"