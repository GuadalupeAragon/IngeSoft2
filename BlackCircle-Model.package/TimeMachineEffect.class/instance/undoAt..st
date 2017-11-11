accessing
undoAt: aGame
	| previousPosition player |
	player := aGame players keyAtIndex: aGame currentPlayerIndex - 1.
	previousPosition := aGame board previousPositionOf: player.
	aGame board updatePositionOf: player at: previousPosition