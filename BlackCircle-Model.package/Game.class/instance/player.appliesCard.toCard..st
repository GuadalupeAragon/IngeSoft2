as yet unclassified
player: aPlayer appliesCard: aCard toCard: cardToApplyTo
	(self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	
	(cardToApplyTo isMemberOf: AmortiguationCard)
		ifTrue: [ currentAmortiguation := 1 ]
		ifFalse: [ 	players
		do: [ :player | 

[ 
		(cardsToBeApply at: player) remove: cardToApplyTo.
	
	 ]


 ]. ]