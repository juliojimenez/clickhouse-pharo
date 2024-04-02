"
# ClickHouse Pharo Client
"
Class {
	#name : 'ClickHouse',
	#superclass : 'Object',
	#instVars : [
		'host',
		'port',
		'ssl',
		'database',
		'user',
		'password'
	],
	#category : 'ClickHouse',
	#package : 'ClickHouse'
}

{ #category : 'accessing' }
ClickHouse >> database [
	^ database
]

{ #category : 'accessing' }
ClickHouse >> database: aDatabase [
	database := aDatabase.
]

{ #category : 'accessing' }
ClickHouse >> host [
	^ host
]

{ #category : 'accessing' }
ClickHouse >> host: aHost [
	host := aHost.
]

{ #category : 'initialization' }
ClickHouse >> initialize [ 
	super initialize.
	host := 'localhost'.
	port := 8123.
	ssl := false.
	database := 'default'.
	user := 'default'.
	password := ''.

]

{ #category : 'accessing' }
ClickHouse >> password [
	^ password
]

{ #category : 'accessing' }
ClickHouse >> password: aPassword [
	password := aPassword.

]

{ #category : 'accessing' }
ClickHouse >> port [
	^ port
]

{ #category : 'accessing' }
ClickHouse >> port: aPort [
	port := aPort.
]

{ #category : 'accessing' }
ClickHouse >> ssl [
	^ ssl
]

{ #category : 'accessing' }
ClickHouse >> ssl: aSsl [
	ssl := aSsl.
]

{ #category : 'accessing' }
ClickHouse >> user [
	^ user
]

{ #category : 'accessing' }
ClickHouse >> user: aUser [
	user := aUser.
]
