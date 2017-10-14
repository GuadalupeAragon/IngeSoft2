initialize
withBoard: aBoard requiredLapsToWin: numberOfLaps involving: players sourceOfCards: aSource withDices: dices
	^ self new
		initializeWithBoard: aBoard
		withLaps: numberOfLaps
		involving: players
		sourceOfCards: aSource 
		withDices: dices