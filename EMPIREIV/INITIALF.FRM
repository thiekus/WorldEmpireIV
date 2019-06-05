VERSION 4.00
Begin VB.Form InitialForm 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4680
   ClientLeft      =   2040
   ClientTop       =   2640
   ClientWidth     =   6345
   ControlBox      =   0   'False
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
   Height          =   5265
   Icon            =   "INITIALF.frx":0000
   KeyPreview      =   -1  'True
   Left            =   1920
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   11  'Hourglass
   ScaleHeight     =   4680
   ScaleWidth      =   6345
   Top             =   2175
   Visible         =   0   'False
   Width           =   6585
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1080
      Left            =   7620
      Picture         =   "INITIALF.frx":030A
      ScaleHeight     =   1080
      ScaleWidth      =   4515
      TabIndex        =   4
      Top             =   3615
      Width           =   4515
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1080
      Left            =   7605
      Picture         =   "INITIALF.frx":5CBC
      ScaleHeight     =   1080
      ScaleWidth      =   4515
      TabIndex        =   3
      Top             =   2085
      Width           =   4515
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1080
      Left            =   7395
      Picture         =   "INITIALF.frx":B66E
      ScaleHeight     =   1080
      ScaleWidth      =   4515
      TabIndex        =   2
      Top             =   510
      Width           =   4515
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   60
      Top             =   690
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3240
      Left            =   165
      Picture         =   "INITIALF.frx":11020
      ScaleHeight     =   216
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   342
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   285
      Width           =   5130
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1080
         Left            =   270
         Picture         =   "INITIALF.frx":23692
         ScaleHeight     =   72
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   301
         TabIndex        =   1
         Top             =   2085
         Width           =   4515
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   1890
      TabIndex        =   5
      Top             =   4005
      Width           =   1170
   End
End
Attribute VB_Name = "InitialForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' INITIALF.FRM
Option Explicit
Dim m001A As Integer
Dim m001C As Integer
Dim m001E As Integer
Dim m0020 As Integer
Dim m0022 As Integer
Dim m0024 As Integer
Const mc0054 = 1 ' &H1%

Private Sub Command1_Click()
End Sub

Private Sub Form_Activate()
Dim l0038 As String
Dim l003A As Integer
Dim l0046 As Integer
Dim l0048 As String
Dim l0050 As Variant
' Const mc0054 = 1 ' &H1%
Dim l0056 As String
Dim l0058 As String
Dim l005A As String
    InitialForm.Refresh
    On Error Resume Next
    Call sub0290(1)
    If Timer1.Enabled = 0 Then
        ' Behaves like v4.x revisions
        l0038$ = AppDir$
        Do
            l003A% = FreeFile
            Open l0038$ + "\empc.vbl" For Append As l003A%
            If Err Then
                    Err = 0
                    Close l003A%
                    AppData$ = AppDir$
                    gv0694% = 1
                    PathForm.Show 1
                    l0038$ = gv0696$
                Else
                    l0046% = 1
                    If LOF(l003A%) = 0 Then
                            Print #l003A%, Str$(0)
                            Print #l003A%, Str$(0)
                            AppData$ = l0038$
                            Print #l003A%, AppData$
                            Print #l003A%, Str$(0)
                            Close l003A%
                        Else
                            Close l003A%
                            l003A% = FreeFile
                            Open l0038$ + "\empc.vbl" For Input As l003A%
                            Input #l003A%, l0048$
                            gv01F6% = Val(l0048$)
                            Input #l003A%, l0048$
                            gv01F4% = Val(l0048$)
                            Input #l003A%, l0048$
                            AppData$ = l0038$
                            Input #l003A%, l0048$
                            gv0206% = Val(l0048$)
                        End If
                End If
            Loop Until l0046%
        Close l003A%
        l0050 = AppResc$ + "\c3.wav"
        If gv01F4% = 0 Then Call sndPlaySound(l0050, mc0054)
        l0056$ = "close all"
        Call sub0922(l0056$)
        l0058$ = "Open " + AppResc$ + "\" + "empire.mid" + " alias midi"
        Call sub0922(l0058$)
        l005A$ = "Play midi from 0"
        Call sub0922(l005A$)
        m0024% = 1
        Timer1.Enabled = -1
        End If
    MousePointer = 0
End Sub

Private Sub Form_Click()
Dim l0066 As String
     If Timer1.Enabled = 0 Then Exit Sub
     Timer1.Enabled = 0
     Screen.MousePointer = 11
    l0066$ = "close all"
    Call sub0922(l0066$)
     ContMap.Show
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
Dim l006E As String
     If Timer1.Enabled = 0 Then Exit Sub
     Timer1.Enabled = 0
     Screen.MousePointer = 11
    l006E$ = "close all"
    Call sub0922(l006E$)
     ContMap.Show
End Sub

