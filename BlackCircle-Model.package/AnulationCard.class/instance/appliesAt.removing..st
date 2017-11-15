appling
appliesAt: aGame removing: aPermanentCard
	| ownerOfTheCard |
	ownerOfTheCard := aPermanentCard removeOf: aGame.
	aGame savePlayed: self of: ownerOfTheCard thatRemoved: aPermanentCard
	