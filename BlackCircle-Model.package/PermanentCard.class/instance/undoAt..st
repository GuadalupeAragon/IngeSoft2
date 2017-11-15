applying
undoAt: aGame
	| player |
	player := aGame ownerOfTheCardRemoved.
	(aGame cardsToBeAppliedAt: player) add: aGame lastCardRemoved	