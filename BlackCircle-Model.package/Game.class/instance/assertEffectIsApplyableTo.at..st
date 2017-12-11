playing
assertEffectIsApplyableTo: aPlayer at: aPosition
	(aPosition currentBox > 0 and: [ totalLaps > aPosition currentLap ])
		ifTrue: [ self applyEffect: (board effectOfBox: aPosition currentBox) to: aPlayer at: aPosition ]
		ifFalse: [ context updatePositionOf: aPlayer at: aPosition ]