Extension { #name : #UndefinedObject }

{ #category : #'*PostScript-Core' }
UndefinedObject >> postScriptType [

	^ #nulltype
]

{ #category : #'*PostScript-Core' }
UndefinedObject >> printPostScriptOn: aStream [

	aStream nextPutAll: 'null'
]
