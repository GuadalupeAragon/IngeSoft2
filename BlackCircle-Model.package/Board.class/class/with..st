initialize
with: aNumberOfBoxes
	self assertIsPositive: aNumberOfBoxes.
	^ self new initializeWith: aNumberOfBoxes 