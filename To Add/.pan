global strLength

select str(«»)≠""
strLength=length(«»)

loop
strLength=strLength*2
select length(«»)>strLength
stoploopif info("empty")
repeatloopif (not info("empty"))
while forever

loop
select length(«»)=strLength/


if (not info("empty"))
message "Max Length is " + str(strLength-1)
else 
message "Max Length is " + str(strLength-2)
endif