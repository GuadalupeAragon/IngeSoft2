appling
playedBy: aPlayer at: aGame
	aGame assertIsTheTurnOf: aPlayer.
	(aGame cardsOf: aPlayer) remove: self ifAbsent: [ PlayTurnException signal: 'you do not have that card' ].
	aGame amortiguateWithFactorOf: 2