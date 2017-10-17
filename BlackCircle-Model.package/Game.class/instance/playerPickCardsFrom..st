initialization
playerPickCardsFrom: aSource
	^ OrderedCollection 
		with: aSource nextCard 
		with: aSource nextCard