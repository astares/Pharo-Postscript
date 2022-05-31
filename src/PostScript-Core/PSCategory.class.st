"
A resource category defining a resource type and holding instances of it

The implementation dictionary contains the 5 procedures dealing with resources among other things and
a list of all instances of the resource.


From PLRM3-0.pdf 3.9.2 ""Resource Categories"" pp.104:

Resource categories are identified by name. Tables 3.7, 3.8, and 3.9 list the standard
resource categories. Within a given category, every resource instance that resides
in VM is of a particular type and has a particular intended interpretation or
use.

Regular resources are those whose instances are ordinary useful objects, such as
font or halftone dictionaries. For example, a program typically uses the result returned
by findresource as an operand of some other operator, such as scalefont
or sethalftone.

Implicit resources represent some built-in capability of the PostScript interpreter.
For example, the instances of the Filter category are filter names, such as
ASCII85Decode and CCITTFaxDecode, that are passed directly to the filter operator.
For such resources, the findresource operator returns only its name operand.
However, resourceforall and resourcestatus are useful for inquiring about the
availability of capabilities such as specific filter algorithms.
"
Class {
	#name : #PSCategory,
	#superclass : #Object,
	#instVars : [
		'implementation',
		'instances'
	],
	#category : #'PostScript-Core-Utilities'
}
