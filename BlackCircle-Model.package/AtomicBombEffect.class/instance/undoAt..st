applying
undoAt: aGame
	aGame players do: [ :player | aGame context updatePositionOf: player at: (aGame context previousPositionOf: player) ]
	