accessing
positionOf: aPlayer
	"va a devolver la posicion actual de player"

	^ (playersHistory at: aPlayer ifAbsentPut: [ Array with: (Position currentlyIn: 0 at: 0) with: (Position currentlyIn: 0 at: 0) ]) at: 2