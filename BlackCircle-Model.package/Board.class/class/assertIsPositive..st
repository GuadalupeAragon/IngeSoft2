initialize
assertIsPositive: aNumberOfBoxes
	aNumberOfBoxes <= 0
		ifTrue: [ InstanceCreationException signal: 'Amount of Boxes must be greater than 0' ]