appling
apply: aCard playedBy: aPlayer at: aNumberOfBox
	self checkIfItNeedsToBe: aPlayer turnAndRemoveIts: aCard.
	aCard playedAt: aNumberOfBox at: self.