applying
applyTo: aPlayer at: game with: board
	game movePlayersExcept: aPlayer backward: (source nextInt: board lapLength)