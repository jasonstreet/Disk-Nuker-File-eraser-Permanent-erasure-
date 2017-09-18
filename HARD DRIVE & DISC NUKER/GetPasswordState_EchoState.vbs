Option Explicit

dim strComputer : strComputer = "."
dim strNameSpace : strNameSpace = "root\wmi"
dim strClass : strClass = "Lenovo_BiosPasswordSettings"
dim objWmiService,objItem, objFSO, objLog
Dim sLoglocal, shell

Set Shell = WScript.CreateObject("WScript.Shell")
sLoglocal = Shell.ExpandEnvironmentStrings("%TEMP%")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objLog = objFSO.OpenTextFile(sLoglocal & "\HDD_Set_log.txt", 8, True, 0)

Set objWmiService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\" & strNameSpace)

dim colItems

Set colItems = objWmiService.ExecQuery("Select * from " & strClass)

dim oPasswordState

For Each objItem in colItems
    objLog.Write "Password state: " & objItem.PasswordState & vbTab
    oPasswordState = objItem.PasswordState
Next

if oPasswordState And 1 then 
    objLog.Write "User Password is set" & vbTab
else 
    objLog.Write "User Password is not set" & vbTab
end if

if oPasswordState And 2 then 
    objLog.Write "Admin Password is set" & vbTab
else 
    objLog.Write "Admin Password is not set" & vbTab
end if

if oPasswordState And 4 then 
    WScript.echo "Hard Disk Password is set" & vbTab
    WScript.Quit 0
else 
    WScript.echo "Hard Disk Password is not set"
    WScript.Quit 4
end If

objLog.Close