appling
appliesAt: aGame removing: aPermanentCard
	| ownerOfTheCard |
	ownerOfTheCard := aPermanentCard removeOf: aGame.
	aGame
		savePlayed: self
		thatRemoved: aPermanentCard
		from: ownerOfTheCard