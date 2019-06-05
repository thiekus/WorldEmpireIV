VERSION 4.00
Begin VB.Form CyberGameForm 
   Appearance      =   0  'Flat
   BackColor       =   &H000000FF&
   Caption         =   "Host An Internet Game "
   ClientHeight    =   5235
   ClientLeft      =   2520
   ClientTop       =   2025
   ClientWidth     =   4635
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
   Height          =   5820
   Icon            =   "CYBERG.frx":0000
   Left            =   2400
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   349
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   309
   Top             =   1560
   Width           =   4875
   Begin VB.TextBox TextPass 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   3480
      MaxLength       =   8
      PasswordChar    =   "-"
      TabIndex        =   1
      Top             =   2400
      Width           =   915
   End
   Begin VB.TextBox TextEmail 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   240
      MaxLength       =   100
      TabIndex        =   2
      Top             =   3060
      Width           =   4155
   End
   Begin VB.CommandButton ComDelete 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Delete"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   3735
      TabIndex        =   8
      Top             =   3090
      Visible         =   0   'False
      Width           =   675
   End
   Begin VB.ComboBox TextServer 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   240
      Sorted          =   -1  'True
      TabIndex        =   10
      Top             =   3075
      Visible         =   0   'False
      Width           =   3495
   End
   Begin VB.CommandButton ComCancel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   495
      Left            =   2340
      TabIndex        =   6
      Top             =   4500
      Width           =   1155
   End
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "C&ontinue"
      Default         =   -1  'True
      Height          =   495
      Left            =   1080
      TabIndex        =   5
      Top             =   4500
      Width           =   1155
   End
   Begin VB.TextBox TextInput 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   1140
      MaxLength       =   12
      TabIndex        =   0
      Top             =   2400
      Width           =   1335
   End
   Begin Threed.SSCommand Image_Help 
      Height          =   495
      Left            =   3840
      TabIndex        =   14
      Top             =   4500
      Width           =   585
      _Version        =   65536
      _ExtentX        =   1032
      _ExtentY        =   873
      _StockProps     =   78
      ForeColor       =   8388608
      Outline         =   0   'False
      Picture         =   "CYBERG.frx":030A
   End
   Begin Threed.SSCommand ComHost 
      Height          =   855
      Left            =   1080
      TabIndex        =   12
      Top             =   3540
      Visible         =   0   'False
      Width           =   2415
      _Version        =   65536
      _ExtentX        =   4260
      _ExtentY        =   1508
      _StockProps     =   78
      Caption         =   "&WEIV Current Game Hosts"
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   0   'False
      Picture         =   "CYBERG.frx":0A18
   End
   Begin Threed.SSCommand ComLoad 
      Height          =   855
      Left            =   2340
      TabIndex        =   4
      Top             =   3540
      Width           =   1515
      _Version        =   65536
      _ExtentX        =   2672
      _ExtentY        =   1508
      _StockProps     =   78
      Caption         =   "&Load Game"
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   0   'False
      Picture         =   "CYBERG.frx":12EA
   End
   Begin Threed.SSCommand ComNew 
      Height          =   855
      Left            =   720
      TabIndex        =   3
      Top             =   3540
      Width           =   1515
      _Version        =   65536
      _ExtentX        =   2672
      _ExtentY        =   1508
      _StockProps     =   78
      Caption         =   "&New Game"
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Outline         =   0   'False
      Picture         =   "CYBERG.frx":1BBC
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   2640
      TabIndex        =   13
      Top             =   2460
      Width           =   915
   End
   Begin VB.Label LabelAddress 
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Your Email Address (or facsimile):"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   240
      TabIndex        =   11
      Top             =   2820
      Width           =   4035
   End
   Begin VB.Image Picture1 
      Appearance      =   0  'Flat
      Height          =   1875
      Left            =   780
      Top             =   300
      Width           =   3000
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Game Host Address Or IP"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   240
      TabIndex        =   9
      Top             =   2820
      Visible         =   0   'False
      Width           =   3090
   End
   Begin VB.Label LabelInput 
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      Caption         =   "Your Name:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   240
      TabIndex        =   7
      Top             =   2460
      Width           =   915
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00000080&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H0000FFFF&
      Height          =   5115
      Left            =   60
      Top             =   60
      Width           =   4515
   End
