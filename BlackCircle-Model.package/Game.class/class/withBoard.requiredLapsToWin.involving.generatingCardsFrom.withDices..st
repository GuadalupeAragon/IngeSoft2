initialize
withBoard: aBoard requiredLapsToWin: numberOfLaps involving: players generatingCardsFrom: aSource withDices: dices
	^ self new
		initializeWithBoard: aBoard
		withLaps: numberOfLaps
		involving: players
		generatingCardsFrom: aSource 
		withDices: dices