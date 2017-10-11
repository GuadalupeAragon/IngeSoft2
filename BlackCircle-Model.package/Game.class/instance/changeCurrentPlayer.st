playing
changeCurrentPlayer
	players size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ]