initialize
withBoard: aBoard requiredLapsToWin: numberOfLaps involving: players withDices: dices
	^ self new
		initializeWithBoard: aBoard
		withLaps: numberOfLaps
		involving: players
		withDices: dices