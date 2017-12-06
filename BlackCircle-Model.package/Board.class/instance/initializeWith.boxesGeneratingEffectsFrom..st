initialization
initializeWith: aNumberOfBoxes boxesGeneratingEffectsFrom: aSource
	numberBoxes := aNumberOfBoxes.
	
	boxesEffects := (1 to: aNumberOfBoxes) collect: [ :index | aSource nextEffect ]