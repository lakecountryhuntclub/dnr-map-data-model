Attribute VB_Name = "modLogging"
Option Explicit

Public Function LogChange(Optional Msg As String) As Boolean

    Dim StartTime As Double
    Dim TempArray() As Variant
    Dim LastRow As Long
    Dim Rng As Range
    Dim FirstCell, LastCell
    
    Application.ScreenUpdating = False
    
    StartTime = Timer
    
    ReDim TempArray(0, 5)
    
    LastRow = shChangelog.UsedRange.Rows.Count + 1
    
    FirstCell = "A" + CStr(LastRow)
    LastCell = "I" + CStr(LastRow)
    
    TempArray(0, 0) = FormatDateTime(Now, vbShortDate)
    TempArray(0, 1) = FormatDateTime(Now, vbLongTime)
    TempArray(0, 2) = Environ$("USERNAME")
    TempArray(0, 3) = Environ$("COMPUTERNAME")
    TempArray(0, 4) = ActiveSheet.Name
    TempArray(0, 5) = Msg
    
    Set Rng = shChangelog.Range(FirstCell, LastCell)
    Rng.Value = TempArray
    
    Debug.Print Format(Timer - StartTime, "00.00") & " Seconds"
    
    Application.ScreenUpdating = True

End Function
