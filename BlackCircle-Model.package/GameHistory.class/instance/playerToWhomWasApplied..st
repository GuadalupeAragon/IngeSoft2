accessing
playerToWhomWasApplied: anEffectOrACard
	^ (gameHistory detect: [ :played | (played at: 1) = anEffectOrACard ]) at: 2
	