End
Attribute VB_Name = "CyberGameForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' CYBERG.FRM
Option Explicit
Dim m001E As String
Dim m0022 As String
Dim m0026 As String
Dim m002A As String
Dim m002E As Integer

Private Sub ComCancel_Click()
    Screen.MousePointer = 11
    gv0718% = 0
    Call sub04F3
    m002E% = -1
    Unload CyberGameForm
End Sub

Private Sub ComDelete_Click()
    If TextServer.ListIndex > -1 Then
        TextServer.RemoveItem TextServer.ListIndex
        End If
End Sub

Private Sub ComHost_Click()
Dim l0064 As Integer
Dim l0066 As Integer
    Screen.MousePointer = 11
    gv07B4% = 1
    gv07BC$ = ""
    SurferForm.Show 1
    If gv07BC$ <> "" Then
        For l0064% = 1 To TextServer.ListCount
            If gv07BC$ = TextServer.List(l0064% - 1) Then
                l0066% = 1
                TextServer.ListIndex = l0064% - 1
                Exit For
                End If
            Next
        If l0066% = 0 Then
            TextServer.AddItem gv07BC$
            End If
        For l0064% = 1 To TextServer.ListCount
            If gv07BC$ = TextServer.List(l0064% - 1) Then
                TextServer.ListIndex = l0064% - 1
                Exit For
                End If
            Next
        End If
End Sub

Private Sub ComLoad_Click()
Dim l0068 As Integer
    Call sub1894(l0068%)
    If l0068% Then
            TextInput.Enabled = 0
            TextEmail.Enabled = 0
            TextServer.Enabled = 0
        Else
            Exit Sub
        End If
    Screen.MousePointer = 0
    gv044C% = 4
    SaveForm.Show 1
    CyberGameForm.Refresh
    If gv0718% = 0 Then
            gv0718% = 1
            gv0720% = 0
        Else
            Call ComOkay_Click
        End If
End Sub

Private Sub ComNew_Click()
Dim l0072 As Integer
    Call sub1894(l0072%)
    If l0072% Then
            TextInput.Enabled = 0
            TextEmail.Enabled = 0
            TextServer.Enabled = 0
        Else
            Exit Sub
        End If
    Screen.MousePointer = 11
    Get_New_Info.Show 1
    CyberGameForm.Refresh
    If gv0718% = 0 Then
            gv0720% = 0
            gv0718% = 1
        Else
            Screen.MousePointer = 11
            gv044C% = 3
            SaveForm.Show 1
            If gv0718% Then
                Call ComOkay_Click
                End If
        End If
    Screen.MousePointer = 0
End Sub

Private Sub ComOkay_Click()
Dim l0078 As Integer
Dim l007A As Integer
Dim l007C As Integer
Dim l007E As Integer
Dim l0082 As String
    Call sub1894(l0078%)
    If l0078% = 0 Then Exit Sub
    If gv0718% = 1 Then
        If gv0720% = 0 Then
            MsgBox "You Must Set Up A New Game Or Load A Game Before Continuing..."
            l0078% = 0
            Exit Sub
            End If
        End If
    For l007A% = 0 To TextServer.ListCount - 1
        If Trim$(TextServer.Text) = TextServer.List(l007A%) Then
            l007C% = 1
            End If
        Next
    CyberGameForm.Hide
    If l007C% = 0 Then
        TextServer.AddItem Trim$(TextServer.Text)
        End If
    gv06B0$ = Trim$(TextServer.Text)
    l007E% = FreeFile
    Open AppData$ + "\empfiles\empplay.vbl" For Output As l007E%
    Print #l007E%, m001E$
    Print #l007E%, m0026$
    Print #l007E%, m002A$
    Print #l007E%, m0022$
    For l007A% = 0 To TextServer.ListCount - 1
        l0082$ = TextServer.List(l007A%)
        Print #l007E%, l0082$
        Next
    Close l007E%
    Screen.MousePointer = 11
    m002E% = -1
    Unload CyberGameForm
End Sub

Private Sub Form_Activate()
    CyberGameForm.Refresh
    Screen.MousePointer = 0
    If gv0250% = 0 Then
        Screen.MousePointer = 11
        gv0250% = 1
        Screen.MousePointer = 0
        End If
