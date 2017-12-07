applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	| nextPosition |
	(aGame players reject: [ :player | player = aPlayer ])
		do: [ :player | 
			nextPosition := aGame positionWhenMoving: (self numberOfBoxes: 4 withAmortiguationAt: aGame) from: (aGame context positionOf: player).
			aGame context updatePositionOf: player at: nextPosition ].
					aGame context updatePositionOf: aPlayer at: aPosition