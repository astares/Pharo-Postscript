"
PostScript interpreter
"
Class {
	#name : #PSInterpreter,
	#superclass : #Object,
	#instVars : [
		'scanner',
		'operandStack',
		'dictionaryStack',
		'executionStack',
		'resources',
		'properties'
	],
	#category : #'PostScript-Core-Base'
}
