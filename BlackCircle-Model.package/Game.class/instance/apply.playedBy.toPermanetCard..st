appling
apply: aCard playedBy: aPlayer toPermanetCard: aPermanentCard
	aCard appliesAt: self removing:aPermanentCard .
	(self cardsOf: aPlayer)
				remove: aCard
				ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	