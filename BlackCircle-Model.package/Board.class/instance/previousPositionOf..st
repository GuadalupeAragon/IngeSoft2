accessing
previousPositionOf: aPlayer
	playersHistory size = 0
		ifTrue: [ ^ (playersHistory
				at: aPlayer
				ifAbsentPut: [ Array with: (Position inLap: 0 inBox: 0) with: (Position inLap: 0 inBox: 0) ])
				at: 2 ]
		ifFalse: [ ^ (playersHistory
				at: aPlayer
		)
				at: 1 ]