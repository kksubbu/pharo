*ScriptingExtensions-Tests
testAsClassIfPresent
	
	#Symbol asClassIfPresent: [ :class | 
		self assert: class equals: Symbol ].
	
	#'+' asClassIfPresent: [ ^ self fail ].