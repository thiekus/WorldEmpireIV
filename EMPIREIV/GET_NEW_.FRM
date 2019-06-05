VERSION 4.00
Begin VB.Form Get_New_Info 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "New Game"
   ClientHeight    =   6195
   ClientLeft      =   3030
   ClientTop       =   1815
   ClientWidth     =   4875
   ControlBox      =   0   'False
   BeginProperty Font 
      name            =   "MS Sans Serif"
      charset         =   1
      weight          =   700
      size            =   8.25
      underline       =   0   'False
      italic          =   0   'False
      strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   6600
   Icon            =   "GET_NEW_.frx":0000
   Left            =   2970
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6195
   ScaleWidth      =   4875
   Top             =   1470
   Width           =   4995
   Begin VB.Frame Frame5 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Select Base Continent"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   2175
      Left            =   840
      TabIndex        =   14
      Top             =   3120
      Visible         =   0   'False
      Width           =   2790
      Begin VB.CommandButton Com_Cancel_Country 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Cancel"
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   1425
         TabIndex        =   17
         Top             =   1680
         Width           =   1065
      End
      Begin VB.CommandButton Com_List_OK 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Okay"
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   300
         TabIndex        =   16
         Top             =   1680
         Width           =   1065
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   1200
         Left            =   225
         Sorted          =   -1  'True
         TabIndex        =   15
         Top             =   360
         Width           =   2340
      End
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   585
      Left            =   2520
      TabIndex        =   4
      Top             =   5400
      Width           =   1320
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Okay"
      Default         =   -1  'True
      Height          =   585
      Left            =   1020
      TabIndex        =   3
      Top             =   5400
      Width           =   1275
   End
   Begin VB.Frame Frame6 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Difficulty"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1035
      Left            =   2460
      TabIndex        =   5
      Top             =   4260
      Width           =   2295
      Begin Threed.SSOption Option8 
         Height          =   285
         Left            =   120
         TabIndex        =   27
         Top             =   300
         Width           =   1935
         _version        =   65536
         _extentx        =   3413
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Normal (56 Armies)"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         value           =   -1  'True
      End
      Begin Threed.SSOption Option9 
         Height          =   285
         Left            =   120
         TabIndex        =   26
         TabStop         =   0   'False
         Top             =   600
         Width           =   1875
         _version        =   65536
         _extentx        =   3307
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Expert {30 Armies)"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.Frame Frame4 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Options"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1095
      Left            =   135
      TabIndex        =   11
      Top             =   3135
      Width           =   2295
      Begin Threed.SSOption Option5 
         Height          =   285
         Left            =   90
         TabIndex        =   23
         Top             =   240
         Width           =   2115
         _version        =   65536
         _extentx        =   3731
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Revolutions On"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         value           =   -1  'True
      End
      Begin Threed.SSOption Option6 
         Height          =   285
         Left            =   90
         TabIndex        =   22
         TabStop         =   0   'False
         Top             =   480
         Width           =   2115
         _version        =   65536
         _extentx        =   3731
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Show Occupy Armies"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
      End
      Begin Threed.SSOption Option7 
         Height          =   285
         Left            =   90
         TabIndex        =   21
         TabStop         =   0   'False
         Top             =   720
         Width           =   2115
         _version        =   65536
         _extentx        =   3731
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Revolutions Off"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Game Mode"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1095
      Left            =   2535
      TabIndex        =   10
      Top             =   3135
      Width           =   2205
      Begin Threed.SSOption Option4 
         Height          =   285
         Left            =   120
         TabIndex        =   20
         TabStop         =   0   'False
         Top             =   600
         Width           =   1995
         _version        =   65536
         _extentx        =   3519
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Real World Simulation"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
      End
      Begin Threed.SSOption Option3 
         Height          =   285
         Left            =   120
         TabIndex        =   19
         Top             =   300
         Width           =   1875
         _version        =   65536
         _extentx        =   3307
         _extenty        =   503
         _stockprops     =   78
         caption         =   "Standard Game"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         value           =   -1  'True
      End
   End
   Begin VB.Frame Frame_Player_Entry 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   700
         size            =   9.75
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1515
      Left            =   720
      TabIndex        =   12
      Top             =   480
      Visible         =   0   'False
      Width           =   3465
      Begin VB.TextBox Text_Player_Entry 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   700
            size            =   12
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0FFFF&
         Height          =   540
         Left            =   330
         MaxLength       =   12
         TabIndex        =   13
         Top             =   540
         Width           =   2790
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Initial Victim Status"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1035
      Left            =   120
      TabIndex        =   7
      Top             =   4260
      Width           =   2205
      Begin Threed.SSOption Option1 
         Height          =   285
         Left            =   120
         TabIndex        =   25
         Top             =   300
         Width           =   1935
         _version        =   65536
         _extentx        =   3413
         _extenty        =   503
         _stockprops     =   78
         caption         =   "All Countries Neutral"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         value           =   -1  'True
      End
      Begin Threed.SSOption Option2 
         Height          =   285
         Left            =   120
         TabIndex        =   24
         TabStop         =   0   'False
         Top             =   600
         Width           =   2055
         _version        =   65536
         _extentx        =   3625
         _extenty        =   503
         _stockprops     =   78
         caption         =   "All Countries Conquered"
         forecolor       =   0
         BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Player Configuration"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   3120
      Left            =   120
      TabIndex        =   8
      Top             =   0
      Width           =   4620
      Begin VB.CommandButton Com_Where_Player 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Base"
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   2025
         TabIndex        =   2
         Top             =   375
         Width           =   840
      End
      Begin VB.CommandButton Com_Type_Player 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Human"
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Index           =   0
         Left            =   975
         TabIndex        =   1
         Top             =   375
         Width           =   990
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Label2"
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   0
         Left            =   2940
         TabIndex        =   18
         Top             =   450
         Width           =   1590
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Player 1"
         BeginProperty Font 
            name            =   "MS Sans Serif"
            charset         =   1
            weight          =   400
            size            =   8.25
            underline       =   0   'False
            italic          =   0   'False
            strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   0
         Left            =   150
         TabIndex        =   9
         Top             =   450
         Width           =   765
      End
   End
   Begin VB.PictureBox Box_Ideology 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3030
      Left            =   660
      ScaleHeight     =   3030
      ScaleWidth      =   3615
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   2160
      Visible         =   0   'False
      Width           =   3615
      Begin VB.PictureBox Box_Flag 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   1875
         ScaleHeight     =   615
         ScaleWidth      =   1215
         TabIndex        =   6
         Top             =   225
         Visible         =   0   'False
         Width           =   1215
      End
   End
   Begin Threed.SSCommand Com_Help 
      Height          =   585
      Left            =   240
      TabIndex        =   28
      Top             =   5400
      Width           =   555
      _version        =   65536
      _extentx        =   979
      _extenty        =   1032
      _stockprops     =   78
      forecolor       =   8388608
      font3d          =   3
      outline         =   0   'False
      picture         =   "GET_NEW_.frx":030A
   End
