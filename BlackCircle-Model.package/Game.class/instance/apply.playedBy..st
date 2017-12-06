appling
apply: aCard playedBy: aPlayer

	self checkIfItNeedsToBe: aPlayer turnAndRemoveIts: aCard.
	aCard playedBy: aPlayer at: self