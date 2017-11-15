playing
removeAPermanentCard: aCard
	| ownerOfTheCard |
	ownerOfTheCard := cardsToBeApplied keys
		detect: [ :player | (self cardsToBeAppliedAt: player) includes: aCard ]
		ifNone: [ PlayTurnException signal: 'Permanent card not played' ].
	(self cardsToBeAppliedAt: ownerOfTheCard) remove: aCard.
	^ ownerOfTheCard