playing
ifWon: aPlayer do: aBlock
	totalLaps <= (context positionOf: aPlayer) currentLap
		ifTrue: aBlock