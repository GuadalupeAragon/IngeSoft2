initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers sourceOfCards: aSource withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	players := Dictionary new.
	players := thePlayers
		do: [ :player | players at: player put: (self playerPickCardsFrom: aSource ) ].
	index := 1.
	hasGameEnded := false.
	dices := theDices