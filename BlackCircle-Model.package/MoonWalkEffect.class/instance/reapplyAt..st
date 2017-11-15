applying
reapplyAt: aGame
	"No usa el del padre porque tiene que hacer todos menos player retrocedan la misma cantidad de casilleros que antes, no una nueva cantidad (nBoxes)"

	| nextPosition player |
	player := aGame playerToWhomWasApplied: self.
	aGame players
		keysDo: [ :aPlayer | 
			aPlayer = player
				ifFalse:
					[ nextPosition := aGame positionWhenMoving: (self numberOfBoxes: nBoxes negated withAmortiguationAt: aGame) from: (aGame board positionOf: aPlayer).
					aGame board updatePositionOf: aPlayer at: nextPosition ] ]