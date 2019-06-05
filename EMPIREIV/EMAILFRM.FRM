VERSION 4.00
Begin VB.Form EmailForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "WEIV Mail"
   ClientHeight    =   4470
   ClientLeft      =   2070
   ClientTop       =   3915
   ClientWidth     =   6435
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
   Height          =   5355
   Icon            =   "EMAILFRM.frx":0000
   Left            =   1950
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   4470
   ScaleWidth      =   6435
   Top             =   3150
   Width           =   6675
   Begin VB.TextBox TextFrom 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1200
      MaxLength       =   30
      TabIndex        =   1
      Top             =   900
      Width           =   3915
   End
   Begin VB.TextBox TextTo 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1200
      MaxLength       =   30
      TabIndex        =   0
      Top             =   540
      Width           =   3915
   End
   Begin VB.PictureBox PicProgHolder 
      Appearance      =   0  'Flat
      BackColor       =   &H00404000&
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   540
      ScaleHeight     =   255
      ScaleWidth      =   4365
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   4500
      Visible         =   0   'False
      Width           =   4395
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Uploading..."
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   60
         TabIndex        =   11
         Top             =   0
         Width           =   4275
      End
      Begin VB.Shape PicProgress 
         BackColor       =   &H00000080&
         BackStyle       =   1  'Opaque
         DrawMode        =   2  'Blackness
         FillStyle       =   0  'Solid
         Height          =   255
         Left            =   0
         Top             =   0
         Width           =   15
      End
   End
   Begin VB.CommandButton ComCancel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Cancel"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5220
      TabIndex        =   5
      Top             =   1140
      Width           =   975
   End
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Send"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5220
      TabIndex        =   4
      Top             =   540
      Width           =   975
   End
   Begin VB.TextBox TextSubject 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   405
      Left            =   1200
      MaxLength       =   30
      TabIndex        =   2
      Top             =   1260
      Width           =   3915
   End
   Begin VB.TextBox TextNote 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   2475
      Left            =   240
      MaxLength       =   10000
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Top             =   1740
      Width           =   5955
   End
   Begin IPPORTLibCtl.IPPort IPPort1 
      Left            =   720
      Top             =   240
      EOL             =   ""
      FirewallHost    =   ""
      FirewallPassword=   ""
      FirewallPort    =   80
      FirewallType    =   0
      FirewallUser    =   ""
      KeepAlive       =   0   'False
      Linger          =   -1  'True
      LocalPort       =   0
      RemoteHost      =   ""
      RemotePort      =   0
      Timeout         =   0
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Subject:"
      ForeColor       =   &H0000FFFF&
      Height          =   345
      Left            =   240
      TabIndex        =   9
      Top             =   1320
      Width           =   795
   End
   Begin VB.Label Status 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Date/Time:"
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   240
      TabIndex        =   8
      Top             =   240
      Width           =   5955
   End
   Begin VB.Label LabelFrom 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "From:"
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   240
      TabIndex        =   7
      Top             =   960
      Width           =   3510
   End
   Begin VB.Label LabelTo 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "To: "
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Left            =   240
      TabIndex        =   6
      Top             =   600
      Width           =   3495
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00000080&
      BackStyle       =   1  'Opaque
      Height          =   4215
      Left            =   120
      Top             =   120
      Width           =   6195
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00000000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H0000FFFF&
      Height          =   4335
      Left            =   60
      Top             =   60
      Width           =   6315
   End
   Begin VB.Menu MenuFile 
      Caption         =   "&File"
      Begin VB.Menu MenuFileClose 
         Caption         =   "&Close"
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
   End
End
Attribute VB_Name = "EmailForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

' EMAILFRM.FRM
Option Explicit
Dim m001A As Integer
Const mc001C = 1 ' &H1%
Const mc001E = 2 ' &H2%
Const mc0020 = 3 ' &H3%
Const mc0022 = 4 ' &H4%
Const mc0024 = 5 ' &H5%
Const mc0026 = 6 ' &H6%