End Sub

Private Sub Form_Load()
Dim l00C8 As Integer
Dim l00CA As Integer
Dim l00CC As String
Dim l00CE As Integer
    On Error Resume Next
    'CyberGameForm.Left = (ContMap.Picture8.Left + 150 - CyberGameForm.Width) / 2
    'CyberGameForm.Top = (ContMap.Height - CyberGameForm.Height) / 2
    SetCenterOfForm ContMap, CyberGameForm
    CyberGameForm.Picture1.Picture = LoadPicture(AppResc$ + "\" + "tlogo.bmp")
    Picture1.Left = (Shape1.Width - Picture1.Width) / 2
    gv0720% = 0
    m002E% = 0
    Select Case gv0718%
        Case 1
            CyberGameForm.Caption = "Host A CyberWar"
            LabelInput.Visible = -1
            TextInput.Visible = -1
        Case 2
            CyberGameForm.Caption = "Connect To Game Host"
            ComLoad.Visible = 0
            LabelAddress.Visible = 0
            TextEmail.Visible = 0
            ComNew.Visible = 0
            TextPass.Visible = 0
            Label1.Visible = 0
            ComDelete.Visible = -1
            TextServer.Visible = -1
            Label2.Visible = -1
            LabelInput.Caption = "Your Name:"
            TextInput.MaxLength = 15
            ComHost.Visible = -1
        Case Else
        End Select
    l00C8% = FreeFile
    Open AppData$ + "\empfiles\empplay.vbl" For Append As l00C8%
    If LOF(l00C8%) > 0 Then
        Close l00C8%
        l00C8% = FreeFile
        Open AppData$ + "\empfiles\empplay.vbl" For Input As l00C8%
        Line Input #l00C8%, m001E$
        TextInput.Text = m001E$
        Line Input #l00C8%, m0026$
        TextEmail.Text = m0026$
        Line Input #l00C8%, m002A$
        TextPass.Text = m002A$
        Line Input #l00C8%, m0022$
        l00CA% = 0
        Do Until EOF(l00C8%)
            Line Input #l00C8%, l00CC$
            TextServer.AddItem l00CC$
            l00CA% = l00CA% + 1
            If l00CC$ = m0022$ Then
                l00CE% = l00CA% - 1
                End If
            Loop
        If TextServer.ListCount > 0 Then
            TextServer.ListIndex = l00CE%
            End If
        End If
    Close l00C8%
End Sub

Private Sub Form_Unload(Cancel As Integer)
    gv0250% = 0
    If m002E% Then
        Else
            Cancel = -1
        End If
End Sub

Private Sub Image_Help_Click()
    If gv0718% = 1 Then
            Call sub089A(8)
        Else
            Call sub089A(7)
        End If
End Sub

Private Sub sub1894(p0030 As Integer)
    p0030% = 1
    gv06A4$ = Trim$(TextInput.Text)
    m001E$ = gv06A4$
    If gv06A4$ = "" Then
        MsgBox "You Must Enter A Name Before Continuing..."
        p0030% = 0
        TextInput.SetFocus
        Exit Sub
        End If
    If gv0718% = 1 Then
            gv06A8$ = Trim$(TextEmail.Text)
            m0026$ = gv06A8$
            If InStr(gv06A8$, "@") = 0 Or InStr(gv06A8$, ".") = 0 Then
                MsgBox "You Must Enter A Valid Address Before Continuing..."
                TextEmail.SetFocus
                p0030% = 0
                Exit Sub
                End If
            gv06AC$ = Trim$(TextPass.Text)
            m002A$ = gv06AC$
            If Len(Trim$(gv06AC$)) < 4 Then
                MsgBox "You Must Enter A 4 to 8 Character Password Before Continuing..."
                TextPass.SetFocus
                p0030% = 0
                Exit Sub
                End If
        Else
            gv06B0$ = Trim$(TextServer.Text)
            m0022$ = gv06B0$
            If Trim(TextServer.Text) = "" Then
                MsgBox "You Must Specify A Host Address Or IP..."
                p0030% = 0
                Exit Sub
                End If
        End If
End Sub

