tests-printing
testPrintOn
	self assert: (Position currentlyIn: 2 at: 3) printString equals: '2 3'