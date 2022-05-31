Extension { #name : #Object }

{ #category : #'*PostScript-Core' }
Object >> asPostScriptExecutable [

	^ self
]

{ #category : #'*PostScript-Core' }
Object >> asPostScriptLiteral [

	^ self
]

{ #category : #'*PostScript-Core' }
Object >> asPostScriptString [
	
	^ '--nostringval--'
]

{ #category : #'*PostScript-Core' }
Object >> doIn: aPostScriptInterpreter [
	"execute if executable"

	self processIn: aPostScriptInterpreter
]

{ #category : #'*PostScript-Core' }
Object >> postScriptEqual: anObject [

	^ self = anObject
]

{ #category : #'*PostScript-Core' }
Object >> postScriptKey [

	^ self
]

{ #category : #'*PostScript-Core' }
Object >> postScriptType [

	^ self error: 'no known PostScript type'
]

{ #category : #'*PostScript-Core' }
Object >> prettyPrintPSOn: aStream indent: anInteger [
	"write the receiver as PostScript to aStream"

	self printOn: aStream
]

{ #category : #'*PostScript-Core' }
Object >> prettyPrintString [
	"<String>
	the object as PostScript source with propper indentation"

	| wst |
	wst := String new writeStream.
	self prettyPrintPSOn: wst indent: 0.
	^wst contents
]

{ #category : #'*PostScript-Core' }
Object >> printPostScript [
	"<String>"

	| aStream |
	aStream := WriteStream on: (String new: 16).
	self printPostScriptOn: aStream.
	^aStream contents
]

{ #category : #'*PostScript-Core' }
Object >> printPostScriptOn: aStream [

	self printOn: aStream
]

{ #category : #'*PostScript-Core' }
Object >> processIn: aPostScriptInterpreter [

	aPostScriptInterpreter push: self.
	aPostScriptInterpreter hasMark ifFalse: [
		aPostScriptInterpreter trace: self]
]
