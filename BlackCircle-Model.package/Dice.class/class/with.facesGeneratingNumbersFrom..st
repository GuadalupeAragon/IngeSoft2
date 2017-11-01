initialize
with: aNumberOfFaces facesGeneratingNumbersFrom: aSource
	self assertIsPositive: aNumberOfFaces.
	^ self new initializeWith: aNumberOfFaces facesGeneratingNumbersFrom: aSource