accessing
appliesAt: aGame removing: aPermanentCard
	| ownerOfTheCard |
	ownerOfTheCard:=	aPermanentCard removeOf: aGame.
	aGame gameHistory add: (OrderedCollection with:self with:aPermanentCard with: ownerOfTheCard)