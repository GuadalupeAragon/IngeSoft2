tests
testTryCreateInvalidPlayer
	self should: [ Player named: '' ] raise: InstanceCreationException
