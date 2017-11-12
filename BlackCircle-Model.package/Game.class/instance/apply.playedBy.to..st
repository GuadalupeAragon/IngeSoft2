appling
apply: aCard playedBy: aPlayer to: otherPlayer
	self assertIsTheTurnOf: aPlayer.
	(self cardsOf: aPlayer) remove: aCard ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	
	(cardsToBeApplied at: otherPlayer) addFirst: aCard