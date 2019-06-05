VERSION 4.00
Begin VB.Form SetupForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000080&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "World Empire IV Host Setup"
   ClientHeight    =   3165
   ClientLeft      =   7890
   ClientTop       =   6495
   ClientWidth     =   6075
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
   Height          =   3570
   Left            =   7830
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3165
   ScaleWidth      =   6075
   Top             =   6150
   Width           =   6195
   Begin VB.TextBox TextIP 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   2280
      TabIndex        =   8
      Top             =   2100
      Width           =   1995
   End
   Begin VB.TextBox TextNameServer 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   2280
      TabIndex        =   3
      Top             =   1680
      Width           =   3555
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Close"
      Height          =   615
      Left            =   4920
      TabIndex        =   4
      Top             =   900
      Width           =   915
   End
   Begin VB.TextBox TextSendTime 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   2280
      TabIndex        =   2
      Top             =   1260
      Width           =   735
   End
   Begin VB.TextBox TextNamePort 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   2520
      Width           =   735
   End
   Begin VB.TextBox TextPort 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   2280
      TabIndex        =   0
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   $"SETUPFOR.frx":0000
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   180
      TabIndex        =   13
      Top             =   60
      Width           =   5715
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "(optional):"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   4350
      TabIndex        =   11
      Top             =   2160
      Width           =   1035
   End
   Begin VB.Label Label10 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Name Server IP:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   180
      TabIndex        =   9
      Top             =   2160
      Width           =   2055
   End
   Begin VB.Label Label9 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Name Server DNS:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   180
      TabIndex        =   12
      Top             =   1740
      Width           =   2055
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Seconds"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   3060
      TabIndex        =   10
      Top             =   1320
      Width           =   1035
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Send Timeout:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   180
      TabIndex        =   7
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "Name Server Port:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   180
      TabIndex        =   6
      Top             =   2580
      Width           =   2175
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "WEIV TCP/IP  Port:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   180
      TabIndex        =   5
      Top             =   900
      Width           =   2055
   End
End
Attribute VB_Name = "SetupForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' SETUPFOR.FRM
Option Explicit
Dim m001A As Integer
Dim m001C As Integer

Private Sub Command1_Click()
    gv0690% = Val(TextPort.Text)
    If gv0690% < 1 Then gv0690% = gv06BC%
    gv069E% = Val(TextNamePort.Text)
    If gv069E% < 1 Then gv069E% = 77
    gv06A0$ = Trim$(TextIP.Text)
    gv0692% = Val(TextSendTime.Text)
    If gv0692% < 1 Then gv0692% = 45
    gv069A$ = Trim$(TextNameServer.Text)
    If gv069A$ = "" Then gv069A$ = "viablesoftware.com"
    Call sub0715
    If gv0690% <> m001A% Or gv069E% <> m001C% Then
        MsgBox "You'll need set WEIV to 'Local' Mode, then back for port change to take effect."
        End If
    gv0690% = m001A%
    gv069E% = m001C%
    Unload SetupForm
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    'SetupForm.Left = (ContMap.Picture8.Left + 150 - SetupForm.Width) / 2
    'SetupForm.Top = (ContMap.Height - SetupForm.Height) / 2
    SetCenterOfForm ContMap, SetupForm
    m001A% = gv0690%
    m001C% = gv069E%
    TextNameServer.Text = gv069A$
    TextPort.Text = Trim$(Str$(gv0690%))
    TextNamePort.Text = Trim$(Str$(gv069E%))
    TextSendTime.Text = Trim$(Str$(gv0692%))
    TextIP.Text = Trim$(gv06A0$)
End Sub

Private Sub TextIP_GotFocus()
    If Len(TextIP.Text) > 0 Then
        TextIP.SelStart = 0
        TextIP.SelLength = Len(TextIP.Text)
        End If
End Sub

Private Sub TextNamePort_GotFocus()
    If Len(TextNamePort.Text) > 0 Then
        TextNamePort.SelStart = 0
        TextNamePort.SelLength = Len(TextNamePort.Text)
        End If
End Sub

Private Sub TextNameServer_GotFocus()
    If Len(TextNameServer.Text) > 0 Then
        TextNameServer.SelStart = 0
        TextNameServer.SelLength = Len(TextNameServer.Text)
        End If
End Sub

Private Sub TextPort_GotFocus()
    If Len(TextPort.Text) > 0 Then
        TextPort.SelStart = 0
        TextPort.SelLength = Len(TextPort.Text)
        End If
End Sub

Private Sub TextSendTime_GotFocus()
    If Len(TextSendTime.Text) > 0 Then
        TextSendTime.SelStart = 0
        TextSendTime.SelLength = Len(TextSendTime.Text)
        End If
End Sub

