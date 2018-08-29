Attribute VB_Name = "Mod_IsAvailable"
Option Compare Database
Option Explicit
'Created by : Grace Seo'
'This module shows volunteers' time table'
Public Function IsAvailable(time, starttime, endtime) As String

Dim AvailableTime, StartingTime, EndingTime, tmpStart, tmpEnd As Integer


AvailableTime = time
StartingTime = starttime
EndingTime = endtime

If AvailableTime >= StartingTime And AvailableTime <= EndingTime Then
    IsAvailable = "O"
Else
    IsAvailable = ""
End If

End Function
