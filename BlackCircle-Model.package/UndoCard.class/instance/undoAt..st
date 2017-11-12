accessing
undoAt: aGame
	(aGame previousEffect at: 1) redoAt: aGame.
	