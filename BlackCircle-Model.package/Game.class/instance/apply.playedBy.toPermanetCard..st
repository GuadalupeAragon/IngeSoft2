appling
apply: anAnulationCard playedBy: aPlayer toPermanetCard: aPermanentCard
	anAnulationCard appliesAt: self removing:aPermanentCard .
	(self cardsOf: aPlayer)
				remove: anAnulationCard
				ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	