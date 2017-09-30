playing
assertApplyEffectTo: aPlayer.
	(board positionOf: aPlayer) currentBox > 0
		ifTrue: [ self applyEffect: (board effectOfBox: (board positionOf: aPlayer) currentBox) to: aPlayer ].