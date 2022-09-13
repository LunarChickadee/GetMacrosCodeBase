local KeyStroke,fName
fName=""
KeyStroke=""
KeyStroke=info("trigger")[5,-1]
fName=info("fieldname")

if  info("FormName") ="Quality"
Field «cat #»
endif

if info("formname")="nikos" 
    case fName = "lot" 
        field «amtrec»
    defaultcase
        key info("modifiers"),KeyStroke 
endif

endcase 