accessing
historyOf: aPlayer
	^ playersHistory
		at: aPlayer
		ifAbsentPut: [ OrderedCollection with: (Position currentlyIn: 0 at: 0) ]