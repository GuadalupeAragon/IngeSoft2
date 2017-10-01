playing
assertApplyEffectTo: aPlayer
	(board positionOf: aPlayer) currentBox > 0 & (laps >( board positionOf: aPlayer )currentLap )
		ifTrue:
			[ self applyEffect: (board effectOfBox: (board positionOf: aPlayer) currentBox) to: aPlayer ]