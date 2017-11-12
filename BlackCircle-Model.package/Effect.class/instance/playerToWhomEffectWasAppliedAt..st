accessing
playerToWhomEffectWasAppliedAt: aGame
	"aGame currentPlayerIndex = 1
		ifTrue: [ ^ aGame players keyAtIndex: aGame players size ].
	^ aGame players keyAtIndex: aGame currentPlayerIndex - 1"

	^ aGame lastEffectOrInstantCardPlay  at: 2