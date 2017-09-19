tests
testCreateBoardWorks
	| board |
	board := Board with: 20.	
	self assert: board lapLength equals: 20