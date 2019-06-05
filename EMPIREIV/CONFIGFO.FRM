VERSION 4.00
Begin VB.Form ConfigForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Game Setup"
   ClientHeight    =   2655
   ClientLeft      =   1455
   ClientTop       =   2070
   ClientWidth     =   4695
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
   Height          =   3240
   Icon            =   "CONFIGFO.frx":0000
   Left            =   1335
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2655
   ScaleWidth      =   4695
   Top             =   1605
   Width           =   4935
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Video Option"
      ForeColor       =   &H00800000&
      Height          =   1725
      Left            =   3165
      TabIndex        =   9
      Top             =   195
      Width           =   1365
      Begin Threed.SSOption Option3D8 
         Height          =   255
         Left            =   180
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   1335
         Width           =   1095
         _Version        =   65536
         _ExtentX        =   1931
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Pins 2"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin Threed.SSOption Option3D7 
         Height          =   255
         Left            =   180
         TabIndex        =   12
         TabStop         =   0   'False
         Top             =   1020
         Width           =   1095
         _Version        =   65536
         _ExtentX        =   1931
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Pins 1"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin Threed.SSOption Option3D6 
         Height          =   255
         Left            =   180
         TabIndex        =   11
         Top             =   570
         Width           =   945
         _Version        =   65536
         _ExtentX        =   1667
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Paint 2"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Value           =   -1  'True
      End
      Begin Threed.SSOption Option3D5 
         Height          =   255
         Left            =   180
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   270
         Width           =   945
         _Version        =   65536
         _ExtentX        =   1667
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Paint 1"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Okay"
      Height          =   405
      Left            =   1560
      TabIndex        =   8
      Top             =   2085
      Width           =   1545
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Sound On Startup"
      ForeColor       =   &H00800000&
      Height          =   825
      Left            =   165
      TabIndex        =   2
      Top             =   1095
      Width           =   2895
      Begin Threed.SSOption Option3D4 
         Height          =   255
         Left            =   1680
         TabIndex        =   7
         TabStop         =   0   'False
         Top             =   360
         Width           =   945
         _Version        =   65536
         _ExtentX        =   1667
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Off"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin Threed.SSOption Option3D3 
         Height          =   255
         Left            =   750
         TabIndex        =   6
         Top             =   360
         Width           =   735
         _Version        =   65536
         _ExtentX        =   1296
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "On"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Value           =   -1  'True
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Music On Startup"
      ForeColor       =   &H00800000&
      Height          =   825
      Left            =   165
      TabIndex        =   1
      Top             =   195
      Width           =   2895
      Begin Threed.SSOption Option3D2 
         Height          =   255
         Left            =   1680
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   360
         Width           =   945
         _Version        =   65536
         _ExtentX        =   1667
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Off"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin Threed.SSOption Option3D1 
         Height          =   255
         Left            =   750
         TabIndex        =   4
         Top             =   360
         Width           =   735
         _Version        =   65536
         _ExtentX        =   1296
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "On"
         ForeColor       =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Value           =   -1  'True
      End
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Height          =   345
      Left            =   390
      TabIndex        =   0
      Top             =   600
      Visible         =   0   'False
      Width           =   3975
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Saved Game Directory:"
      ForeColor       =   &H00000080&
      Height          =   315
      Left            =   420
      TabIndex        =   3
      Top             =   300
      Visible         =   0   'False
      Width           =   4155
   End
End
Attribute VB_Name = "ConfigForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' CONFIGFO.FRM
Option Explicit
Dim m001A As String
Dim m001E As Integer
Dim m0020 As Integer
Dim m0022 As Integer
Const mc003C = 1 ' &H1%

Private Sub ComOkay_Click()
Dim l0028 As Integer
    Screen.MousePointer = 11
    On Error Resume Next
    l0028% = FreeFile
    Open AppDir$ + "\empc.vbl" For Output As l0028%
    gv01F6% = m0020%
    gv01F4% = m001E%
    Print #l0028%, Str$(m0020%)
    Print #l0028%, Str$(m001E%)
    Print #l0028%, m001A$
    Print #l0028%, Str$(m0022%)
    Close l0028%
    gv0206% = m0022%
    Unload ConfigForm
    Screen.MousePointer = 0
End Sub

Private Sub Form_Activate()
Dim l0038 As Variant
' Const mc003C = 1 ' &H1%
    l0038 = AppResc$ + "\c7.wav"
    If gv01F4% = 0 Then Call sndPlaySound(l0038, mc003C)
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
Dim l0042 As Integer
Dim l0044 As String
    On Error Resume Next
    'ConfigForm.Left = (ContMap.Width - ConfigForm.Width) / 2
    'ConfigForm.Top = (ContMap.Height - ConfigForm.Height) / 2
    SetCenterOfForm ContMap, ConfigForm
    l0042% = FreeFile
    Open AppData$ + "\empc.vbl" For Input As l0042%
    Input #l0042%, l0044$
    m0020% = Val(l0044$)
    Input #l0042%, l0044$
    m001E% = Val(l0044$)
    Input #l0042%, l0044$
    m001A$ = l0044$
    Input #l0042%, l0044$
    m0022% = Val(l0044$)
    Close l0042%
    If m001E% = 1 Then
            Option3D4.Value = -1
         Else
            Option3D3.Value = -1
         End If
    If m0020% = 1 Then
            Option3D2.Value = -1
         Else
            Option3D1.Value = -1
         End If
    If m0022% = 1 Then
            Option3D6.Value = -1
         ElseIf m0022% = 0 Then
            Option3D5.Value = -1
         ElseIf m0022% = 3 Then
            Option3D8.Value = -1
         Else
            Option3D7.Value = -1
         End If
End Sub

Private Sub Option3D1_Click(Value As Integer)
    m0020% = 0
End Sub

Private Sub Option3D2_Click(Value As Integer)
    m0020% = 1
End Sub

Private Sub Option3D3_Click(Value As Integer)
    m001E% = 0
End Sub

Private Sub Option3D4_Click(Value As Integer)
    m001E% = 1
End Sub

Private Sub Option3D5_Click(Value As Integer)
    m0022% = 0
End Sub

Private Sub Option3D6_Click(Value As Integer)
    m0022% = 1
End Sub

Private Sub Option3D7_Click(Value As Integer)
    m0022% = 2
End Sub

Private Sub Option3D8_Click(Value As Integer)
    m0022% = 3
End Sub

Private Sub Text1_GotFocus()
    If Len(Text1.Text) > 0 Then
        Text1.SelStart = 0
        Text1.SelLength = Len(Text1.Text)
        End If
End Sub

Private Sub Text1_LostFocus()
Dim l008C As String
Dim l008E As String
    On Error Resume Next
    l008C$ = Text1.Text
    l008E$ = CurDir$
    ChDir l008C$
    If Err Then
        Err = 0
        Beep
        MsgBox "Invalid Saved Game Path!", 48, "World Empire IV"
        Text1.Text = l008E$
        m001A$ = l008E$
        Exit Sub
        End If
    Text1.Text = l008C$
    m001A$ = l008C$
End Sub

