initialization
initializeWithBoard: aBoard withLaps: numberOfLaps involving: thePlayers generatingCardsFrom: aDeck withDices: theDices
	board := aBoard.
	totalLaps := numberOfLaps.
	deck := aDeck.
	dices := theDices.
	players := OrderedDictionary new.
	cardsToBeApplied := Dictionary new.
	thePlayers
		do: [ :player | 
			players at: player put: (OrderedCollection with: deck nextCard with: deck nextCard).
			cardsToBeApplied at: player put: OrderedCollection new ].
	context := GameContext withTotalNumberOfPlayers: players size