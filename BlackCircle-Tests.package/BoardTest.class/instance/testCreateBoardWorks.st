tests
testCreateBoardWorks
	| board |
	board := Board with: 20 boxesGeneratingEffectsFrom: (FixedEffectSequence generating: {NoEffect new}).	
	self assert: board lapLength equals: 20