playing
applyEffect: anEffect to: aPlayer at: position
	anEffect applyTo: aPlayer at: self atPosition: position.
	gameHistory add: (OrderedCollection with: anEffect with: aPlayer).