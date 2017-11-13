accessing
playerToWhomWasApplied: anEffectOrACard
	gameHistory do: [ :played | (played at:1) = anEffectOrACard 
		ifTrue: [ ^ (played at:2) ] ]