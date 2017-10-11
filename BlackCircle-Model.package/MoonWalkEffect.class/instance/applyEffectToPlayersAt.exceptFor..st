applying
applyEffectToPlayersAt: game exceptFor: aPlayer
	| nextPosition playersCopy |
	playersCopy := game players reject: [ :player | player = aPlayer ].
	playersCopy
		do: [ :player | 
			nextPosition := game	positionWhenMoving: (source nextInt: game board lapLength) negated	from: (game board positionOf: player).
			game board updatePositionOf: player at: nextPosition ]