Private Sub Form_Load()
Dim l008A As Integer
Dim l008C As Integer
Dim l008E As Integer
    On Error Resume Next
    gv0482% = 21950
    MousePointer = 11
    gv0214$ = Chr$(13) + Chr$(10)
    AppDir$ = App.Path
    If Right$(AppResc$, 1) = "\" Then
        AppResc$ = Left$(AppResc$, Len(AppResc$) - 1)
        End If
    AppResc$ = AppDir + "\resource"
    InitialForm.Left = (Screen.Width - InitialForm.Width) / 2
    InitialForm.Top = (Screen.Height - InitialForm.Height) / 2
    Picture1.Left = (InitialForm.Width - Picture1.Width) / 2
    Picture1.Top = ((InitialForm.Height - Picture1.Height) / 2) - 370
    Picture1.ScaleMode = 3
    Picture2.Top = 138
    Label1.Caption = "Copyright " + Chr$(169) + " 1996 Viable Software Alternatives"
    Label1.Left = -Label1.Width
    InitialForm.ScaleMode = 3
    For l008A% = 1 To 300
        l008C% = Int(((InitialForm.Width / Screen.TwipsPerPixelX) - 1 + 1) * Rnd + 1)
        l008E% = Int(((InitialForm.Height / Screen.TwipsPerPixelY) - 1 + 1) * Rnd + 1)
        InitialForm.PSet (l008C%, l008E%), QBColor(15)
        Next
    InitialForm.Refresh
    gv020C! = -400
    InitialForm.Visible = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If gv0200% = 1 Then End
End Sub

Private Sub Label1_Click()
Dim l0096 As String
    If Timer1.Enabled = 0 Then Exit Sub
    Timer1.Enabled = 0
    Screen.MousePointer = 11
    l0096$ = "close all"
    Call sub0922(l0096$)
    ContMap.Show
End Sub

Private Sub Picture1_Click()
Dim l00A8 As String
    If Timer1.Enabled = 0 Then Exit Sub
    Timer1.Enabled = 0
    Screen.MousePointer = 11
    l00A8$ = "close all"
    Call sub0922(l00A8$)
    ContMap.Show
End Sub

Private Sub Picture2_Click()
Dim l00AA As String
     If Timer1.Enabled = 0 Then Exit Sub
     Timer1.Enabled = 0
     Screen.MousePointer = 11
    l00AA$ = "close all"
    Call sub0922(l00AA$)
     ContMap.Show
End Sub

Private Sub sub0922(p0098 As String)
Dim l009A As Integer
Dim l009C As String
Dim l009E As String
Dim l00A2 As Long
Dim l00A6 As Integer
    l009A% = 255
    l009C$ = String$(255, 0)
    l009E$ = String$(255, 0)
    l00A2& = mciSendString(p0098, l009C$, l009A%, InitialForm.hwnd)
    l00A6% = mciGetErrorString(l00A2&, l009E$, l009A%)
    If l00A2& <> 0 Then
    End If
End Sub

Private Sub Timer1_Timer()
    If m0024% > 0 Then
        m0024% = m0024% + 1
        Select Case m0024% Mod 4
            Case 0
                Picture1.Left = Picture1.Left - 5
                Picture1.Top = Picture1.Top - 5
            Case 1
                Picture1.Left = Picture1.Left + 5
                Picture1.Top = Picture1.Top - 5
            Case 2
                Picture1.Left = Picture1.Left - 5
                Picture1.Top = Picture1.Top + 5
            Case 3
                Picture1.Left = Picture1.Left + 5
                Picture1.Top = Picture1.Top + 5
            Case Else
            End Select
        If m0024% > 40 Then m0024% = 0
        Exit Sub
        End If
    m001A% = m001A% + 1
    Select Case m001A%
        Case 1
            Picture2.Picture = Picture3.Picture
        Case 2
            Picture2.Picture = Picture4.Picture
        Case 3
            Picture2.Picture = Picture5.Picture
            m001A% = 0
        Case Else
        End Select
    m001C% = m001C% + 1
    If m0022% = 0 And Label1.Left < ((InitialForm.Width \ Screen.TwipsPerPixelX) - Label1.Width) / 2 Then
            Label1.Left = Label1.Left + (m001C% * 2)
        ElseIf m001E% = 0 Then
            Label1.FontItalic = 0
            Label1.Left = ((InitialForm.Width \ Screen.TwipsPerPixelX) - Label1.Width) / 2
            m0022% = 1
            m001E% = m001C%
        ElseIf m001E% > 0 And m001C% > 50 And (Label1.Left < (InitialForm.Width \ Screen.TwipsPerPixelX)) Then
            m001E% = m001E% + 1
            Label1.Left = Label1.Left + (m001E% * 2)
            If Label1.FontItalic = 0 Then Label1.FontItalic = -1
        ElseIf Label1.Left >= (InitialForm.Width \ Screen.TwipsPerPixelX) Then
            m001E% = 0: m001C% = 0: m0022% = 0
            m0020% = m0020% + 1
            Select Case m0020%
                Case 1
                    Label1.Caption = "Produced By Elizabeth Butler"
                Case 2
                    Label1.Caption = "Programming, Music, and Graphics By Casey Butler"
                Case 3
                    Label1.Caption = "Additional Music Copyright " + Chr$(169) + " 1996 Alston Software Labs."
                Case 4
                    Label1.Caption = "Photography by Heather Butler..."
                Case 5
                    Label1.Caption = "Alpha Testing By Dave Jeffrey and Lorcan Sheils."
                Case 6
                    Label1.Caption = "Click This Window To Start!"
                Case 7
                    Label1.Caption = "Copyright " + Chr$(169) + " 1996 Viable Software Alternatives"
                    m0020% = 0
                Case Else
                End Select
            Label1.Visible = 0
            Label1.Left = -Label1.Width
            Label1.Visible = -1
        End If
    End Sub