End
Attribute VB_Name = "Get_New_Info"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' GET_NEW_.FRM
Option Explicit

Private Sub Com_Cancel_Country_Click()
    Frame5.Visible = 0
    Do While List1.ListCount
        List1.RemoveItem 0
        Loop
    Call sub13AD(-1)
    Frame5.Caption = "Select Base Continent"
    Label2(gv059A% - 1).ForeColor = QBColor(0)
End Sub

Private Sub Com_Help_Click()
    Call sub089A(5)
End Sub

Private Sub Com_List_OK_Click()
Dim l0032 As Integer
Dim l003A As Integer
Dim l0052 As Integer
    If List1.ListIndex < 0 Then
        Call Com_Cancel_Country_Click
        Exit Sub
        End If
    Frame5.Visible = 0: l0032% = List1.ListIndex
    If (List1.ListCount = 7 And l0032% = 0) Then
        gv0562%(gv059A%, 2) = 0: Call sub13AD(-1)
        Label2(gv059A% - 1).Caption = "Random"
        Label2(gv059A% - 1).ForeColor = QBColor(4)
        Do While List1.ListCount
            List1.RemoveItem 0
            Loop
        Exit Sub
        End If
    If List1.ListCount = 7 Then
            For l003A% = 1 To gv02C8%
                If List1.List(List1.ListIndex) = gv0294(l003A%).M1E1E Then
                    l0032% = l003A%: Exit For
                    End If
                Next
            gv0256% = gv0294(l0032%).M1EFF
            Do While List1.ListCount
                List1.RemoveItem 0
                Loop
            For l003A% = gv0294(l0032%).M1EFF To gv0294(l0032%).M1F0B
                List1.AddItem gv0260(l003A%).M1E1E
                Next
            Frame5.Caption = "Select Base Country"
            Frame5.Visible = -1
        Else
            Frame5.Visible = 0
            For l003A% = 1 To gv02C6%
                If List1.List(List1.ListIndex) = gv0260(l003A%).M1E1E Then
                    l0032% = l003A%: Exit For
                    End If
                Next
            l0052% = 0
            For l003A% = 1 To 8
                If gv0562%(l003A%, 2) = l0032% Then l0052% = 1: Exit For
                Next
            If l0052% = 0 Then
                gv0562%(gv059A%, 2) = l0032%
                Label2(gv059A% - 1).Caption = gv0260(gv0562%(gv059A%, 2)).M1E1E
                End If
            Do While List1.ListCount
                List1.RemoveItem 0
                Loop
            Call sub13AD(-1)
            Frame5.Caption = "Select Base Continent"
            Label2(gv059A% - 1).ForeColor = QBColor(4)
        End If
