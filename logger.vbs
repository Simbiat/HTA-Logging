'%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
' Writing to file
'%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Function writeinfile(logfile, logline, gui, append, msgtype)
  dim writelog
  On Error Resume Next
  If cstr(gui) = "1" or cstr(gui) = "" Then
    statusbar.value = logline
  elseif cstr(gui) = "0" Then
    'Do Nothing
  else
    statusbar.value = gui
  End if
  On Error GoTo 0
  Set writelog=objFSO.openTextfile(logfile, append, true)
  writelog.WriteLine logline
  writelog.close
  On Error Resume Next
  if cstr(gui) "0" Then
    if msgtype = 1 Then
      msgbox statusbar.value, vbOKOnly+vbInformation, "Info"
    elseif msgtype = 2 Then
      msgbox statusbar.value, vbOKOnly+vbExclamation, "Warning"
    elseif msgtype = 3 Then
      msgbox statusbar.value, vbOKOnly+vbCritical, "Error"
    End if
  End if
  On Error GoTo 0
End Function
