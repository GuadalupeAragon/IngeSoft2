accessing-positions
historyOf: aPlayer
	^ playersPositionsHistories  at: aPlayer ifAbsentPut: [ OrderedCollection with: (Position currentlyIn: 0 at: 0) ]