Private Sub ComCancel_Click()
    Screen.MousePointer = 0
    Unload EmailForm
End Sub

Private Sub ComOkay_Click()
Dim l0044 As String
Dim l0046 As Long
Dim l005C As Integer
Dim l005E As String
Dim l0066 As Integer
Dim l0068 As Variant
Dim l006C As String
Dim l006E As Long
Dim l0070 As Integer
Dim l0072 As Long
    l0044$ = Trim$(TextTo.Text)
    If l0044$ = "" Then Exit Sub
    l0046& = InStr(l0044$, "@")
    If l0046& = 0 Then
        MsgBox "Invalid 'To' Address!"
        Exit Sub
        End If
    gv0D1E.M331D = Right$(l0044$, Len(l0044$) - (l0046&))
    gv0D1E.M27AD = 65
    Screen.MousePointer = 11
    gv0D1E.M330E = ".domain.unknown"
    gv0D1E.M332F = "<" + TextFrom.Text + ">"
    gv0D1E.M3329 = "<" + TextTo.Text + ">"
    gv0D1E.M333C(1) = "Date: " + Date$ + " " + Time$
    gv0D1E.M333C(2) = "From: " + TextFrom.Text
    gv0D1E.M333C(3) = "To: " + TextTo.Text
    gv0D1E.M333C(4) = "Subject: " + TextSubject.Text
    gv0D1E.M333C(5) = ""
    l0044$ = TextNote.Text + gv0214$
    l0046& = 0: l005C% = 5
    Do
        l0046& = InStr(l0044$, gv0214$)
        If l0046& > 0 Then
            l005E$ = Mid$(l0044$, 1, l0046& - 1)
            l0044$ = Right$(l0044$, Len(l0044$) - (l0046& + 1))
            If Len(l005E$) >= 80 Then
                    GoSub L376A4
                Else
                    l005C% = l005C% + 1
                    gv0D1E.M333C(l005C%) = l005E$
                End If
            l0046& = l0046& + 1
            End If
        Loop While l0046&
    gv0D1E.M3337 = l005C%
    Status.Caption = "Sending mail . . ."
    EmailForm.Refresh
    sub08B5 "Connecting to server"
    On Error GoTo L37608
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    DoEvents
    #If Win32 Then
    IPPort1.RemotePort = 25
    IPPort1.RemoteHost = Trim$(gv0D1E.M331D)
    #Else
    IPPort1.Port = 25
    IPPort1.HostName = Trim$(gv0D1E.M331D)
    #End If
    IPPort1.EOL = Chr$(10)
    On Error GoTo L37654
    Do
        IPPort1.Linger = False
        IPPort1.Connected = False
        l0066% = l0066% + 1
        IPPort1.Connected = True
        l0068 = Now + 10# / (3600# * 24#)
        Do Until Now > l0068
            If IPPort1.Connected Then Exit Do
            DoEvents
            Loop
        Loop Until l0066% = 3 Or IPPort1.Connected
    If Not IPPort1.Connected Then
        l006C$ = "Sorry, Connection Timed Out."
        MsgBox l006C$
        Screen.MousePointer = 0
        Exit Sub
        End If
    l0068 = Now + 60# / (3600# * 24#)
    Do
        DoEvents
        Loop Until gv0D1E.M32FB Or Now > l0068
    If gv0D1E.M3303 Then
            Status.Caption = "Mail Was Sent."
        Else
            Status.Caption = "Failed To Send Mail."
        End If
    Exit Sub

L37608:
    MsgBox "Couldn't Locate Host DNS."
    gv0D1E.M3303 = False
    sub1D77
    Exit Sub

L37654:
    MsgBox "Host Not Responding to Open."
    gv0D1E.M3303 = False
    sub1D77
    Exit Sub

