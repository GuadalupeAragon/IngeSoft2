playing
changeCurrentPlayer
	players size = currentPlayerIndex
		ifTrue: [ currentPlayerIndex := 1 ]
		ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ]