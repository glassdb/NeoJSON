testing
testDictionary
	| json map |
	json := '{ "x" : true, "y" : false, "key-1" : 1 }'.
	map := (NeoJSONReader on: json readStream) 
		mapClass: Dictionary;
		next.
	self 
		assert: map 
		equals: (Dictionary new at: 'x' put: true; at: 'y' put: false; at: 'key-1' put: 1; yourself).
	self 
		assert: map class 
		equals: Dictionary