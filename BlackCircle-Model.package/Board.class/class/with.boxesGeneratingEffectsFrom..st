initialize
with: aNumberOfBoxes boxesGeneratingEffectsFrom: aSource
	self assertIsPositive: aNumberOfBoxes.
	^ self new initializeWith: aNumberOfBoxes boxesGeneratingEffectsFrom: aSource