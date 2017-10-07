update
updatePositionOf: aPlayer at: position
	playersHistory at: aPlayer put: (Array with: ((playersHistory at: aPlayer) at: 2) with: position)
	