tests
testThrowDiceGivesNumber
	| dice |
	dice := Dice with: 15 facesGeneratingNumbersFrom: Random new.
	self assert: (dice throw between: 1 and: 15)