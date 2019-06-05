VERSION 4.00
Begin VB.Form StatusForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00800000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3840
   ClientLeft      =   2175
   ClientTop       =   1980
   ClientWidth     =   5025
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
   Height          =   4425
   Icon            =   "STATUS4.frx":0000
   KeyPreview      =   -1  'True
   Left            =   2055
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3840
   ScaleWidth      =   5025
   Top             =   1515
   Width           =   5265
   Begin VB.Frame FrameGame 
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Post Notice Of A Game On The Web"
      ForeColor       =   &H0000FFFF&
      Height          =   3435
      Left            =   180
      TabIndex        =   7
      Top             =   180
      Visible         =   0   'False
      Width           =   4635
      Begin VB.CommandButton ComCancel 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "&Cancel"
         Height          =   435
         Left            =   2340
         TabIndex        =   9
         Top             =   2760
         Width           =   975
      End
      Begin VB.CommandButton ComPost 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "&Post"
         Default         =   -1  'True
         Height          =   435
         Left            =   1260
         TabIndex        =   13
         Top             =   2760
         Width           =   975
      End
      Begin VB.TextBox TextDescript 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FFFF&
         Height          =   1335
         Left            =   540
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   12
         Top             =   1260
         Width           =   3615
      End
      Begin VB.Label Label6 
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "A Description Of Your Game:"
         ForeColor       =   &H0000FFFF&
         Height          =   375
         Left            =   300
         TabIndex        =   11
         Top             =   960
         Width           =   3615
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Label4"
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   480
         TabIndex        =   10
         Top             =   600
         Width           =   3615
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Label4"
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   480
         TabIndex        =   8
         Top             =   300
         Width           =   3615
      End
   End
   Begin VB.CommandButton ComAskPost 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Post Notice Of Game"
      Height          =   450
      Left            =   240
      TabIndex        =   14
      Top             =   3180
      Visible         =   0   'False
      Width           =   3165
   End
   Begin VB.OptionButton Option1 
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Option1"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   0
      Left            =   1200
      TabIndex        =   5
      Top             =   1620
      Visible         =   0   'False
      Width           =   1305
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1230
      Left            =   180
      Picture         =   "STATUS4.frx":030A
      ScaleHeight     =   1200
      ScaleWidth      =   1110
      TabIndex        =   3
      Top             =   300
      Width           =   1140
   End
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Okay"
      Height          =   450
      Left            =   3660
      TabIndex        =   2
      Top             =   3180
      Width           =   1125
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   495
      Index           =   0
      Left            =   390
      Picture         =   "STATUS4.frx":1F0C
      ScaleHeight     =   465
      ScaleWidth      =   720
      TabIndex        =   1
      Top             =   1755
      Width           =   750
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   660
      Left            =   300
      TabIndex        =   6
      Top             =   2580
      Visible         =   0   'False
      Width           =   4485
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H0000FFFF&
      Height          =   660
      Left            =   255
      TabIndex        =   4
      Top             =   300
      Visible         =   0   'False
      Width           =   4485
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H0000FFFF&
      Height          =   1830
      Left            =   1440
      TabIndex        =   0
      Top             =   615
      Width           =   3285
   End
End
Attribute VB_Name = "StatusForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' STATUS4.FRM
Option Explicit

Private Sub ComAskPost_Click()
    FrameGame.Visible = -1
    Label4.Caption = "Host Player Name: " + Trim$(gv06A4$)
    Label5.Caption = "Host Address: " + gv06A8$
    TextDescript.SetFocus
End Sub

Private Sub ComCancel_Click()
    ContMap.Enabled = -1
    gv07C2% = 1
    Unload StatusForm
End Sub

Private Sub ComOkay_Click()
    ContMap.Enabled = -1
    gv07C2% = 1
    Unload StatusForm
End Sub

Private Sub ComPost_Click()
Dim l0054 As String
    gv07B0$ = Trim(TextDescript.Text)
    TextDescript.Visible = 0
    Label4.Visible = 0
    Label6.Visible = 0
    Label5.Caption = "Posting Description..."
    ComPost.Enabled = 0
    ComCancel.Enabled = 0
    Call sub07B0(l0054$, 1)
    Screen.MousePointer = 0
    ContMap.Enabled = -1
    gv07C2% = 1
    Unload StatusForm
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
    If gv06BA% = 0 Then
            ComOkay.SetFocus
        ElseIf gv06BA% = 1 Then
            ComOkay.SetFocus
        End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then KeyAscii = 0
