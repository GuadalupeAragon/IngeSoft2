applying
undoAt: aGame
	| nextPosition player |
	player := aGame playerToWhomWasApplied: self.
		aGame players
		keysDo: [ :aPlayer | 
			aPlayer = player
				ifFalse: [ nextPosition := aGame positionWhenMoving: (self numberOfBoxes: nBoxes withAmortiguationAt: aGame) from: (aGame board positionOf: aPlayer).
					aGame board updatePositionOf: aPlayer at: nextPosition ] ]
			
		"(aGame players reject: [ :aPlayer | player = aPlayer ]) No rechaza al player
		keysDo: [ :aPlayer | 
			nextPosition := aGame positionWhenMoving: (self numberOfBoxes: nBoxes withAmortiguationAt: aGame) from: (aGame board positionOf: aPlayer).
			aGame board updatePositionOf: aPlayer at: nextPosition ]	"