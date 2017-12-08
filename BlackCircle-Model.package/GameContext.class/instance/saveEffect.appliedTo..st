saving
saveEffect: anEffect appliedTo: aPlayer
	gameHistory add: (OrderedCollection with: anEffect with: aPlayer)

