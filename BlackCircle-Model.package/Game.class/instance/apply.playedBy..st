playing
apply: aCard playedBy: aPlayer
	self assertIsTheTurnOf: aPlayer.
	(self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	aCard applyCardAt: self.
	