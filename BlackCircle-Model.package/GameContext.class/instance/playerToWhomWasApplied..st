accessing
playerToWhomWasApplied: anEffectOrACard
	| played |
	played := gameHistory detect: [ :aPlayed | (self effectOrCardOf: aPlayed) = anEffectOrACard ].
	
	^ self playerOf: played