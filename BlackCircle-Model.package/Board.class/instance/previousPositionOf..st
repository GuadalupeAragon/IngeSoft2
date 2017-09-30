accessing
previousPositionOf: aPlayer
	^ playersHistory isEmpty
		ifTrue: [ (playersHistory at: aPlayer ifAbsentPut: [ Array with: (Position currentlyIn: 0 at: 0)with: (Position currentlyIn: 0 at: 0) ]) at: 2]
		ifFalse: [ (playersHistory at: aPlayer) at: 1 ]