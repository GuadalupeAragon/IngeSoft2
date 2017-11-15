applying
undoAt: aGame
	| player |
	player := aGame ownerOfTheCardRemoved.
	aGame cardsToBeAppliedAt: player reAdd: (aGame lastCardRemoved)
		