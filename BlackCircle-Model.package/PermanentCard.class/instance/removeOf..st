removing
removeOf: aGame
	| isOwnerOfTheCard ownerOfTheCard |
	aGame cardsToBeApplied
		keysDo: [ :player | 
			isOwnerOfTheCard := true.
			(aGame cardsToBeAppliedAt: player) remove: self ifAbsent: [ isOwnerOfTheCard := false ].
			isOwnerOfTheCard
				ifTrue: [ ownerOfTheCard := player ] ].
		^ownerOfTheCard