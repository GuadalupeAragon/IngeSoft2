accessing
ownerOf: aCard
	^ cardsToBeApplied keys detect: [ :player | (self cardsToBeAppliedAt: player) includes: aCard ] ifNone:[]