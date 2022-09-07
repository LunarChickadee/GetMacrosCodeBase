global vdictionary, 
name, value, ImportExportChoicelist,
fileList,choiceMade,winChoice1,winChoice2,vOptions,
fieldNames,designExport,designFields


// Get the 
GetScrap "1 copyall | 2 move DB | 3 name&equations"

case val(clipboard())=2

vOptions=“caption="Choose file to export equations from"”
choiceMade=""
fileList=listfiles(folder(""),"????KASX")


superchoicedialog fileList, choiceMade, vOptions

winChoice1=choiceMade

superchoicedialog fileList, choiceMade,
“caption="Choose file to export equations to"”

winChoice2=choiceMade
window (winChoice1)
    opendesignsheet
    vdictionary=""
    firstrecord

        loop
            setdictionaryvalue vdictionary, «Field Name», «Equation»
            downrecord
        until info("stopped")

window (winChoice2)
    opendesignsheet
    firstrecord

        loop
            field «Equation»
            «» = getdictionaryvalue(vdictionary, «Field Name»)
            downrecord
        until info("stopped")

case val(clipboard())=1
vOptions=“caption="Choose file to copy Design Sheet info from"”
choiceMade=""
fileList=listfiles(folder(""),"????KASX")


superchoicedialog fileList, choiceMade, vOptions

winChoice1=choiceMade


window (winChoice1)
    opendesignsheet
    vdictionary=""

fieldNames=""
designExport=""
designFields=""
field «Field Name»

loop
    designFields=?(designFields≠"",designFields+¬+“"”+info("fieldname")+“"”,“"”+info("fieldname")+“"”)
      ;displaydata designFields
    right
until info("stopped")



arraybuild designExport, ¶,"", exportline()
designExport=designFields+¶+designExport
message "Design Sheet in clipboard."
clipboard()=designExport

case val(clipboard())=3
designExport=""
firstrecord
loop
field «Field Name»

designExport=designExport+«Field Name»+¶+Equation+¶+¶
downrecord
until info("stopped")
message "Clipboard filled!"
clipboard()=designExport

defaultcase
message "Invalid Number Choice"
endcase



