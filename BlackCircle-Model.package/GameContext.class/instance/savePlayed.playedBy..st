saving
savePlayed: aCard playedBy: aPlayer
	gameHistory add: (OrderedCollection with: aCard with: aPlayer)
