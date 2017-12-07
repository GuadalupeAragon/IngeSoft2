applying
applyEffectToPlayersAt: game exceptFor: aPlayer moving: aNumberOfBoxes
	| nextPosition |
	(game players reject: [ :player | player = aPlayer ])
		do: [ :player | 
			nextPosition := game positionWhenMoving: (self numberOfBoxes: aNumberOfBoxes  withAmortiguationAt: game) from: (game context positionOf: player).
			game context updatePositionOf: player at: nextPosition ].
		
	
		