applying
undoAt: aGame
	aGame players do: [ :player | aGame history updatePositionOf: player at: (aGame history previousPositionOf: player) ]
	