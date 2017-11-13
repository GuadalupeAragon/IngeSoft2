playing
savePlayed: aCard of: ownerOfAPermanentCard thatRemoved: aPermanentCard
	gameHistory add: (OrderedCollection with: aCard with: ownerOfAPermanentCard  with: aPermanentCard )