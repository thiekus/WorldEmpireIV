VERSION 4.00
Begin VB.Form PathForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000080&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   4425
   ClientLeft      =   3120
   ClientTop       =   1695
   ClientWidth     =   4620
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
   Height          =   4830
   Icon            =   "WHICHPTH.frx":0000
   Left            =   3060
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4425
   ScaleWidth      =   4620
   Top             =   1350
   Width           =   4740
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   405
      Left            =   2415
      TabIndex        =   5
      Top             =   3885
      Width           =   1860
   End
   Begin VB.DirListBox Dir1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   1830
      Left            =   210
      TabIndex        =   3
      Top             =   1470
      Width           =   4215
   End
   Begin VB.DriveListBox Drive1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   210
      TabIndex        =   2
      Top             =   3465
      Width           =   4215
   End
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   "&Okay"
      Height          =   405
      Left            =   315
      TabIndex        =   1
      Top             =   3885
      Width           =   1860
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label2"
      ForeColor       =   &H00FFFFFF&
      Height          =   330
      Left            =   210
      TabIndex        =   4
      Top             =   1050
      Width           =   4215
   End
   Begin VB.Line Line4 
      BorderWidth     =   2
      X1              =   0
      X2              =   4710
      Y1              =   4410
      Y2              =   4410
   End
   Begin VB.Line Line3 
      BorderWidth     =   2
      X1              =   4620
      X2              =   4620
      Y1              =   4410
      Y2              =   30
   End
   Begin VB.Line Line2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      X1              =   4740
      X2              =   0
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      X1              =   0
      X2              =   0
      Y1              =   4410
      Y2              =   0
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      Caption         =   $"WHICHPTH.frx":030A
      ForeColor       =   &H0000FFFF&
      Height          =   660
      Left            =   315
      TabIndex        =   0
      Top             =   300
      Width           =   4050
   End
End
Attribute VB_Name = "PathForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' WHICHPTH.FRM
Option Explicit

Private Sub Command1_Click()
    End
End Sub

Private Sub ComOkay_Click()
Dim l0022 As Integer
Dim l002A As String
    Screen.MousePointer = 11
    Err = 0
    On Error Resume Next
    l0022% = FreeFile
    l002A$ = Dir1.Path
    If Right$(l002A$, 1) = "\" Then
        l002A$ = Left(l002A$, Len(l002A$) - 1)
        End If
    Open l002A$ + "\empc.vbl" For Append As l0022%
    If Err Then
            MsgBox "The Program can't write to the selected disk drive.  Please select a drive and path where saving is possible.", 48, ""
            Close l0022%
            Screen.MousePointer = 0
            Exit Sub
        Else
            gv0696$ = l002A$
        End If
    Close l0022%
    Unload PathForm
    Screen.MousePointer = 0
End Sub

Private Sub Dir1_Change()
Dim l0032 As String
Dim l0034 As Variant
Dim l0038 As Variant
Dim l003C As String
Dim l003E As String
Dim l0040 As String
Dim l0042 As String
    If Len(Dir1.Path) > 30 Then
        l0032$ = Dir1.Path
        l0034 = 0
        l0038 = 1
        Do While l0038 <> 0
            l0034 = l0038 + 1
            l0038 = InStr(l0034, l0032$, "\")
        Loop
        l003C$ = Mid$(l0032$, 1, InStr(l0032$, "\"))
        l003E$ = "... "
        l0040$ = Mid$(l0032$, l0034 - 1)
        l0042$ = l003C$ + l003E$ + l0040$
        Label2.Caption = l0042$
    Else
        Label2.Caption = Dir1.Path
    End If
    ChDir Dir1.Path
End Sub

Private Sub Drive1_Change()
On Error Resume Next
    Dir1.Path = Drive1.Drive
    If Err Then
        MsgBox Error$
        Drive1.Drive = Dir1.Path
    Else
        ChDrive (Drive1.Drive)
    End If
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
    Label2.Caption = Dir1.List(-1)
End Sub

Private Sub Form_Load()
    PathForm.Left = (Screen.Width - PathForm.Width) / 2
    PathForm.Top = (Screen.Height - PathForm.Height) / 2
End Sub

