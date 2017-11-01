tests
testCantCreateEmptyBoard
	self should: [ Board with: 0 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new})] raise: InstanceCreationException