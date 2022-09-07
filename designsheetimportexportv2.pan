
global vdictionary, 
name, value, ImportExportChoicelist,
fileList,choiceMade,winChoice1,winChoice2,vOptions,
fieldNames,designExport

// Get the 
GetScrap "1 - copy  fieldnames and design equations to clipboard, 2 - export equations to other DB"

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
arraybuild fieldNames,¶,"",«Field Name»
arraybuild designExport, ¶,"", arrayfilter(fieldNames,¶,array(fieldNames,seq(),¶))

defaultcase
message "Invalid Number Choice"
endcase



