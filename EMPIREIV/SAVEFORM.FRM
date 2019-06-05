VERSION 4.00
Begin VB.Form SaveForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00800000&
   Caption         =   "Save A Game"
   ClientHeight    =   4350
   ClientLeft      =   2520
   ClientTop       =   3600
   ClientWidth     =   4815
   BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   4935
   Icon            =   "SAVEFORM.frx":0000
   Left            =   2400
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4350
   ScaleWidth      =   4815
   Top             =   3135
   Width           =   5055
   Begin VB.CommandButton SaveLoadCancel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   615
      Left            =   3480
      TabIndex        =   0
      Top             =   1560
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.OptionButton SaveGames 
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   0
      Left            =   300
      TabIndex        =   1
      Top             =   1320
      Visible         =   0   'False
      Width           =   3075
   End
   Begin VB.CommandButton SaveLoadOk 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Okay"
      Default         =   -1  'True
      Height          =   615
      Left            =   3480
      TabIndex        =   2
      Top             =   840
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.TextBox Text_Save 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   300
      MaxLength       =   30
      TabIndex        =   3
      Top             =   840
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   240
      Width           =   4095
   End
End
Attribute VB_Name = "SaveForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' SAVEFORM.FRM
Option Explicit
Dim m001A As Integer
Const mc005E = 5 ' &H5%

Private Sub Form_Activate()
    Screen.MousePointer = 0
    If Text_Save.Visible Then Text_Save.SetFocus
    If gv044C% <> 2 And m001A% Then
        MsgBox "No Games To Load Yet!"
        Unload SaveForm
        End If
End Sub

Private Sub Form_Load()
Dim l0048 As Integer
Dim l004C As Integer
Dim l0054 As Integer
' Const mc005E = 5 ' &H5%
Dim l0062 As Integer
    'SaveForm.Left = (ContMap.Picture8.Left + 150 - SaveForm.Width) / 2
    'SaveForm.Top = (ContMap.Height - SaveForm.Height) / 2
    SetCenterOfForm ContMap, SaveForm
    Label7.Visible = -1
    SaveLoadOk.Visible = -1
    SaveLoadCancel.Visible = -1
    m001A% = 0
    If gv044C% = 0 Then
            SaveForm.Caption = "Save A Local Game"
            Text_Save.Visible = -1
            Label7.Caption = "Choose A Place To Save Your Game:"
            Text_Save.Text = ""
        ElseIf gv044C% = 1 Then
            m001A% = 1
            SaveForm.Caption = "Load A Game "
            Label7.Caption = "Select Game To Load:"
        ElseIf gv044C% = 3 Then
            SaveForm.Caption = "Save A CyberWar Game"
            Label7.Caption = "Choose A Place To Save This Game, And Give It A Name:"
            Text_Save.Visible = -1
            Text_Save.Text = ""
        ElseIf gv044C% = 4 Then
            m001A% = 1
            SaveForm.Caption = "Load A CyberWar Game "
            Label7.Caption = "Select Game To Load:"
        Else
            SaveForm.Caption = "Surrender!"
            Label7.Caption = "Surrender to Whom?"
        End If
    If gv044C% <> 2 Then
            ReDim gv0418$(8)
            If gv044C% < 2 Then
                    l0048% = FreeFile: Open AppData$ + "\" + "empire4.svd" For Append As l0048%: Close l0048%
                    l0048% = FreeFile: Open AppData$ + "\" + "empire4.svd" For Input As l0048%
                Else
                    l0048% = FreeFile: Open AppData$ + "\" + "empirer.svd" For Append As l0048%: Close l0048%
                    l0048% = FreeFile: Open AppData$ + "\" + "empirer.svd" For Input As l0048%
                End If
            Do Until EOF(l0048%)
                l004C% = l004C% + 1: Line Input #l0048%, gv0418$(l004C%)
                Loop: Close l0048%
            For l004C% = 0 To 7
                If l004C% > 0 Then Load SaveGames(l004C%)
                SaveGames(l004C%).Enabled = -1
                SaveGames(l004C%).Top = (l004C% * 330) + SaveGames(0).Top
                SaveGames(l004C%).Value = 0
                SaveGames(l004C%).TabIndex = SaveGames(0).TabIndex + l004C%
                If RTrim$(gv0418$(l004C% + 1)) = "" Then
                        SaveGames(l004C%).Caption = "Blank"
                    Else
                        SaveGames(l004C%).Caption = gv0418$(l004C% + 1)
                        If Trim$(gv0418$(l004C% + 1)) <> "Blank" Then
                            m001A% = 0
                            End If
                    End If
                SaveGames(l004C%).Visible = -1
                Next
        Else
            For l004C% = 1 To 8
                If l0054% > 0 Then Load SaveGames(l0054%)
                SaveGames(l0054%).Top = (l0054% * 330) + SaveGames(0).Top
                SaveGames(l0054%).Value = 0
                SaveGames(l0054%).TabIndex = SaveGames(0).TabIndex + l004C% - 1
                SaveGames(l0054%).Caption = gv02D6(l004C%).M1E1E
                SaveGames(l0054%).Enabled = -1
                If gv02D6(l004C%).M1F5D = mc005E Or l004C% = gv03A4% Then
                        SaveGames(l0054%).Visible = 0
                    Else
                        If l0062% = 0 Then
                            SaveGames(l0054%).Value = -1
                            l0062% = 1
                            End If
                        SaveGames(l0054%).Visible = -1
                    End If
                l0054% = l0054% + 1
                Next
        End If
    Refresh
    If gv044C% = 2 Then
        For l004C% = 1 To 8
            If SaveGames(l004C% - 1).Visible Then
            SaveGames(l004C% - 1).Value = -1: gv044A% = l004C%
            SaveGames(l004C% - 1).SetFocus: Exit For
            End If
            Next
        Exit Sub
        End If
    SaveGames(0).Value = -1: gv044A% = 1
    Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ContMap.Enabled = -1
