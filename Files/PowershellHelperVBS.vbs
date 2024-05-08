    Dim shell,fso,file
        Set shell=CreateObject("WScript.Shell")
        Set fso=CreateObject("Scripting.FileSystemObject")
        strPath=WScript.Arguments.Item(0)
        If fso.FileExists(strPath) Then
            set file=fso.GetFile(strPath)
            strCMD="powershell -nologo -executionpolicy ByPass -command " & Chr(34) & "&{" &_
            file.ShortPath & "}" & Chr(34)
            shell.Run strCMD,0
        End If    
    
