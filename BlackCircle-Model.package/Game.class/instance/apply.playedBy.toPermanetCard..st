appling
apply: anAnulationCard playedBy: aPlayer toPermanetCard: aPermanentCard
	

	self checkIfItNeedsToBe: aPlayer turnAndRemoveIts: anAnulationCard.
	anAnulationCard appliesAt: self removing: aPermanentCard