Attribute VB_Name = "modUDFs"
Option Explicit

Public Function CleanColumnName(Rng As Range) As String

    Dim Tmp As String
    
    Tmp = Application.WorksheetFunction.Trim(Rng.Value)
    Tmp = Application.WorksheetFunction.Substitute(Tmp, " ", "_")
    Tmp = LCase$(Tmp)
    
    CleanColumnName = Tmp

End Function
