accessing
previousEffectPlayed
	^ (gameHistory  last: (2 min: gameHistory  size)) first