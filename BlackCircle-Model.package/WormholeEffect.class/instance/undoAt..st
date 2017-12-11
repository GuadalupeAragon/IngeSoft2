applying
undoAt: aGame
	| player |
	player := aGame  context playerToWhomWasApplied: self.
	self
		move: player
		at: aGame
		numberOfBoxes: 4
		from: (aGame context  positionOf: player)