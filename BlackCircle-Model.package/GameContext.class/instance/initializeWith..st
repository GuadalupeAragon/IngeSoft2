initialization
initializeWith: aTotalNumberOfPlayers
	totalNumberOfPlayers := aTotalNumberOfPlayers.
	currentAmortiguation := 1.
	currentPlayerIndex := 1.
	hasGameEnded := false.
		playersPositions := Dictionary new.
	gameHistory := OrderedCollection new