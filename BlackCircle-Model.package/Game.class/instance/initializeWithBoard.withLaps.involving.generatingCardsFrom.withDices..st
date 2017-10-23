initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers generatingCardsFrom: aSource withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	players := OrderedDictionary  new.
	thePlayers
		do: [ :player | players at: player ifAbsentPut: [ self playerPickCardsFrom: aSource ] ].
	currentPlayerIndex := 1.
	hasGameEnded := false.
	dices := theDices