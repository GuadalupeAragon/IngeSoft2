initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers generatingCardsFrom: aSource withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	cardSource := aSource.
	players := OrderedDictionary new.
	thePlayers do: [ :player | players at: player ifAbsentPut: [ OrderedCollection with: self playerPickACard with: self playerPickACard ] ].
	currentPlayerIndex := 1.
	hasGameEnded := false.
	dices := theDices