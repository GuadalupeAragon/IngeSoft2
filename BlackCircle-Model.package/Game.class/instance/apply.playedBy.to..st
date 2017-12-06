appling
apply: aCard playedBy: aPlayer to: otherPlayer
	self checkIfItNeedsToBe: aPlayer turnAndRemoveIts: aCard.
	(cardsToBeApplied at: otherPlayer) addFirst: aCard