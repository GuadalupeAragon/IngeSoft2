accessing
positionOf: aPlayer
	"va a devolver la posicion actual de player"

	^ (playersHistory
		at: aPlayer
		ifAbsentPut: [ Array with: (Position inLap: 0 inBox: 0) with: (Position inLap: 0 inBox: 0) ])at:2