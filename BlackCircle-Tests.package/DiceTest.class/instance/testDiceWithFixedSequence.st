tests
testDiceWithFixedSequence
	| dice |
	dice := Dice with: 6 source: (FixedSequence generating: #(1 3 6 8)).
	self assert: dice throw equals: 1.
	self assert: dice throw equals: 3.
	self assert: dice throw equals: 6.
	self assert: dice throw equals: 2.
	self assert: dice throw equals: 1.
	self assert: dice throw equals: 3.
	self assert: dice throw equals: 6.
	self assert: dice throw equals: 2