End Sub

Private Sub Form_Load()
Dim l0066 As Integer
Dim l0068 As Integer
Dim l0074 As Integer
Dim l0076 As String
Dim l00B2 As Single
Static m00BC As Integer
Dim l00C4 As Integer
    'StatusForm.Left = (ContMap.Picture8.Left + 150 - StatusForm.Width) / 2
    'StatusForm.Top = (ContMap.Height - StatusForm.Height) / 2
    SetCenterOfForm ContMap, StatusForm
    ContMap.Enabled = 0
    If gv06BA% = 0 Then
            l0066% = Val(gv06B6$)
            For l0068% = 1 To gv02C6%
                If gv0260(l0068%).M1E9A = l0066% Then
                    If gv0260(l0068%).M1EC2 > l0074% Then
                        l0074% = gv0260(l0068%).M1EC2
                        l0076$ = Trim$(gv0260(l0068%).M1E1E)
                        End If
                    End If
                Next
            Label1.Caption = "Welcome, General " + Trim$(gv06A4$) + "! You are the revered leader of the World " + Trim$(gv03E6(l0066%)) + " movement." + gv0214$ + gv0214$
            Label1.Caption = Label1.Caption + "Your forces are currently concentrated in " + l0076$ + ", where" + Str$(l0074%) + " armies await your every command!"
            Picture1(0).Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(l0066%)) + ".bmp")
            Picture2.Picture = LoadPicture(AppData$ + "\empfiles\pictemp" + Trim$(Str$(l0066%)) + ".bmp")
            If gv071A% Then
                    ComAskPost.Visible = -1
                    Label3.Visible = -1
                    Label3.Caption = "The Host IP Is: " + gv06B0$
                Else
                    Label3.Visible = 0
                    Label3.Caption = ""
                End If
        ElseIf gv06BA% = 1 Then
            Picture2.Visible = 0
            Label1.Visible = 0
            Label2.Visible = -1
            Option1(0).Visible = -1
            Option1(0).Caption = "Populist"
            Picture1(0).Top = Label2.Top + Label2.Height + 60
            Option1(0).Top = Picture1(0).Top + 45
            Option1(0).Enabled = 0
            Label2.Caption = "Welcome, " + Trim$(gv06A4$) + "! The following Ideologies are currently available for your conquering pleasure (please choose one!):"
            l00B2! = Picture1(0).Left
            For l0068% = 1 To 7
                Load Picture1(l0068%)
                Load Option1(l0068%)
                Picture1(l0068%).Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(l0068% + 1)) + ".bmp")
                Picture1(l0068%).Top = Picture1(l0068% - 1).Top + Picture1(l0068% - 1).Height + 45
                Picture1(l0068%).Left = l00B2!
                Option1(l0068%).Top = Picture1(l0068%).Top + 45
                Option1(l0068%).Left = l00B2! + (Option1(0).Left - Picture1(0).Left)
                If gv02D6(l0068% + 1).M1F5D = m00BC Then
                    Picture1(l0068%).Visible = -1
                    Option1(l0068%).Visible = -1
                    End If
                Option1(l0068%).Caption = gv03E6(l0068% + 1)
                If l0068% = 4 Then
                    Picture1(l0068%).Top = Picture1(0).Top
                    l00B2! = Picture1(0).Left + 2400
                    Option1(l0068%).Top = Picture1(l0068%).Top + 45
                    Option1(l0068%).Left = l00B2! + (Option1(0).Left - Picture1(0).Left)
                    Picture1(l0068%).Left = l00B2!
                    End If
                If Trim$(gv02D6(l0068% + 1).M1E1E) = gv05DE(l0068% + 1) And gv02D6(l0068% + 1).M1F5D = m00BC Then
                    Option1(l0068%).Enabled = -1
                    End If
                If Option1(l0068%).Enabled And l00C4% = 0 Then
                    l00C4% = 1
                    gv06B6$ = Trim$(Str(l0068% + 1))
                    Option1(l0068%).Value = -1
                    End If
                Next
        End If
End Sub

Private Sub Option1_Click(Index%)
    gv06B6$ = Trim$(Str$(Index + 1))
End Sub

Private Sub Picture1_Click(Index%)
    If gv06BA% = 1 And Option1(Index).Enabled Then
        Option1(Index).Value = -1
        End If
End Sub

