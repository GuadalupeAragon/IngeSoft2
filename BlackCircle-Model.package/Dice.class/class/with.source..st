initialize
with: aNumberOfFaces source: aSource
	self assertIsPositive: aNumberOfFaces.
	^ self new initializeWith: aNumberOfFaces source: aSource