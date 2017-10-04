initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	players := thePlayers.	
	index := 1.
	hasGameEnded := false.
	dices := theDices	