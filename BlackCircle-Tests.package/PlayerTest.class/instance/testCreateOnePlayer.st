tests
testCreateOnePlayer
	| player |
	player := Player named: 'Facu'.
	self assert: player name equals: 'Facu'