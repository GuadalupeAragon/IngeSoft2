playing
savePlayed: aCard thatRemoved: aPermanentCard from: ownerOfAPermanentCard
	gameHistory add: (OrderedCollection with: aCard with: ownerOfAPermanentCard  with: aPermanentCard )