accessing
deckWith: overloadCard
	^ Deck
		generatingCardsFrom: (FixedCardSequence generating: {overloadCard})