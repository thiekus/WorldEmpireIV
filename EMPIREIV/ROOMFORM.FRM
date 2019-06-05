VERSION 4.00
Begin VB.Form RoomForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   Caption         =   "Cyberspace Hot Line"
   ClientHeight    =   4515
   ClientLeft      =   2565
   ClientTop       =   3330
   ClientWidth     =   5790
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
   Height          =   5205
   Icon            =   "ROOMFORM.frx":0000
   KeyPreview      =   -1  'True
   Left            =   2505
   LinkTopic       =   "Form1"
   MousePointer    =   1  'Arrow
   ScaleHeight     =   4515
   ScaleWidth      =   5790
   Top             =   2700
   Width           =   5910
   Begin VB.ListBox ListUsers 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   810
      Left            =   1980
      MousePointer    =   1  'Arrow
      Sorted          =   -1  'True
      TabIndex        =   6
      Top             =   3540
      Width           =   1455
   End
   Begin VB.TextBox TextToSend 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         name            =   "Courier New"
         charset         =   1
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   855
      Left            =   120
      MousePointer    =   1  'Arrow
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   2580
      Width           =   5535
   End
   Begin VB.TextBox TextReceive 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         name            =   "Courier New"
         charset         =   1
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   2355
      Left            =   120
      MousePointer    =   1  'Arrow
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   120
      Width           =   5535
   End
   Begin Threed.SSCommand ComWhos 
      Height          =   840
      Left            =   1020
      TabIndex        =   5
      Top             =   3540
      Width           =   855
      _version        =   65536
      _extentx        =   1508
      _extenty        =   1482
      _stockprops     =   78
      caption         =   "&Who?"
      forecolor       =   8388608
      BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      outline         =   0   'False
      mousepointer    =   1
      picture         =   "ROOMFORM.frx":030A
   End
   Begin Threed.SSCommand ComResume 
      Height          =   840
      Left            =   120
      TabIndex        =   4
      Top             =   3540
      Width           =   855
      _version        =   65536
      _extentx        =   1508
      _extenty        =   1482
      _stockprops     =   78
      caption         =   "&Resume"
      forecolor       =   8388608
      BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      outline         =   0   'False
      mousepointer    =   1
      picture         =   "ROOMFORM.frx":0B5C
   End
   Begin Threed.SSCommand ComSend 
      Height          =   840
      Left            =   4740
      TabIndex        =   3
      Top             =   3540
      Width           =   915
      _version        =   65536
      _extentx        =   1614
      _extenty        =   1482
      _stockprops     =   78
      caption         =   "&Send"
      forecolor       =   8388608
      BeginProperty font {FB8F0823-0164-101B-84ED-08002B2EC713} 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      outline         =   0   'False
      mousepointer    =   1
      picture         =   "ROOMFORM.frx":0E76
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   4395
      Left            =   60
      Top             =   60
      Width           =   5715
   End
   Begin VB.Label RoomNumber 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Label1"
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   0
      TabIndex        =   2
      Top             =   180
      Visible         =   0   'False
      Width           =   675
   End
   Begin VB.Menu MenuFile 
      Caption         =   "&File"
      Begin VB.Menu MenuFileLeave 
         Caption         =   "&Resume"
      End
   End
   Begin VB.Menu MenuEdit 
      Caption         =   "&Edit"
      Begin VB.Menu MenuEditCopy 
         Caption         =   "&Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu MenuEditPaste 
         Caption         =   "&Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu div2 
         Caption         =   "-"
      End
      Begin VB.Menu MenuEditFont 
         Caption         =   "&Large Font"
      End
      Begin VB.Menu MenuEditFixed 
         Caption         =   "&Fixed Font"
      End
   End
End
Attribute VB_Name = "RoomForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' ROOMFORM.FRM
Option Explicit

Private Sub ComResume_Click()
    Unload RoomForm
End Sub

