applying
applyTo: aPlayer at: game atPosition: position
	game players
		do: [ :player | "Facu manda - guada presente ahora" game board updatePositionOf: player at: (Position currentlyIn: 0 at: 0) ]