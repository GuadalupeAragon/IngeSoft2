tests
testCantCreateEmptyBoard
	self should: [ Board with: 0 ] raise: InstanceCreationException