Private Sub ComSend_Click()
Dim l0022 As String
Dim l002C As String
Dim l003A As String
    If ContMap.IPPort1.Connected Then
            l0022$ = RoomForm.TextToSend.Text
            If ListUsers.ListIndex > -1 Then
                    If ListUsers.List(ListUsers.ListIndex) = "--All--" Then
                            l002C$ = gc07F4
                        Else
                            If gv07AC% Then
                                    l002C$ = gc07F8 + gc07E4 + ListUsers.List(ListUsers.ListIndex)
                                    l0022$ = "'Ring'"
                                Else
                                    l002C$ = gc07F8 + gc07E4 + ListUsers.List(ListUsers.ListIndex)
                                End If
                        End If
                Else
                    l002C$ = gc07F4
                End If
            If Trim$(l0022$) <> "" Then
                    If Right$(l0022$, 2) = gv0214$ Then
                            l003A$ = gc07EC + l002C$ + gc07E4 + Left$(l0022$, Len(l0022$) - Len(gv0214$)) + gc07E8
                        Else
                            l003A$ = gc07EC + l002C$ + gc07E4 + l0022$ + gc07E8
                        End If
                    Call sub0273(l003A$)
                Else
                    If gv07AC% Then
                            gv07AC% = 0
                            RoomForm.TextReceive.SelStart = Len(RoomForm.TextReceive.Text)
                            RoomForm.TextReceive.SelText = "Chip: Can't Ring Everybody!" + gv0214$ + gv0214$
                        Else
                            RoomForm.TextReceive.SelStart = Len(RoomForm.TextReceive.Text)
                            RoomForm.TextReceive.SelText = "Chip: Nothing To Send!" + gv0214$ + gv0214$
                        End If
                End If
        Else
            RoomForm.TextReceive.SelStart = Len(RoomForm.TextReceive.Text)
            RoomForm.TextReceive.SelText = "Chip: " + "Can't Send, Not Connected." + gv0214$ + gv0214$
        End If
    If gv07AC% Then
            gv07AC% = 0
        Else
            RoomForm.TextToSend.Text = ""
        End If
    RoomForm.TextToSend.SetFocus
End Sub

Private Sub ComWeb_Click()
End Sub

Private Sub ComWhos_Click()
Dim l003E As String
Dim l0040 As String
Dim l0044 As String
    If ContMap.IPPort1.Connected Then
        l003E$ = Trim$(gv06A4$)
        l0040$ = RoomForm.RoomNumber.Caption
        l0044$ = gc07EC + gc0800 + gc07E4 + gc07E4 + l003E$ + gc07E8
        Call sub0273(l0044$)
        End If
    RoomForm.TextToSend.SetFocus
End Sub

Private Sub Form_Activate()
   On Error Resume Next
   RoomForm.TextReceive.SelStart = Len(RoomForm.TextReceive.Text)
   TextToSend.SetFocus
   Screen.MousePointer = 0
   RoomForm.Refresh
   RoomForm.Visible = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
            KeyAscii = 0
            Call ComSend_Click
        ElseIf KeyAscii = 10 Then
            KeyAscii = 13
        End If
End Sub

Private Sub Form_Load()
    'RoomForm.Left = (Screen.Width - RoomForm.Width) / 2
    'RoomForm.Top = (Screen.Height - RoomForm.Height) / 2
    SetCenterOfForm ContMap, RoomForm
    gv0710% = -1
    ListUsers.AddItem "--All--"
    RoomForm.Visible = 0
End Sub

Private Sub Form_Resize()
    If RoomForm.Width >= 4870 Then
        RoomForm.TextReceive.Width = RoomForm.Width - 370
        RoomForm.TextToSend.Width = RoomForm.Width - 370
        RoomForm.ComSend.Left = RoomForm.TextReceive.Left + RoomForm.TextReceive.Width - RoomForm.ComSend.Width
        RoomForm.Shape1.Width = RoomForm.Width - 240
        End If
    If RoomForm.Height > 3000 Then
        RoomForm.TextReceive.Height = RoomForm.Height - 2900
        RoomForm.TextToSend.Top = RoomForm.TextReceive.Top + RoomForm.TextReceive.Height + 100
        RoomForm.ComSend.Top = RoomForm.TextToSend.Top + RoomForm.TextToSend.Height + 100
        RoomForm.ComWhos.Top = RoomForm.TextToSend.Top + RoomForm.TextToSend.Height + 100
        RoomForm.ComResume.Top = RoomForm.TextToSend.Top + RoomForm.TextToSend.Height + 100
        RoomForm.ListUsers.Top = RoomForm.TextToSend.Top + RoomForm.TextToSend.Height + 100
        RoomForm.Shape1.Height = RoomForm.Height - 860
        End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Cancel = gv0710%
    If gv0710% Then
        RoomForm.Hide
        End If
