saving
savePlayed: anEffectOrCard playedBy:aPlayer
	gameHistory add: (OrderedCollection with:anEffectOrCard with:aPlayer )