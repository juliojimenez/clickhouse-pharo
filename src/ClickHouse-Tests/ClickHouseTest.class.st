Class {
	#name : 'ClickHouseTest',
	#superclass : 'TestCase',
	#instVars : [
		'clickHouseInstance'
	],
	#category : 'ClickHouse-Tests',
	#package : 'ClickHouse-Tests'
}

{ #category : 'running' }
ClickHouseTest >> setUp [
	clickHouseInstance := ClickHouse new.

]

{ #category : 'running' }
ClickHouseTest >> testCreateClickHouse [
	"Test if the creation of an object ClickHouse is done properly"
	|tmp|
	tmp := ClickHouse new.
	self assert: tmp isNotNil.
	self assert: tmp host equals: 'localhost'.
	self assert: tmp port equals: 8123.
	self assert: tmp ssl equals: false.
	self assert: tmp user equals: 'default'.
	self assert: tmp password equals: ''.
	self assert: tmp database equals: 'default'.
	
]

{ #category : 'running' }
ClickHouseTest >> testDatabase [
	| testValue |
	testValue := 'default'.
	clickHouseInstance database: testValue.
	self assert: clickHouseInstance database equals: testValue.
]

{ #category : 'running' }
ClickHouseTest >> testHost [
	| testValue |
	testValue := 'localhost'.
	clickHouseInstance host: testValue.
	self assert: clickHouseInstance host equals: testValue.
]

{ #category : 'running' }
ClickHouseTest >> testPassword [
	| testValue |
	testValue := 'supersecretpassword'.
	clickHouseInstance password: testValue.
	self assert: clickHouseInstance password equals: testValue.
]

{ #category : 'running' }
ClickHouseTest >> testPort [
	| testValue |
	testValue := 8123.
	clickHouseInstance port: testValue.
	self assert: clickHouseInstance port equals: testValue.
]

{ #category : 'running' }
ClickHouseTest >> testSSL [
	| testValue |
	testValue := true.
	clickHouseInstance ssl: testValue.
	self assert: clickHouseInstance ssl equals: testValue.
]

{ #category : 'running' }
ClickHouseTest >> testUser [
	| testValue |
	testValue := 'default'.
	clickHouseInstance user: testValue.
	self assert: clickHouseInstance user equals: testValue.
]