End Sub

Private Sub Com_Type_Player_Click(Index%)
    If Index = 0 Then Exit Sub
    If gv0714% Then
            If Index = 1 And gv0562%(Index + 1, 1) = 2 Then gv0562%(Index + 1, 1) = 0
            If gv0562%(Index + 1, 1) = 0 Then gv0562%(Index + 1, 1) = 1
        Else
            If Index = 1 And gv0562%(Index + 1, 1) = 2 Then gv0562%(Index + 1, 1) = 0
            If Index > 3 And gv0562%(Index + 1, 1) = 0 Then gv0562%(Index + 1, 1) = 1
        End If
    Select Case gv0562%(Index + 1, 1)
        Case 0
            If gv0714% Then
                    Com_Type_Player(Index).Caption = "Host"
                Else
                    Com_Type_Player(Index).Caption = "Human"
                End If
            Com_Where_Player(Index).Caption = "Base"
            gv0562%(Index + 1, 1) = 1
        Case 1
            If Val(TrialDays$) <> Int(Val(TrialDays$)) Or Index = 1 Then
                If gv0714% Then
                        Com_Type_Player(Index).Caption = Trim$(gv03E6(Index + 1))
                    Else
                        Com_Type_Player(Index).Caption = "Computer"
                    End If
                    Com_Where_Player(Index).Caption = "Base"
                    gv0562%(Index + 1, 1) = 2
                Else
                    Com_Type_Player(Index).Caption = "--------"
                    Com_Where_Player(Index).Caption = "----"
                    gv0562%(Index + 1, 1) = 0
                End If
        Case 2
            Com_Type_Player(Index).Caption = "--------"
            Com_Where_Player(Index).Caption = "----"
            gv0562%(Index + 1, 1) = 0
        Case Else
        End Select
End Sub

Private Sub Com_Where_Player_Click(Index%)
Dim l006E As Integer
    If Val(TrialDays$) = Int(Val(TrialDays$)) Then
        Beep
        Exit Sub
        End If
    If gv0562%(Index + 1, 1) <> 0 Then
        Call sub13AD(0)
        List1.AddItem " -Random-"
        For l006E% = 1 To gv02C8%
            List1.AddItem gv0294(l006E%).M1E1E
            Next
        gv059A% = Index + 1
        Label2(gv059A% - 1).ForeColor = QBColor(12)
        Frame5.Visible = -1
        End If
End Sub

