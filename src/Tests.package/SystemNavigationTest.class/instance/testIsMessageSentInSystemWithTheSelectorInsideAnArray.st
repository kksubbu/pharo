testing
testIsMessageSentInSystemWithTheSelectorInsideAnArray
	| classesSendingMessage sentMessageSelector |
	sentMessageSelector := 'MessageSentOnlyByTestClassesXXXShouldNotBeRealyDefined' asSymbol.
	5 timesRepeat: [self classFactory newClassInCategory: #One].
	5 timesRepeat: [self classFactory newClassInCategory: #Two].
	classesSendingMessage := (self classFactory createdClasses asArray first: 2), (self classFactory createdClasses asArray last: 3).
	classesSendingMessage do: [:class|	
		class compileSilently: 'meth ^#(a b ', sentMessageSelector, ' c)'].
	self assert: (self systemNavigationToTest allSendersOf: sentMessageSelector) size = 5