initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers generatingCardsFrom: aDeck withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	history := GameHistory initialization.
	deck := aDeck.
	players := OrderedDictionary new.
	cardsToBeApplied := Dictionary new.
	thePlayers
		do: [ :player | 
			players at: player put: (OrderedCollection with: deck nextCard with: deck nextCard).
			cardsToBeApplied at: player put: OrderedCollection new ].
	currentPlayerIndex := 1.
	hasGameEnded := false.
	dices := theDices.
	gameHistory := OrderedCollection new.
	currentAmortiguation := 1