applying
undoAt: aGame
	aGame players do: [ :player | aGame board updatePositionOf: player at: (aGame board previousPositionOf: player) ]
	