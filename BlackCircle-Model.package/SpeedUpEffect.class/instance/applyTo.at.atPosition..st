applying
applyTo: aPlayer at: aGame atPosition: aPosition
	self
		move: aPlayer
		at: aGame
		numberOfBoxes: 4
		from: aPosition.
			aGame context saveEffect: self appliedTo: aPlayer