End Sub

Private Sub SaveGames_Click(Index%)
    Text_Save.Text = SaveGames(Index).Caption
    gv044A% = Index + 1
    If Text_Save.Visible Then Text_Save.SetFocus
End Sub

Private Sub SaveLoadCancel_Click()
    If gv0714% Then gv0718% = 0
    If gv0714% And gv044C% = 2 Then gv07C6% = 1
    Unload SaveForm
End Sub

Private Sub SaveLoadOk_Click()
    Screen.MousePointer = 11
    If gv044C% <> 2 And (RTrim$(Text_Save.Text) = "" Or RTrim$(Text_Save.Text) = "Blank") Then
       MsgBox "Invalid Saved Game Name."
       Screen.MousePointer = 0
       Exit Sub
       End If
    If gv0714% Then
        gv0720% = gv044A%
        End If
    If (gv044C% = 0 Or gv044C% = 3) Then
            SaveGames(gv044A% - 1).Caption = Text_Save.Text
            gv0418$(gv044A%) = Text_Save.Text
            Call sub0561(gv044A%)
            If gv0714% Then
                gv071C$ = Trim$(Text_Save.Text)
                End If
        ElseIf (gv044C% = 1 Or gv044C% = 4) And gv044A% > 0 Then
            If gv0714% = 0 Then
                Call sub047A(gv044A%)
                ContMap.Refresh
                Call sub0496(-1)
                Call sub02AB(-1)
                gv025C% = 1
                Unload SaveForm
                ContMap.ComFocus.SetFocus
                Call sub02BB(-1)
                End If
            If gv0714% Then gv071C$ = Trim$(Text_Save.Text)
        ElseIf gv044C% = 2 Then
            ContMap.Refresh
            gv0554% = gv03A4%: gv0556% = gv044A%
            If gv0714% Then gv07C6% = 2
            Unload SaveForm
            If gv0714% = 0 Then Call sub03F4(gv0554%, gv0556%, 0)
        End If
    Screen.MousePointer = 0
    Unload SaveForm
End Sub

Private Sub Text_Save_GotFocus()
    Text_Save.SelStart = 0
    Text_Save.SelLength = Len(Text_Save.Text)
End Sub

