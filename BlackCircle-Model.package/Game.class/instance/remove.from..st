appling
remove: aCard from: aPlayer.
	(self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].