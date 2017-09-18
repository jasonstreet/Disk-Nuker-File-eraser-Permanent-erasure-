Option Explicit

dim wshShell

dim strComputer : strComputer = "."
dim strNameSpace : strNameSpace = "root\wmi"
dim strClass : strClass = "Lenovo_BiosPasswordSettings"
dim strComputerName
dim objWmiService,objItem, objFSO, objLog


Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objLog = objFSO.OpenTextFile("c:\temp\log.txt", 8, True, 0)

Set wshShell = CreateObject( "WScript.Shell" )
strComputerName = wshShell.ExpandEnvironmentStrings( "%COMPUTERNAME%" )
objLog.Write vbNewLine & strComputerName & vbTab

Set objWmiService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\" & strNameSpace)

dim colItems

Set colItems = objWmiService.ExecQuery("Select * from " & strClass)

dim oPasswordState

For Each objItem in colItems
    objLog.Write "Password state: " & objItem.PasswordState & vbTab
    oPasswordState = objItem.PasswordState
Next

dim oResult

oResult = oPasswordState And 1
objLog.Write "Result 1 is " & oResult & vbTab

oResult = oPasswordState And 2
objLog.Write "Result 2 is " & oResult & vbTab

oResult = oPasswordState And 4
objLog.Write "Result 4 is " & oResult & vbTab


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
    WScript.quit 4
end If

objLog.Close