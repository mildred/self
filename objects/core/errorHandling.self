 'Sun-$Revision: 30.15 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         break = ( | {
                 'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
                
                 env = bootstrap stub -> 'lobby' -> ().
                } 
            | 
            env process this isDebugged ifTrue: [halt]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fComment: Many of the error handling routines will crash the
scheduler, if they are called with a non-string/byte vector
message argument. To make the system more robust, this
method performs a sanity check on an error message argument.\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: private'
        
         ensureString: msg = ( |
             mir.
            | 
            mir: (reflect: msg).
            mir isReflecteeString || [mir isReflecteeByteVector] ifTrue: [
                ^ msg.
            ].
            mir isComplete ifTrue: [ msg printString ] False: ['message = ', mir objectID]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fComment: print out an error message and quit from the executing Self code\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         error: message = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            handleError: ((env processErrors userError copy
                    receiver: self)
                    message:  (ensureString: message) copyAtMostWithEllipsis: 2000)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         error: message Arguments: args = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            handleError: ((env processErrors userErrorWithArguments copy
                    receiver: self)
                    message:  (ensureString: message))
                    arguments: args).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         halt = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            env process this isDebugged ifFalse: [
                'Halt: ' print.
                env process this print. env process this objectID printLine.
                env process this birthEvent ifNil: [
                  ( 'To debug this process, type "attach: ', 
                    env process this objectIDNumber printString, '"') printLine
                ] IfNotNil: [|:birthEvent|
                  birthEvent sourceHand safelyDo: [
                    env selfProcessModel debugProcess: env process this.
                  ].
                ].
            ].
            env process this suspend.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         halt: msg = ( |
            | msg printLine. halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         handleError: e = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | env process this handleError: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fComment: primitive failure\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         primitiveFailedError: error Name: sel = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            handleError: ((env processErrors primitiveFailed copy
                    receiver: self)
                    selector: sel)
                    error:    error).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         warning: string = ( |
            | 
            globals preferences noisy ifTrue: [ '\a' print. "beep"].
            'Warning: ' print. string print. '.' printLine. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: system\x7fCategory: error reporting\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         errorHandlers = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'errorHandlers' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals errorHandlers.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         default = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'default' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals errorHandlers default.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'default' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         value: e = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            "If the error string is too long, the system crashes trying to draw the morphs.
              -- dmu 11/05"
            "Temporary fix for handling errors under Klein and Yoda. -- Adam, 5/06"
            (_TheVMIfFail: [
            env process this suspendAndTrace: e.
            env process this errorContinueValue] ) vmKitsError: message).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         returnNil = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'returnNil' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals errorHandlers returnNil.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'returnNil' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         value = ( |
             n = bootstrap stub -> 'globals' -> 'nil' -> ().
            | n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         silentAbort = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'silentAbort' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals errorHandlers silentAbort.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'silentAbort' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         value: e = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            env process this abort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         silentSuspend = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'silentSuspend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals errorHandlers silentSuspend.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'errorHandlers' -> 'silentSuspend' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         value: e = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | env process this suspend).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         errorHandling = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules errorHandling.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'core'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- 'Sun-$Revision: 30.15 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'errorHandling' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: InitializeToExpression: (traits process errorHandlers default)'
        
         errorHandler <- bootstrap stub -> 'globals' -> 'errorHandlers' -> 'default' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: system\x7fCategory: error reporting\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         raiseError = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'raiseError' -> () From: ( |
             {} = 'Comment: Equivalent to [|:e| error: e]\x7fModuleInfo: Creator: globals raiseError.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'raiseError' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'raiseError' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         value = ( |
            | value: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'raiseError' -> () From: ( | {
         'ModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         value: e = ( |
            | error: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'block' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         onError: errorHandler = ( |
             h.
             r.
            | 
            h: process this errorHandler.
            process this errorHandler: errorHandler.
            r: onNonLocalReturn: [|:v|
                process this errorHandler: h.
                v ]
               IfFail: [|:e|
                process this errorHandler: h.
                raiseError ].
            process this errorHandler: h.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         ambiguousSelector: sel Receiver: rec Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
            | 
            forwardSend: 'ambiguous' Selector: sel Receiver: rec Type: msgType
              Delegatee: del MethodHolder: mh Arguments: args 
              IfSucceed: [|:res| ^res ].
            suspendAndTrace: 
                ((((((processErrors ambiguousSelector copy
                    receiver:     rec)
                    selector:     sel)
                    type:         msgType)
                    delegatee:    del)
                    methodHolder: mh)
                    arguments:    args)
                    conflictingSlots: ((reflect: rec) lookupKey: sel).
            errorContinueValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fComment: Give the receiving object a chance to catch the error.\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: private'
        
         forwardSend: prefix Selector: sel Receiver: rec Type: msgType Delegatee: del MethodHolder: mh Arguments: args IfSucceed: blk = ( | {
                 'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
                
                 postfix = 'Selector:Type:Delegatee:MethodHolder:Arguments:'.
                }  {
                 'ModuleInfo: Module: errorHandling InitialContents: FollowSlot'
                
                 selector <- ''.
                } 
            | 
            selector: (prefix, postfix) canonicalize.
            ((reflect: rec) lookupKey: selector) isEmpty ifFalse: [
                | performDecl = (|
                    canFail = false.
                    acceptSelector: s = (
                        "This is for the type inferencer."
                        'Selector:Type:Delegatee:MethodHolder:Arguments:' 
                        isSuffixOf: s.
                      ).
                  |). |
                blk value: 
                    rec _Perform: selector
                        With: sel With: msgType With: del With: mh With: args
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot'
        
         handleError: e = ( |
            | errorHandler value: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         mismatchedArgumentCountSelector: sel Receiver: rec Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
            | 
            forwardSend: 'mismatchedArgumentCount' Selector: sel Receiver: rec
              Type: msgType Delegatee: del MethodHolder: mh Arguments: args 
              IfSucceed: [|:res| ^res ].
            suspendAndTrace: 
                (((((processErrors mismatchedArgumentCountSelector copy
                    receiver:     rec)
                    selector:     sel)
                    type:         msgType)
                    delegatee:    del)
                    methodHolder: mh)
                    arguments:    args.
            errorContinueValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         missingParentSelector: sel Receiver: rec Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
            | 
            forwardSend: 'missingParent' Selector: sel Receiver: rec
              Type: msgType Delegatee: del MethodHolder: mh Arguments: args 
              IfSucceed: [|:res| ^res ].
            suspendAndTrace: 
                (((((processErrors missingDelegatee copy
                    receiver:     rec)
                    selector:     sel)
                    type:         msgType)
                    delegatee:    del)
                    methodHolder: mh)
                    arguments:    args.
            errorContinueValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         performTypeErrorSelector: sel Receiver: rec Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
            | 
            forwardSend: 'performTypeError' Selector: sel Receiver: rec 
              Type: msgType Delegatee: del MethodHolder: mh Arguments: args 
              IfSucceed: [|:res| ^res ].
            suspendAndTrace: 
                (((((processErrors performTypeErrorSelector copy
                    receiver:     rec)
                    selector:     sel)
                    type:         msgType)
                    delegatee:    del)
                    methodHolder: mh)
                    arguments:    args.
            errorContinueValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'process' -> () From: ( | {
         'Category: error handling\x7fModuleInfo: Module: errorHandling InitialContents: FollowSlot\x7fVisibility: public'
        
         undefinedSelector: sel Receiver: rec Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
            | 
            forwardSend: 'undefined' Selector: sel Receiver: rec Type: msgType
              Delegatee: del MethodHolder: mh Arguments: args 
              IfSucceed: [|:res| ^res ].
            suspendAndTrace: 
                (((((processErrors undefinedSelector copy
                    receiver:     rec)
                    selector:     sel)
                    type:         msgType)
                    delegatee:    del)
                    methodHolder: mh)
                    arguments:    args.
            errorContinueValue).
        } | ) 



 '-- Side effects'

 globals modules errorHandling postFileIn
