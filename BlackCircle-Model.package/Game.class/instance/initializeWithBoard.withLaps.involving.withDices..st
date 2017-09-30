initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers withDices: theDices
	board := aBoard.
	laps := numberOfLaps.
	players := thePlayers.	
	index := 1.
	hasGameEnded := false.
	dices := theDices	