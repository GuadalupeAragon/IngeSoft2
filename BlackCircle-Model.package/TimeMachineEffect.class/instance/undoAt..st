accessing
undoAt: aGame
	| previousPosition player |
	
	player := aGame playerToWhomWasApplied: self.
	previousPosition := aGame board previousPositionOf: player.
	aGame board updatePositionOf: player at: previousPosition