L376A4:
    l006E& = 1
    Do While l006E& + 79 < Len(l005E$)
        l0070% = 0
        For l0072& = l006E& + 79 To l006E& Step -1
            If Mid$(l005E$, l0072&, 1) = " " Then
                l005C% = l005C% + 1
                gv0D1E.M333C(l005C%) = Mid$(l005E$, l006E&, l0072& - l006E&)
                l006E& = l0072& + 1
                l0070% = 1
                Exit For
                End If
            Next
        If l0070% = 0 Then
            l005C% = l005C% + 1
            gv0D1E.M333C(l005C%) = Mid$(l005E$, l006E&, (l006E& + 79) - l006E&)
            l006E& = l006E& + 79 + 1
            End If
        Loop
    l005C% = l005C% + 1
    gv0D1E.M333C(l005C%) = Mid$(l005E$, l006E&, Len(l005E$) - l006E& + 1)
    Return
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
    If Trim$(TextTo.Text) <> "" Then
        TextSubject.SetFocus
        End If
End Sub

Private Sub Form_Load()
    'EmailForm.Left = (Screen.Width - EmailForm.Width) / 2
    'EmailForm.Top = (Screen.Height - EmailForm.Height) / 2
    SetCenterOfForm ContMap, EmailForm
    Label1.Visible = 0
    gv07B8% = -1
    gv0D1E.M32FB = False
    gv0D1E.M3303 = False
    ComOkay.Caption = "&Send"
    ComCancel.Caption = "&Close"
    LabelTo.Caption = "To: "
    If gv0C9A$ <> "" Then
        TextTo.Text = Trim$(gv0C9A$)
        gv0C9A$ = ""
        End If
    LabelFrom.Caption = "From: "
    Status.Caption = "Date/Time: " + Format(Date, "dd-mmm-yyyy") + "; " + Format(Time, "Medium Time")
End Sub

Private Sub Form_Unload(Cancel As Integer)
    gv07B8% = 0
End Sub

Private Sub IPPort1_Connected(StatusCode As Integer, Description As String)
' IPPort1.Connected
' Param p0098 As Integer
   sub08B5 "Connected to server"
   If StatusCode <> 0 Then
      gv0D1E.M3303 = False
      sub1D77
   End If
   m001A = 0
End Sub

Private Sub IPPort1_DataIn(Text As String, EOL As Boolean)
' IPPort1.DataIn
' Param p009C As String, p009E As Integer
Static m00A0 As String
   m00A0 = m00A0 & Text
   If EOL Then
      sub1D57 m00A0
      m00A0 = ""
   End If
End Sub


Private Sub IPPort1_Disconnected(StatusCode As Integer, Description As String)
' IPPort1.Disconnected
   sub08B5 "Disconnected from server"
End Sub

Private Sub IPPort1_ReadyToSend()
' IPPort1.ReadyToSend
   If m001A = 0 Then sub1D67
End Sub

Private Sub MenuEdit_Click()
    If TextNote.SelLength < 1 Then
            MenuEditCopy.Enabled = 0
        Else
            MenuEditCopy.Enabled = -1
        End If
    If Clipboard.GetFormat(1) Then
            MenuEditPaste.Enabled = -1
        Else
            MenuEditPaste.Enabled = 0
        End If
End Sub

Private Sub MenuEditCopy_Click()
Dim l00B8 As String
    Clipboard.Clear
    l00B8$ = TextNote.SelText
    Clipboard.SetText l00B8$
    TextNote.SelLength = 0
End Sub

Private Sub MenuEditPaste_Click()
Dim l00BA As String
    If Clipboard.GetFormat(1) Then
        l00BA$ = Clipboard.GetText(1)
        TextNote.SelText = l00BA$
        End If
End Sub

Private Sub MenuFileClose_Click()
    Unload EmailForm
End Sub

Private Sub sub08B5(ByVal p00CC As String)
   EmailForm.Status.Caption = p00CC + " . . ."
   EmailForm.Status.Refresh
