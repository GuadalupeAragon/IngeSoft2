accessing-lastPlayed
lastEffectOrCard
	| played |
	played := self lastPlayed.
		^ self effectOrCardOf: played