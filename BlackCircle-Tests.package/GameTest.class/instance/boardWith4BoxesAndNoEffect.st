tests
boardWith4BoxesAndNoEffect
	^ Board
		with: 4
		source: (FixedEffectSequence generating: {NoEffect new})