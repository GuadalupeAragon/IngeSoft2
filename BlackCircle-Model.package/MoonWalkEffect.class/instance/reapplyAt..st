applying
reapplyAt: aGame
	"No usa el del padre porque tiene que hacer todos menos player retrocedan la misma cantidad de casilleros que antes, no una nueva cantidad (nBoxes)"

	|  player |
	player := aGame  context  playerToWhomWasApplied: self.
	self applyEffectToPlayersAt: aGame exceptFor: player moving: (nBoxes negated)

	
	