Private Sub Command1_Click()
Dim l00AE As Integer
Static m00B2 As Integer
    If gv03AA = 0 Then
        Screen.MousePointer = 11
        Frame1.Visible = 0
        Frame2.Visible = 0
        Frame3.Visible = 0
        Frame4.Visible = 0
        Frame6.Visible = 0
        Get_New_Info.Box_Ideology.Visible = -1
        Get_New_Info.Box_Flag.Visible = -1
        Frame_Player_Entry.Visible = -1
        Call sub056B
        If gv0714% Then gv02D6(1).M1E1E = gv06A4$
        Screen.MousePointer = 0
        End If
    If (gv02D6(gv03AA).M1F50 = gc0886 Or gv02D6(gv03AA).M1F50 = gc088E) And gv02D6(gv03AA).M1F5D <> 5 Then
        If gv0714% Then
                gv02D6(gv03AA).M1E1E = Trim$(gv06A4$)
            Else
                If RTrim$(Text_Player_Entry.Text) <> "" Then
                        gv02D6(gv03AA).M1E1E = RTrim$(Text_Player_Entry.Text)
                    Else
                        gv02D6(gv03AA).M1E1E = "Player" + Str$(gv03AA)
                        Text_Player_Entry.Text = RTrim$(gv02D6(gv03AA).M1E1E)
                    End If
             End If
         End If
    For l00AE% = gv03AA + 1 To gv02CA%
        If gv02D6(l00AE%).M1F5D = m00B2 Then gv03AA = l00AE% - 1: Exit For
        If l00AE% = 8 Then gv03AA = gv02CA%
        Next
    If gv03AA = gv02CA% Then
            If gv0714% Then
                    Screen.MousePointer = 11
                    Unload Get_New_Info
                Else
                    Screen.MousePointer = 11
                    Call sub04F3
                    Screen.MousePointer = 11
                    Unload Get_New_Info
                    gv03A4% = 0
                    gv030A% = 0: gv025C% = 1
                    Call sub0484
                    Call sub0500
                    Screen.MousePointer = 0
                End If
        Else
            Call sub059B
            If gv02D6(gv03AA).M1F50 = gc0886 And gv02D6(gv03AA).M1F5D = m00B2 Then
                Text_Player_Entry.SetFocus
                End If
        End If
End Sub

Private Sub Command2_Click()
Dim l00BE As Integer
    Unload Get_New_Info
    ContMap.Button_Blitz.Enabled = -1
    ContMap.Image_Help.Visible = -1
    ContMap.ComMode.Visible = -1
    For l00BE% = 1 To gv02C6%
        gv0260(l00BE%).M1E9A = 0
        gv0260(l00BE%).M1ECC = 7
        Next
    gv03AC% = 0
    If gv0714% = 0 Then
            Call sub04F3
        Else
            gv0718% = 0
        End If
End Sub

Private Sub Form_Activate()
    Get_New_Info.Refresh
    If gv0714% Then
        ElseIf gv0250% = 0 Then
            Screen.MousePointer = 11
            If gv01F6% = 0 Then Call sub02E3("newgame.mid")
            gv0250% = 1
            Screen.MousePointer = 0
        End If
End Sub

