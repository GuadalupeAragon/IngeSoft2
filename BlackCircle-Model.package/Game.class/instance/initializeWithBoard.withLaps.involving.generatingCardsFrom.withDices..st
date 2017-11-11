initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers generatingCardsFrom: aDeck withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	deck := aDeck.
	players := OrderedDictionary new.
	cardsToBeApplied := Dictionary new.
	thePlayers
		do: [ :player | 
			players at: player put: (OrderedCollection with: deck playerPickACard with: deck playerPickACard).
			cardsToBeApplied at: player put: OrderedCollection new ].
	currentPlayerIndex := 1.
	hasGameEnded := false.
	dices := theDices.
	currentAmortiguation := 1