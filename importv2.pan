local Dictionary1,Dictionary2, ProcedureList, clipHold
clipHold=""
clipHold=clipboard()
getscrap "Warning, admin only. Password?"
    if clipboard() notcontains "7seeds"
        stop
       endif
       
clipboard()=clipHold
Dictionary1=""
Dictionary1=clipboard()
yesno "Press yes to import all macros from clipboard"
if clipboard()="No"
stop
endif
//step one
importdictprocedures Dictionary1, Dictionary2
//changes the easy to read macros into a panorama readable file

 
//step 2
//this lets you load your changes back in from an editor and put them in
//copy your changed full procedure list back to your clipboard
//now comment out from step one to step 2
//run the procedure one step at a time to load the new list on your clipboard back in
//Dictionary2=clipboard()
loadallprocedures Dictionary2,ProcedureList
displaydata ProcedureList //messages which procedures got changed
