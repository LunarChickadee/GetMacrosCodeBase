global equationList

equationList=""
firstrecord
loop
field «Field Name»
equationList=equationList+«Field Name»+¶+Equation+¶+¶
downrecord
until info("stopped")

clipboard()=equationList
