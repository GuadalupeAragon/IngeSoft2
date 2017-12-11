applying
applyTo: aPlayer at: game atPosition: position
	game players do: [ :player | game context updatePositionOf: player at: (Position currentlyIn: 0 at: 0) ].
	game context saveEffect: self appliedTo: aPlayer