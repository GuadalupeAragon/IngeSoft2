playing
ifWon: aPlayer do: aBlock
	totalLaps <= (board positionOf: aPlayer) currentLap
		ifTrue: aBlock