tests
testThrowDiceGivesNumber
	| dice |
	dice := Dice with: 15 source: Random new.
	self assert: (dice throw between: 1 and: 15)