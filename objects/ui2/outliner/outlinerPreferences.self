 '$Revision: 30.7 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         browseOutlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'browseOutlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals browseOutlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'browseOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         color <- paint copyRed: 0.878788 Green: 0.878788  Blue: 0.913001.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         outlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals outlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'browseOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         categoryOutlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'categoryOutlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals categoryOutlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'categoryOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | globals fontSpec copyName: 'times' Size: mediumFontSize Style: 'italic').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'categoryOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         copyDownSlotOutlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals copyDownSlotOutlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (paint copyRed: 0.86999 Green: 0.820137 Blue: 0.820137)'
        
         color <- paint copyRed: 0.86999 Green: 0.820137 Blue: 0.820137.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copySize: largeFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         privateSlotStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'privateSlotStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals copyDownSlotOutlinerPreferences privateSlotStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'privateSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copyName: 'times' Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'privateSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         publicSlotStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'publicSlotStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals copyDownSlotOutlinerPreferences publicSlotStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'publicSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copyName: 'times' Style: 'bold').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'publicSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         undeclaredSlotStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'undeclaredSlotStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals copyDownSlotOutlinerPreferences undeclaredSlotStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'undeclaredSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | 
            resend.fontSpec copyName: 'helvetica' Size: mediumFontSize Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> 'undeclaredSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'copyDownSlotOutlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         debuggerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals debuggerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         buttonStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> 'buttonStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals debuggerPreferences buttonStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> 'buttonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copyName: 'times'  Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> 'buttonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'debuggerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (paint copyRed: 0.820137 Green: 0.86999 Blue: 0.820137)'
        
         color <- paint copyRed: 0.820137 Green: 0.86999 Blue: 0.820137.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'debuggerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         xDisplay = ( |
            | resend.preferences xDisplay).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         moduleOutlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'moduleOutlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals moduleOutlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'moduleOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (paint copyRed: 0.86999 Green: 0.820137 Blue: 0.820137)'
        
         color <- paint copyRed: 0.86999 Green: 0.820137 Blue: 0.820137.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'moduleOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         outlinerPreferences = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules outlinerPreferences.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'ui2/outliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.7 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         objectOutlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'objectOutlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals objectOutlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'objectOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | globals fontSpec copyName: 'times' Size: largeFontSize Style: 'bold').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'objectOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         acceptButtonStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'acceptButtonStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals outlinerPreferences acceptButtonStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'acceptButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         color <- paint copyRed: 0.518084 Green: 0.699902  Blue: 0.518084.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'acceptButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         annotationInfoStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'annotationInfoStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals outlinerPreferences annotationInfoStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'annotationInfoStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copySize: mediumFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'annotationInfoStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         cancelButtonStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'cancelButtonStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals outlinerPreferences cancelButtonStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'cancelButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         color <- paint copyRed: 0.699902 Green: 0.40958  Blue: 0.518084.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'cancelButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         color <- paint named: 'lightGray'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         commentButtonStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentButtonStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals outlinerPreferences commentButtonStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         commentButtonText = '\"...\"'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = bootstrap setObjectAnnotationOf: ( fontSpec copyName: 'helvetica' Size: 8 Style: 'bold') From: ( |
             {} = 'Comment: I am an abstract, portable, description of a font.
I am also immutable.\x7fModuleInfo: Creator: globals outlinerPreferences commentButtonStyle fontSpec.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentButtonStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         commentStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals outlinerPreferences commentStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | 
            globals fontSpec copyName: 'helvetica' Size: smallFontSize Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> 'commentStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         expandWhenSprouted <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'Comment: Flush cached menus and buttons after changing their
default font size or style.\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         flushMenuCaches = ( |
            | 
            morph basicSelfMenu:         ui2Menu buildBasicSelfMenu.
            morph basicMenuWhenSubmorph: ui2Menu buildBasicMenuWhenSubmorph.

            desktop worldsDo: [|:w| w backgroundMenu: nil].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (paint named: \'black\')'
        
         fontColor <- paint named: 'black'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | largeFontSpec).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         headerButtonFontSpec = bootstrap setObjectAnnotationOf: ( fontSpec copyName: 'helvetica' Size: 8 Style: 'bold') From: ( |
             {} = 'Comment: I am an abstract, portable, description of a font.
I am also immutable.\x7fModuleInfo: Creator: globals outlinerPreferences headerButtonFontSpec.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (14)'
        
         largeFontSize <- 14.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         largeFontSpec = ( |
            | 
            myFontSpec copySize: largeFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (12)'
        
         mediumFontSize <- 12.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         mediumFontSpec = ( |
            | 
            myFontSpec copySize: mediumFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         mergeAssignmentSlots <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (fontSpec copyName: \'times\' Size: 11 Style: \'\')'
        
         myFontSpec <- fontSpec copyName: 'times' Size: 11 Style: ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         setDemoFonts = ( |
            | 
            largeFontSize:  20.
            mediumFontSize: 18.
            smallFontSize:  16.
            tinyFontSize:   14.

            "Some big fixed fonts: 8x13, 8x13bold, 8x16, 9x15 9x15bold, 10x20, 12x24"
            ui2_textFiled fontSpec: globals fontSpec copyName: '10x20' Size: 20.

            flushMenuCaches.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         setGiantFonts = ( |
            | 
            largeFontSize:  28.
            mediumFontSize: 24.
            smallFontSize:  20.
            tinyFontSize:   18.

            "Some big fixed fonts: 8x13, 8x13bold, 8x16, 9x15 9x15bold, 10x20, 12x24"
            ui2_textField fontSpec: globals fontSpec copyName: '12x24' Size: 24.

            ui2Menu   defaultFontSpec: ui2Menu   defaultFontSpec copySize: 20.
            ui2Button defaultFontSpec: ui2Button defaultFontSpec copySize: 24.
            flushMenuCaches.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         setNormalFonts = ( |
            | 
            largeFontSize:  14.
            mediumFontSize: 12.
            smallFontSize:  10.
            tinyFontSize:    9.

            "Some small fixed fonts: 5x8, 6x9, 6x10, 6x12, 6x13, 6x13bold, 7x13, 7x13bold, 7x14"
            ui2_textField fontSpec: globals fontSpec copyName: '6x13' Size: 13.

            ui2Menu   defaultFontSpec: ui2Menu   defaultFontSpec copySize: 12.
            ui2Button defaultFontSpec: ui2Button defaultFontSpec copySize: 14.
            flushMenuCaches.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         showSlotContents <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'Comment: A style with much information surpressed, 
good for introducing language semantics, say.
--RBS\x7fModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         simpleOutliners <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (10)'
        
         smallFontSize <- 10.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         smallFontSpec = ( |
            | 
            myFontSpec copySize: smallFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (9)'
        
         tinyFontSize <- 9.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         tinyFontSpec = ( |
            | 
            myFontSpec copySize: tinyFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Programming Environment\x7fCategory: Preferences\x7fModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot\x7fVisibility: public'
        
         slotOutlinerPreferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals slotOutlinerPreferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copySize: largeFontSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'outlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         privateSlotStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'privateSlotStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals slotOutlinerPreferences privateSlotStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'privateSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copyName: 'times' Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'privateSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         publicSlotStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'publicSlotStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals slotOutlinerPreferences publicSlotStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'publicSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | resend.fontSpec copyName: 'times' Style: 'bold').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'publicSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: InitializeToExpression: (true)'
        
         slotsBecomeObjectsWhenDropped <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         undeclaredSlotStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'undeclaredSlotStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals slotOutlinerPreferences undeclaredSlotStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'undeclaredSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         fontSpec = ( |
            | 
            globals fontSpec copyName: 'helvetica' Size: mediumFontSize Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> 'undeclaredSlotStyle' -> () From: ( | {
         'ModuleInfo: Module: outlinerPreferences InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'slotOutlinerPreferences' -> ().
        } | ) 



 '-- Side effects'

 globals modules outlinerPreferences postFileIn
