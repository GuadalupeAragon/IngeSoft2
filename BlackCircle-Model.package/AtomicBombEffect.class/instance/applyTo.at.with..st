applying
applyTo: aPlayer at: game with: board
	game players
		do: [ :player | 
			board
				updatePositionOf: player
				at: ( Position currentlyIn: 0 at: 0 ) ]