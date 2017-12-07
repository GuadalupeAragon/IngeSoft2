applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	(aGame players reject: [ :player | player = aPlayer ]) do: [ :player | aGame picksCard: player ].
	aGame history updatePositionOf: aPlayer at: aPosition.
