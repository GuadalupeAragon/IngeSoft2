tests
testCantCreateEmptyBoard
	self should: [ Board with: 0 source: (FixedEffectSequence generating: {NoEffect new})] raise: InstanceCreationException