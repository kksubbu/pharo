accessing
findString: substring startingAt: start 
	"Answer the index of substring within the receiver, starting at start. If 
	the receiver does not contain substring, answer 0."

	^self findString: substring startingAt: start caseSensitive: true