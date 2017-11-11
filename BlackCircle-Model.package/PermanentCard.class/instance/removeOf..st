removing
removeOf: aGame
aGame cardsToBeApplied keysDo: [ :player | (aGame cardsToBeAppliedAt: player) remove: self ifAbsent: [  ] ]