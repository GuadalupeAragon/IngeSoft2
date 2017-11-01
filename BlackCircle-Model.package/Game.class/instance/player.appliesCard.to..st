playing
player: aPlayer appliesCard: aCard to: otherPlayer
self assertIsTheTurnOf: aPlayer.
	(self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	(cardsToBeApply at: otherPlayer) addFirst: aCard