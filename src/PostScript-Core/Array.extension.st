Extension { #name : #Array }

{ #category : #'*PostScript-Core' }
Array >> asPostScriptExecutable [

	^ PSProcedure withAll: self
]

{ #category : #'*PostScript-Core' }
Array >> copyFor: aPostScriptInterpreter [

	aPostScriptInterpreter pop doWithIndex: [ :value :i | self at: i put: value copy ].
	aPostScriptInterpreter push: self
]

{ #category : #'*PostScript-Core' }
Array >> forAllDo: proc for: aPostScriptInterpreter [
	self do: [:value |
		aPostScriptInterpreter push: value.
		proc doIn: aPostScriptInterpreter]
]

{ #category : #'*PostScript-Core' }
Array >> get: index for: aPostScriptInterpreter [

	^ self at: index + 1
]

{ #category : #'*PostScript-Core' }
Array >> postScriptEqual: otherCollection [ 
	"Other composite objects (arrays and dictionaries) are equal only if they share the same value.
	Separate values are considered unequal, even if all the components of those values are the same."

	^self == otherCollection
]

{ #category : #'*PostScript-Core' }
Array >> postScriptType [

	^ #arraytype
]

{ #category : #'*PostScript-Core' }
Array >> put: any at: index [
	"array index any put –
	Put any into array at index"

	self at: index + 1 put: any
]
