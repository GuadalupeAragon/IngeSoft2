applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	| previousPosition |
	(aGame players reject: [ :player | player = aPlayer ])
		do: [ :player | 
			previousPosition := aGame history previousPositionOf: player.
			aGame history updatePositionOf: player at: previousPosition ].
			aGame history updatePositionOf: aPlayer at: aPosition