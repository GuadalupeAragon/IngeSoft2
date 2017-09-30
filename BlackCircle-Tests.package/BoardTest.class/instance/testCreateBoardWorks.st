tests
testCreateBoardWorks
	| board |
	board := Board with: 20 source: (FixedEffectSequence generating: {NoEffect new}).	
	self assert: board lapLength equals: 20