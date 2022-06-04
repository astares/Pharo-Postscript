Extension { #name : #Symbol }

{ #category : #'*PostScript-Core' }
Symbol >> asPostScriptExecutable [

	^ self
]

{ #category : #'*PostScript-Core' }
Symbol >> postScriptType [

	^ #operatortype
]

{ #category : #'*PostScript-Core' }
Symbol >> prettyPrintPSOn: aStream indent: anInteger [

	self printOn: aStream
]

{ #category : #'*PostScript-Core' }
Symbol >> printPostScriptOn: aStream [

	aStream nextPutAll: self asString
]

{ #category : #'*PostScript-Core' }
Symbol >> processIn: interpreter [

	(interpreter valueAt: self) doIn: interpreter
]
