playing
changeCurrentPlayer
	totalNumberOfPlayers  = currentPlayerIndex
		ifTrue: [ currentPlayerIndex := 1 ]
		ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ]