playing
assertEffecrIsApplyableTo: aPlayer at: aPosition
	(aPosition currentBox > 0 and:  [totalLaps > aPosition currentLap])
		ifTrue: [ self applyEffect: (board effectOfBox: aPosition currentBox) to: aPlayer atPosition: aPosition ]
		ifFalse: [ board updatePositionOf: aPlayer at: aPosition ]