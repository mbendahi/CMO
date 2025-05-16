"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#classInstVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'printing' }
Counter class >> printOn: aStream [
	super printOn: aStream.
	aStream 
		nextPutAll: ' with value: ';
		nextPutAll: count printString.
]

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [ 

	| aCounter |
	aCounter := self new.

	aCounter count: anInteger.
	^ aCounter
]

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [ 
	count := anInteger
]

{ #category : 'API' }
Counter >> decrement [
	count:= count - 1
]

{ #category : 'accessing' }
Counter >> increment [
	count:= count + 1
]

{ #category : 'initialization' }
Counter >> initialize [ 
	count := 0
]
