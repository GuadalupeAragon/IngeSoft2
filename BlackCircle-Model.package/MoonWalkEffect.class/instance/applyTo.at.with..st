applying
applyTo: aPlayer at: game with: board
	| playersCopy  |
	playersCopy := game players reject: [ :player | player = aPlayer ].
	playersCopy
		do: [ :player | game move: player forward: (source nextInt: board lapLength) negated ]