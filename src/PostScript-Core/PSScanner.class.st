"
Scanner reads PostScript objects from a PostScript source stream
"
Class {
	#name : #PSScanner,
	#superclass : #Object,
	#instVars : [
		'stream',
		'specialActionsByCharacter'
	],
	#category : #'PostScript-Core-Scanning'
}
