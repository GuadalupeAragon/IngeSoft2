playing
permanentCardPlayed
	| permanentPlayed |
	
	permanentPlayed := false.
	(currentAmortiguation > 1)
		ifTrue:[	^ (true)].
	cardsToBeApplied
		keysDo: [ :player | 
			(self cardsToBeAppliedAt: player) size > 0
				ifTrue: [ permanentPlayed := true ] ].
	^ permanentPlayed