applying
appliesAt: aGame removing: aPermanentCard
	| ownerOfTheCard |
	
	ownerOfTheCard := aGame ownerOf: aPermanentCard.
	aPermanentCard removeOf: aGame.
	aGame context  savePlayed: self thatRemoved: aPermanentCard from: ownerOfTheCard