playing
applyCard: aPermanentCard to: aPlayer at: nextPosition
	| position |
	(((self player: aPlayer) includes: aPermanentCard) and: [ aPermanentCard notNil ])
		ifTrue: [ position := aPermanentCard applyCardTo: aPlayer at: nextPosition at: self ]
		ifFalse: [ position := nextPosition ].
	^ position