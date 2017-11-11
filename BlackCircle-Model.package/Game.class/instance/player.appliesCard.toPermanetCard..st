as yet unclassified
player: aPlayer appliesCard: aCard toPermanetCard: cardToApplyTo
	"(self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ]."
"cardsToBeApplied"
	(cardToApplyTo isMemberOf: AmortiguationCard)
		ifTrue: [ currentAmortiguation := 1 ]
		ifFalse: [ players do: [ :player | [ (cardsToBeApplied at: player) remove: cardToApplyTo ] ] ]