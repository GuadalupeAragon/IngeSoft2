applying
applyTo: aPlayer at: game with: board
	game movePlayersExcept: aPlayer backwards: (source nextInt: board lapLength)