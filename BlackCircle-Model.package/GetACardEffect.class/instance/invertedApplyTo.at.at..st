applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	(aGame players reject: [ :player | player = aPlayer ]) do: [ :player | aGame picksCard: player ].
	aGame context updatePositionOf: aPlayer at: aPosition.