End Sub

Private Sub ListUsers_Click()
    TextToSend.SetFocus
End Sub

Private Sub ListUsers_DblClick()
    gv07AC% = 1
    Call ComSend_Click
End Sub

Private Sub MenuEdit_Click()
    If RoomForm.TextReceive.SelLength > 0 Then
            RoomForm.MenuEditCopy.Enabled = -1
        Else
            RoomForm.MenuEditCopy.Enabled = 0
        End If
    If Clipboard.GetFormat(1) Then
            RoomForm.MenuEditPaste.Enabled = -1
        Else
            RoomForm.MenuEditPaste.Enabled = 0
        End If
    If RoomForm.TextReceive.FontSize > 10 Then
           RoomForm.MenuEditFont.Checked = -1
        Else
           RoomForm.MenuEditFont.Checked = 0
        End If
    If RoomForm.TextReceive.FontName = gv070C$ Then
           RoomForm.MenuEditFixed.Checked = -1
        Else
           RoomForm.MenuEditFixed.Checked = 0
        End If
End Sub

Private Sub MenuEditCopy_Click()
Dim l005C As String
    Clipboard.Clear
    If RoomForm.TextReceive.SelLength = Len(RoomForm.TextReceive.Text) Then
            l005C$ = RoomForm.TextReceive.Text
        Else
            l005C$ = RoomForm.TextReceive.Text
            l005C$ = Mid$(l005C$, RoomForm.TextReceive.SelStart + 1, RoomForm.TextReceive.SelLength)
        End If
    Clipboard.SetText l005C$
    RoomForm.TextReceive.SelLength = 0
End Sub

Private Sub MenuEditFixed_Click()
    If RoomForm.TextReceive.FontName = gv070C$ Then
           RoomForm.TextReceive.FontName = gv0708$
           RoomForm.TextToSend.FontName = gv0708$
        Else
           RoomForm.TextReceive.FontName = gv070C$
           RoomForm.TextToSend.FontName = gv070C$
        End If
End Sub

Private Sub MenuEditFont_Click()
    If RoomForm.TextReceive.FontSize > 10 Then
           RoomForm.TextReceive.FontSize = 8.25
           RoomForm.TextToSend.FontSize = 8.25
        Else
           RoomForm.TextReceive.FontSize = 14
           RoomForm.TextToSend.FontSize = 14
        End If
End Sub

Private Sub MenuEditPaste_Click()
Dim l0060 As String
    If Clipboard.GetFormat(1) Then
        l0060$ = Clipboard.GetText(1)
        RoomForm.TextToSend.SelText = l0060$
        End If
End Sub

Private Sub MenuFileLeave_Click()
    Call ComResume_Click
End Sub

Private Sub MenuFileSave_Click()
Dim l0068 As Integer
Dim l006A As Integer
Dim l006C As Integer
Dim l006E As String
    Screen.MousePointer = 11
    gv0722$ = ".txt"
    If RoomForm.TextReceive.SelLength > 0 Then
            gv0726% = 3
        Else
            gv0726% = 2
        End If
    If Trim(gv0728) <> "" Then
        l0068% = FreeFile
        Open gv0728 For Append As l0068%
        If LOF(l0068%) > 0 Then
            Screen.MousePointer = 0
            l006A% = MsgBox(UCase$(gv0728) + " already exists.  Overwrite it?", 289, "File Exists")
            If l006A% <> 1 Then Close l0068%: Exit Sub
            End If
        Close l0068%
        Screen.MousePointer = 11
        l0068% = FreeFile
        Open gv0728 For Output As l0068%
        If l006C% Then
                l006E$ = RoomForm.TextReceive.SelText
            Else
                l006E$ = RoomForm.TextReceive.Text
            End If
        Print #l0068%, l006E$
        Close l0068%
        End If
    Screen.MousePointer = 0
End Sub

Private Sub sub1905()
End Sub

Private Sub sub1A07()
Dim l006E As String
    RoomForm.TextToSend.SetFocus
End Sub

Private Sub TextReceive_Change()
Dim l006E As String
End Sub

