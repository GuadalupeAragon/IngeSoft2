accessing
reapplyAt: aGame
	| nextPosition player |
	
	player := aGame playerToWhomWasApplied: self.
	aGame players
		keysDo: [ :aPlayer | 
			aPlayer = player
				ifFalse:
					[ nextPosition := aGame positionWhenMoving: (self numberOfBoxes: nBoxes negated withAmortiguationAt: aGame) from: (aGame board positionOf: aPlayer).
					aGame board updatePositionOf: aPlayer at: nextPosition ] ]