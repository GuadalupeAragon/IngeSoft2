accessing-previousPlayed
previousPlayed
	^ (gameHistory  last: (2 min: gameHistory  size)) first