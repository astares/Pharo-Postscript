Extension { #name : #Boolean }

{ #category : #'*PostScript-Core' }
Boolean >> asPostScriptString [

	^ self printPostScript
]

{ #category : #'*PostScript-Core' }
Boolean >> postScriptAnd: aBoolean [

	^ self & aBoolean
]

{ #category : #'*PostScript-Core' }
Boolean >> postScriptNot [

	^ self not
]

{ #category : #'*PostScript-Core' }
Boolean >> postScriptOr: aBoolean [

	^ self | aBoolean
]

{ #category : #'*PostScript-Core' }
Boolean >> postScriptType [

	^ #booleantype
]

{ #category : #'*PostScript-Core' }
Boolean >> postScriptXor: aBoolean [

	^ self xor: aBoolean
]
