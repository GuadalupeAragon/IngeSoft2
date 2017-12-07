applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	| nextPosition |
	(aGame players reject: [ :player | player = aPlayer ])
		do: [ :player | 
			nextPosition := aGame positionWhenMoving: (self numberOfBoxes: 4 withAmortiguationAt: aGame) from: (aGame history positionOf: player).
			aGame history updatePositionOf: player at: nextPosition ].
					aGame history updatePositionOf: aPlayer at: aPosition