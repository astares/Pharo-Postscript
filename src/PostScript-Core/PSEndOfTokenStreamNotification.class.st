"
End of stream notification returning nil when not handled

The same as EndOfStreamNotification of VW.
Created my own class for compatibility with Gemstone which does not have a EndOfStreamNotification
"
Class {
	#name : #PSEndOfTokenStreamNotification,
	#superclass : #Notification,
	#category : #'PostScript-Core-Exceptions'
}
