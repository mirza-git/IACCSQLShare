/*
sp_configure 'show advanced options',1
RECONFIGURE WITH OVERRIDE
EXEC sp_configure 'external scripts enabled', 1
RECONFIGURE WITH OVERRIDE

----GRANT EXECUTE ANY EXTERNAL SCRIPT TO username

*/

execute sp_execute_external_script 
@language = N'Python',
@script = N'
import sys
print(sys.version)
print ("Hello World !!!")
'

