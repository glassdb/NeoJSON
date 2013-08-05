testing
testDate
	| reader |
	reader := [ :input | 
		(NeoJSONReader on: input readStream) 
			for: Date customDo: [ :mapping |
				mapping decoder: [ :string | Date fromString: string usingFormat: #(3 2 1 $- 1 1 2)] ];
			nextAs: Date ].
	self assert: (reader value: ' "2012-06-08" ') equals: (Date newDay: 8 monthNumber: 6 year: 2012)