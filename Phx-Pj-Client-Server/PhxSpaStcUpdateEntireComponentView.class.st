Class {
	#name : #PhxSpaStcUpdateEntireComponentView,
	#superclass : #PhxSpaServerToClientMessage,
	#category : #'Phx-Pj-Client-Server-shared'
}

{ #category : #private }
PhxSpaStcUpdateEntireComponentView >> executeInResponseContext: rc [

	rc client allChildrenDo: [ :c | c isVueDirty: true ].
	rc client root forceRebuild  
]
