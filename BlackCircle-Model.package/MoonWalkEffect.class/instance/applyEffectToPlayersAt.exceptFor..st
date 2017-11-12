applying
applyEffectToPlayersAt: game exceptFor: aPlayer
	| nextPosition |
	nBoxes := source nextInt: game board lapLength.
	(game players reject: [ :player | player = aPlayer ])
		keysDo: [ :player | 
			nextPosition := game positionWhenMoving: (self numberOfBoxes: nBoxes negated withAmortiguationAt: game) from: (game board positionOf: player).
			game board updatePositionOf: player at: nextPosition ]