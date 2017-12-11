accessing-positions
historyOf: aPlayer
	^ playersPositions  at: aPlayer ifAbsentPut: [ OrderedCollection with: (Position currentlyIn: 0 at: 0) ]