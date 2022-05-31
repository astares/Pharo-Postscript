Extension { #name : #SequenceableCollection }

{ #category : #'*PostScript-Core' }
SequenceableCollection >> prettyPrintPSOn: aStream indent: anInteger [

	self printPostScriptOn: aStream
]

{ #category : #'*PostScript-Core' }
SequenceableCollection >> printPostScriptOn: aStream [

	aStream nextPutAll: '['.
	self do: [:value | value printPostScriptOn: aStream] separatedBy: [aStream space].
	aStream nextPutAll: ']'
]
