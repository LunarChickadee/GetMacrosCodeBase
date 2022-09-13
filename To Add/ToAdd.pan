Duplicate groupup counter

local countRecords
selectduplicates ""
groupup

firstrecord

countRecords=0

loop
if info("summary")<1
downrecord
countRecords=countRecords+1
else

«»=str(countRecords)
countRecords=0
downrecord
endif
until info("stopped")