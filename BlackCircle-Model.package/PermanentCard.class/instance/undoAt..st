accessing
undoAt:aGame
| player |
	player := aGame lastEffectOrInstantCardPlay at: 3.
	(aGame cardsToBeAppliedAt: player) add: (aGame lastEffectOrInstantCardPlay at: 2)