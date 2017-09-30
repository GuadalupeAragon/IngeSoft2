initialization
initializeWith: aNumberOfBoxes withSource: aSource
	numberBoxes := aNumberOfBoxes.
	playersHistory := Dictionary new.
	boxesEffects := OrderedCollection new.
	1 to: aNumberOfBoxes do: [ :index | boxesEffects add: aSource nextEffect ]