Private Sub Form_Load()
Dim l00CA As Integer
Dim l00D8 As Integer
    'Get_New_Info.Left = (ContMap.Picture8.Left + 150 - Get_New_Info.Width) / 2
    'Get_New_Info.Top = (ContMap.Height - Get_New_Info.Height) / 2
    SetCenterOfForm ContMap, Get_New_Info
    If gv0714% = 0 Then
            Get_New_Info.Caption = "New Local Game"
        Else
            Get_New_Info.Caption = "New CyberWar"
            Frame3.Visible = 0
            gv0720% = 0
        End If
    ReDim gv0562%(8, 2):
    For l00CA% = 0 To 7
        If l00CA% > 0 Then
            Load Com_Type_Player(l00CA%)
            Load Com_Where_Player(l00CA%)
            Load Label1(l00CA%)
            Load Label2(l00CA%)
            Com_Type_Player(l00CA%).TabIndex = Com_Type_Player(0).TabIndex + (l00CA% * 2)
            Com_Where_Player(l00CA%).TabIndex = Com_Where_Player(0).TabIndex + (l00CA% * 2)
            End If
        Com_Type_Player(l00CA%).Top = (l00CA% * 300) + Com_Type_Player(0).Top
        Com_Where_Player(l00CA%).Top = (l00CA% * 300) + Com_Where_Player(0).Top
        If l00CA% = 0 Then
            If gv0714% Then
                    Com_Type_Player(l00CA%).Caption = "Host"
                Else
                    Com_Type_Player(l00CA%).Caption = "Human"
                End If
            gv0562%(1, 1) = 1: gv0562%(1, 2) = 0
            Label2(l00CA%).Caption = "Random"
            End If
        If l00CA% = 1 Then
            If gv0714% Then
                    Com_Type_Player(l00CA%).Caption = Trim$(gv03E6(l00CA% + 1))
                Else
                    Com_Type_Player(l00CA%).Caption = "Computer"
                End If
            gv0562%(2, 1) = 2: gv0562%(2, 2) = 0
            Label2(l00CA%).Caption = "Random"
            End If
        If l00CA% > 1 Then
            Com_Type_Player(l00CA%).Caption = "--------"
            Com_Where_Player(l00CA%).Caption = "----"
            gv0562%(l00CA% + 1, 1) = 0: gv0562%(l00CA% + 1, 2) = 0
            Label2(l00CA%).Caption = "Random"
            End If
        Label1(l00CA%).Top = (l00CA% * 300) + Label1(0).Top
        Label2(l00CA%).Top = (l00CA% * 300) + Label2(0).Top
        Label1(l00CA%).Caption = "Player" + Str$(l00CA% + 1)
        Com_Type_Player(l00CA%).Visible = -1
        Com_Where_Player(l00CA%).Visible = -1
        Label1(l00CA%).Visible = -1
        Label2(l00CA%).Visible = -1
        Next
    gv03AA = 0: gv03A6% = 0: gv03A8% = 0
    gv0594% = 0: l00D8% = 0
    gv0596% = 0: gv0598% = 0
    gv0308% = 0: gv059C% = 1
    If Val(TrialDays$) = Int(Val(TrialDays$)) Then
        Option3.Enabled = 0
        Option4.Enabled = 0
        Option5.Enabled = 0
        Option6.Enabled = 0
        Option7.Enabled = 0
        Option8.Enabled = 0
        Option9.Enabled = 0
        End If
    Get_New_Info.Refresh
    Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If gv0714% = 0 Then gv0250% = 0
End Sub

Private Sub Frame3_DragDrop(Source As Control, X As Single, Y As Single)
    Call sub1412
End Sub

Private Sub Frame4_Click()
    Call sub1412
End Sub

Private Sub Frame6_Click()
    Call sub1412
End Sub

Private Sub List1_Click()
    ' Reserved
End Sub

Private Sub List1_DblClick()
    Call Com_List_OK_Click
End Sub

Private Sub List1_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Call List1_Click
        End If
End Sub

Private Sub Option1_Click(Value As Integer)
   gv0598% = 0
End Sub

Private Sub Option2_Click(Value As Integer)
    If gv0596% = 0 Then
            gv0598% = 1
        Else
            gv0598% = 0
            Option1.Value = -1
        End If
End Sub

Private Sub Option3_Click(Value As Integer)
    gv0596% = 0
End Sub

Private Sub Option4_Click(Value As Integer)
    gv0596% = 1
    Call Option1_Click(-1)
    Option1.Value = -1
End Sub

Private Sub Option5_Click(Value As Integer)
    gv0594% = 0
End Sub

Private Sub Option6_Click(Value As Integer)
    gv0594% = 1
End Sub

Private Sub Option7_Click(Value As Integer)
    gv0594% = 2
End Sub

Private Sub Option8_Click(Value As Integer)
    gv059C% = 1
End Sub

Private Sub Option9_Click(Value As Integer)
    If gv0596% = 0 Then
            gv059C% = 2
        Else
            gv059C% = 1
            Option8.Value = -1
        End If
End Sub

Private Sub sub1376()
    Unload Get_New_Info
    Call sub02AB(-1)
End Sub

Private Sub sub13AD(p0118 As Integer)
    Frame1.Enabled = p0118%
    Frame2.Enabled = p0118%
    Frame3.Enabled = p0118%
    Frame4.Enabled = p0118%
    Frame6.Enabled = p0118%
    Command1.Enabled = p0118%
    Command2.Enabled = p0118%
    Frame1.Visible = p0118%
    If gv0714% = 0 Then Frame3.Visible = p0118%
    Frame4.Visible = p0118%
    Frame6.Visible = p0118%
End Sub

Private Sub sub1412()
End Sub

Private Sub Text_Player_Entry_GotFocus()
    If gv03AA = 0 Then Call sub059B
End Sub

