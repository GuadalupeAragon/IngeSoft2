update
updatePositionOf: aPlayer at: position
	playersHistory
		at: aPlayer
		put:
			(Array with:((playersHistory at: aPlayer) at:2) with:(position))
	"en playersHistory en la key aPlayer pongo lo que tenia antes y agrego la nueva position"