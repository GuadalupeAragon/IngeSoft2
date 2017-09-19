initialize
assertIsPositive: aNumberOfBoxes
	aNumberOfBoxes <= 0
		ifTrue:
			[ InstanceCreationException signal: 'Invalid Board instance creation' ]