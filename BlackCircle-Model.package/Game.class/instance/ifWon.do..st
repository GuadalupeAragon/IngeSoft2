playing
ifWon: aPlayer do: aBlock
	totalLaps <= (history  positionOf: aPlayer) currentLap
		ifTrue: aBlock