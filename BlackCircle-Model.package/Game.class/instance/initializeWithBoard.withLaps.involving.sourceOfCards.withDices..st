initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers sourceOfCards: aSource withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	players := OrderedDictionary  new.
	thePlayers
		do: [ :player | players at: player ifAbsentPut: [ self playerPickCardsFrom: aSource ] ].
	index := 1.
	hasGameEnded := false.
	dices := theDices