appling
playedBy: aPlayer at: aGame
	(aGame lastEffectOrInstantCardPlay at: 1) undoAt: aGame.
	aGame gameHistory add: (OrderedCollection with:self with: aPlayer )