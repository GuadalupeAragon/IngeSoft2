tests
testCreateOnePlayer
	| player |
	player := Player named: 'mariano'. 
	self assert: player name equals: 'mariano'