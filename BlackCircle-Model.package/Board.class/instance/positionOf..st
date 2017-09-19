accessing
positionOf: aPlayer
	^ playersPosition at: aPlayer ifAbsentPut: [ Position inLap: 0 inBox: 0 ]