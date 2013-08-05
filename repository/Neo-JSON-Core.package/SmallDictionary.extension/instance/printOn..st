*neo-json-core
printOn: stream
	super printOn: stream.
	stream nextPut: $(; print: self schemaName; nextPut: $)