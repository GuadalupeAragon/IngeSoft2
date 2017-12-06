appling
checkIfItNeedsToBe: aPlayer turnAndRemoveIts: aCard
	aCard requieresToBe: aPlayer turnAt: self.
	self remove: aCard from: aPlayer