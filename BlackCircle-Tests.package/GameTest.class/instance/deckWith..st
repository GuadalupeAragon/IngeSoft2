test-PermanentCard
deckWith: overloadCard
	^ Deck
		generatingCardsFrom: (FixedCardSequence generating: {overloadCard})