initialize
assertIsPositive: aNumberOfFaces
	aNumberOfFaces <= 0
		ifTrue: [ InstanceCreationException signal: 'number of faces is zero' ]