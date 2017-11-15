initialization
initializeWith: aNumberOfBoxes boxesGeneratingEffectsFrom: aSource
	numberBoxes := aNumberOfBoxes.
	playersHistory := Dictionary new.
	boxesEffects := (1 to: aNumberOfBoxes ) collect:[:index | aSource nextEffect ]
