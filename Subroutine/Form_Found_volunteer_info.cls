VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Form_Found_volunteer_info"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Load()
   BrowseMode True
End Sub

'------------------------------------------------------------
' cancel all changes made by the user, lock the form
'------------------------------------------------------------
Private Sub cancelBtn_Click()
    If Me.Dirty Then
        DoCmd.RunCommand acCmdUndo
    End If
    BrowseMode True
    Recordset.MoveFirst
End Sub
'-----------------------------------------------------------
' unlock the current reord for updating
'------------------------------------------------------------
Private Sub editBtn_Click()
    BrowseMode False
End Sub
'------------------------------------------------------------
' close the form
'------------------------------------------------------------
Private Sub exitBtn_Click()
    If Me.Dirty Then
        DoCmd.RunCommand acCmdUndo
    End If
    DoCmd.Close
End Sub


Private Sub BrowseMode(show As Boolean)
   Me.saveBtn.Enabled = Not show
   Me.cancelBtn.Enabled = Not show
   Me.First_Name.Locked = show
   Me.last_name.Locked = show
   Me.Address.Locked = show
   Me.City.Locked = show
   Me.birthday.Locked = show
   Me.T_Shirt.Locked = show
   Me.Phone1.Locked = show
   Me.Phone2.Locked = show
   Me.Comments.Locked = show
   Me.primaryArea.Locked = show
   Me.Other_Area.Locked = show
   Me.Festival_Setup.Locked = show
   Me.Before_Available.Locked = show
   Me.After.Locked = show
   Me.Mas_Camp.Locked = show
   Me.Festival_Day1_shift.Locked = show
   Me.Festival_Day1_Other.Locked = show
   Me.Festival_Day2_Other.Locked = show
   Me.Festival_Day2_shift.Locked = show
   Me.Marketing_Event.Locked = show
   Me.workshop.Locked = show
   Me.KidsPark.Locked = show
   Me.Returns.Locked = show
   Me.Contact_results.Locked = show
   Me.Strengths.Locked = show
   
   Me.editBtn.Enabled = show
   Me.exitBtn.Enabled = show
   
 End Sub

'------------------------------------------------------------
' load the form with the first record on file
'------------------------------------------------------------
Private Sub goFirstBtn_Click()
    Recordset.MoveFirst
End Sub
'------------------------------------------------------------
' load the form with the last record on file
'------------------------------------------------------------
Private Sub goLastBtn_Click()
    Recordset.MoveLast
End Sub
'------------------------------------------------------------
' load the form with the next record
'------------------------------------------------------------
Private Sub goNextBtn_Click()
    If Not Recordset.EOF Then
        Recordset.MoveNext
    End If
End Sub
'------------------------------------------------------------
' load the form with the previous record
'------------------------------------------------------------
Private Sub goPreBtn_Click()
    If Not Recordset.BOF Then Recordset.MovePrevious
End Sub

Private Sub saveBtn_Click()
   DoCmd.RunCommand acCmdSaveRecord
   BrowseMode True
End Sub
