applying
appliesAt: aGame removing: aPermanentCard
	| ownerOfTheCard |
	
	ownerOfTheCard := aGame ownerOf: aPermanentCard.
	aPermanentCard removeOf: aGame.
	aGame savePlayed: self thatRemoved: aPermanentCard from: ownerOfTheCard