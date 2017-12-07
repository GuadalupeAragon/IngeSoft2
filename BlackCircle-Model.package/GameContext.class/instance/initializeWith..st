initialization
initializeWith: aTotalNumberOfPlayers
	totalNumberOfPlayers := aTotalNumberOfPlayers.
	currentAmortiguation := 1.
	currentPlayerIndex := 1.
	hasGameEnded := false.
		playersPositionsHistories := Dictionary new.
	gameHistory := OrderedCollection new