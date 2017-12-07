accessing
applyTo: aPlayer at: aGame atPosition: aPosition
	effect invertedApplyTo: aPlayer at: aGame at: aPosition.
	aGame history saveEffect: self appliedTo: aPlayer