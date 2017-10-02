playing
assertApplyEffectTo: aPlayer atPosition: position
	position currentBox > 0 & (laps > position currentLap)
		ifTrue: [ self applyEffect: (board effectOfBox: position currentBox) to: aPlayer atPosition: position ]
		ifFalse: [ board updatePositionOf: aPlayer at: position ]