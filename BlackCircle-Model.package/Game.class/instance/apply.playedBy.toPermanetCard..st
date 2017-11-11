playing
apply: aCard playedBy: aPlayer toPermanetCard: aPermanentCard
	self permanentCardPlayed
		ifFalse: [ PlayTurnException signal: 'No Permanent card played.' ]
		ifTrue: [ (self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
			aCard appliesAt: self removing: aPermanentCard ]