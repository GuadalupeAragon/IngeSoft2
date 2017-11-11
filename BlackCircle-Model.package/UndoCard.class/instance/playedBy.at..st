appling
playedBy: aPlayer at: aGame
	aGame lastEffectOrInstantCardPlay undoAt: aGame.
	aGame gameHistory add: self.