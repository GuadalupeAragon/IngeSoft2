playing
removeAPermanentCard: aCard
	| isOwnerOfTheCard |
	cardsToBeApplied
		keysDo: [ :player | 
			
			isOwnerOfTheCard := true.
			(self cardsToBeAppliedAt: player) remove: aCard ifAbsent: [ isOwnerOfTheCard := false ].
			isOwnerOfTheCard
				ifTrue: [ ^ player	 ] ]