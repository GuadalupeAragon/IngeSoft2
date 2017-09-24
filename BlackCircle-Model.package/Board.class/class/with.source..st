initialize
with: aNumberOfBoxes source: aSource
	self assertIsPositive: aNumberOfBoxes.
	^ self new initializeWith: aNumberOfBoxes withSource: aSource