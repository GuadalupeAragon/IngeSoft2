applying
undoAt: aGame
	| player |
	player := aGame  history playerToWhomWasApplied: self.
	self
		move: player
		at: aGame
		numberOfBoxes: 4
		from: (aGame history  positionOf: player)