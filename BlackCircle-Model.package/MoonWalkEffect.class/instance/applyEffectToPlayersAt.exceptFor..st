applying
applyEffectToPlayersAt: game exceptFor: aPlayer
	| nextPosition |
	(game players reject: [ :player | player = aPlayer ])
		do: [ :player | 
			nextPosition := game
				positionWhenMoving: (source nextInt: game board lapLength) negated
				from: (game board positionOf: player).
			game board updatePositionOf: player at: nextPosition ]