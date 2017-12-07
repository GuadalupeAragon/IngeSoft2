applying
invertedApplyTo: aPlayer at: aGame at: aPosition
	| previousPosition |
	(aGame players reject: [ :player | player = aPlayer ])
		do: [ :player | 
			previousPosition := aGame context previousPositionOf: player.
			aGame context updatePositionOf: player at: previousPosition ].
			aGame context updatePositionOf: aPlayer at: aPosition