End Sub

Private Sub sub1C54(p00CE As Long, p00D0 As Long)
Dim l00D8 As Single
Dim l00DA As Single
    l00D8! = PicProgHolder.Width
    l00DA! = ((l00D8! * p00CE&) / p00D0&)
    PicProgress.Width = l00DA!
End Sub

Private Sub sub1D57(ByVal p0028 As String)
Dim l002A As String
   l002A = Left$(p0028, 3)
   Select Case m001A
   Case mc001C
      If l002A = "250" Then sub1D67
   Case mc001E
      If l002A = "250" Then sub1D67
   Case mc0020
      If l002A = "250" Or l002A = "251" Then
         sub1D67
      Else
         GoTo L36F66
      End If
   Case mc0022
      If l002A = "354" Then sub1D67
   Case mc0024
      If l002A = "250" Then sub1D67
   Case mc0026
      gv0D1E.M3303 = True
      sub1D77
   End Select
Exit Sub

L36F66:
   gv0D1E.M3303 = False
   MsgBox "SMTP Protocol error."
   Call sub1D77
End Sub

Private Sub sub1D67()
Dim l00CA As String
    m001A = m001A + 1
    Select Case m001A
        Case mc001C
           #If Win32 Then
           l00CA = IPPort1.LocalHost
           #Else
           l00CA = IPPort1.LocalHostName
           #End If
           If InStr(l00CA, ".") = 0 Then l00CA = l00CA + gv0D1E.M330E
           sub08B5 "Connected To Server..."
           sub1DB8 "HELO " + l00CA
        Case mc001E
           sub08B5 "Sending 'From' Header..."
           sub1DB8 "MAIL FROM:" + gv0D1E.M332F
        Case mc0020
           sub08B5 "Sending 'To' Header..."
           sub1DB8 "RCPT TO:" + gv0D1E.M3329
        Case mc0022
           sub1DB8 "DATA"
        Case mc0024
           sub08B5 "Sending Mail Body..."
           sub1DC4
        Case mc0026
           sub08B5 "QUIT"
           sub1DB8 "QUIT"
        Case Else
        End Select
End Sub

Private Sub sub1D77()
   sub08B5 "Closing connection"
   If IPPort1.Connected Then
      IPPort1.Connected = False
      End If
   gv0D1E.M32FB = True
   Screen.MousePointer = 0
End Sub

Private Sub sub1DB8(ByVal p00BC As String)
Dim l00BE As Integer
   On Error GoTo L37CFA
   If Right$(p00BC, 2) <> gv0214$ Then
          IPPort1.DataToSend = p00BC + gv0214$
       Else
          IPPort1.DataToSend = p00BC
       End If
   Exit Sub

L37CFA:
   If Err = 25036 Then
           l00BE = IPPort1.BytesSent
           If l00BE > 0 Then
               p00BC = Mid$(p00BC, l00BE + 1)
               End If
           DoEvents
           Resume
   Else
       Select Case MsgBox("Error " & Err & " sending data.", 18, "Surprise Error")
           Case 3
              sub1D77
           Case 4
              Resume
           Case 5
              Resume Next
           End Select
   End If
   Exit Sub
End Sub

Private Sub sub1DC4()
Dim l00C0
Dim l00C2 As String
Dim l00C4 As Integer
   #If Win32 Then
   l00C4 = IPPort1.Config("OutBufferSize")
   #Else
   l00C4 = IPPort1.OutBufferSize
   #End If
   For l00C0 = 1 To gv0D1E.M3337
      If Len(l00C2) + Len(gv0D1E.M333C(l00C0)) + 2 > l00C4 Then
         sub1DB8 l00C2
         l00C2 = ""
      End If
      l00C2 = l00C2 + gv0D1E.M333C(l00C0) + gv0214$
   Next l00C0
   If l00C2 <> "" Then
      sub1DB8 l00C2
   End If
   sub1DB8 "."
End Sub

