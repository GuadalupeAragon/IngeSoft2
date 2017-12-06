applying
appliesAt: aGame removing: aPermanentCard
	| ownerOfTheCard |
	
	ownerOfTheCard := aGame ownerOf: aPermanentCard.
	aPermanentCard removeOf: aGame.
	aGame history savePlayed: self thatRemoved: aPermanentCard from: ownerOfTheCard