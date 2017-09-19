initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers withDices: dices
	board := aBoard.
	laps := numberOfLaps.
	players := thePlayers copyFrom: 1 to: thePlayers size.
	
	index := 1.
	endOfGame := false.
	diceCollection := dices copyFrom: 1 to: dices size