
these messed up the normal tabs when modifiy was also a chosen macro

local KeyStroke 
KeyStroke=info("trigger")[5,-1]

case info("formname")="nikos" and info("fieldname")="lot" and KeyStroke=chr(9) /* tab */ 
   field «amtrec»
   message "Tab!"
endif
   
    
//case 2, 3, etc
defaultcase
key info("modifiers"),KeyStroke endcase
_____________________________________

local KeyStroke,fName
KeyStroke=info("trigger")[5,-1]
fName=info("fieldname")
case info("formname")="nikos" 
    if fName=«lot»
        field «amtrec»
    endif

//case 2, 3, etc
defaultcase
key info("modifiers"),KeyStroke 
endcase

local KeyStroke,fName
KeyStroke=info("trigger")[5,-1]
fName=info("fieldname")
loop
key info("modifiers"),KeyStroke 
fName=fName+¶+info("fieldname")
if error
    nop
    key info("modifiers"),KeyStroke 
endif
until 10

local KeyStroke,fName
KeyStroke=info("trigger")[5,-1]
fName=info("fieldname")
loop
key info("modifiers"),KeyStroke 
fName=fName+¶+info("fieldname")
if error
    nop
    key info("modifiers"),KeyStroke 
endif
until 10


type
type
type
type
type
type
type
type
type
type
type
type
type
type
type
type
type
type
type
type
type