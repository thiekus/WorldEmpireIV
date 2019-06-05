VERSION 4.00
Begin VB.Form TurnForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00800000&
   Caption         =   "World Empire IV - Version 3.0"
   ClientHeight    =   4575
   ClientLeft      =   975
   ClientTop       =   2490
   ClientWidth     =   7545
   BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
      Name            =   "System"
      Size            =   9.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   Height          =   5160
   Icon            =   "TURNFORM.frx":0000
   Left            =   855
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   305
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   503
   Top             =   2025
   Width           =   7785
   Begin VB.PictureBox PicBlastM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
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
      Height          =   570
      Index           =   5
      Left            =   7725
      Picture         =   "TURNFORM.frx":030A
      ScaleHeight     =   570
      ScaleWidth      =   570
      TabIndex        =   16
      Top             =   3945
      Width           =   570
   End
   Begin VB.PictureBox PicBlastM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
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
      Height          =   570
      Index           =   4
      Left            =   7725
      Picture         =   "TURNFORM.frx":0D2C
      ScaleHeight     =   570
      ScaleWidth      =   570
      TabIndex        =   15
      Top             =   3345
      Width           =   570
   End
   Begin VB.PictureBox PicBlastM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
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
      Height          =   570
      Index           =   3
      Left            =   7740
      Picture         =   "TURNFORM.frx":174E
      ScaleHeight     =   570
      ScaleWidth      =   570
      TabIndex        =   14
      Top             =   2715
      Width           =   570
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   6000
      Left            =   6975
      Top             =   2925
   End
   Begin VB.PictureBox PicBlastM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
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
      Height          =   570
      Index           =   2
      Left            =   7725
      Picture         =   "TURNFORM.frx":2170
      ScaleHeight     =   570
      ScaleWidth      =   570
      TabIndex        =   13
      Top             =   2070
      Width           =   570
   End
   Begin VB.PictureBox PicBlastM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
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
      Height          =   570
      Index           =   1
      Left            =   7725
      Picture         =   "TURNFORM.frx":2B92
      ScaleHeight     =   570
      ScaleWidth      =   570
      TabIndex        =   12
      Top             =   1470
      Width           =   570
   End
   Begin VB.PictureBox PicBlastM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
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
      Height          =   570
      Index           =   0
      Left            =   7680
      Picture         =   "TURNFORM.frx":35B4
      ScaleHeight     =   570
      ScaleWidth      =   570
      TabIndex        =   11
      Top             =   915
      Width           =   570
   End
   Begin VB.PictureBox ImageWin 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
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
      Height          =   4350
      Left            =   15
      ScaleHeight     =   288
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   403
      TabIndex        =   9
      Top             =   -15
      Visible         =   0   'False
      Width           =   6075
      Begin VB.CommandButton ComOkayWin 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Okay"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   585
         Left            =   4995
         TabIndex        =   8
         Top             =   3630
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.CommandButton ComClear 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Clear"
         Default         =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3990
         TabIndex        =   17
         Top             =   3615
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label LabelWin 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "LabelWin"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   0
         TabIndex        =   10
         Top             =   120
         Width           =   5910
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
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
      Height          =   495
      Index           =   0
      Left            =   6420
      Picture         =   "TURNFORM.frx":3FD6
      ScaleHeight     =   465
      ScaleWidth      =   720
      TabIndex        =   2
      Top             =   1470
      Width           =   750
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
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
      Height          =   1230
      Left            =   6255
      Picture         =   "TURNFORM.frx":49D8
      ScaleHeight     =   1200
      ScaleWidth      =   1110
      TabIndex        =   1
      Top             =   120
      Width           =   1140
   End
   Begin VB.CommandButton ComOkay1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Okay"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   6390
      TabIndex        =   0
      Top             =   3780
      Width           =   915
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   570
      Left            =   6510
      Picture         =   "TURNFORM.frx":65DA
      Top             =   2040
      Visible         =   0   'False
      Width           =   570
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Label1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   3015
      Left            =   3300
      TabIndex        =   7
      Top             =   1320
      Width           =   2775
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00800000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00C0C000&
      Height          =   3195
      Left            =   3240
      Top             =   1200
      Width           =   2895
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Label1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   2595
      Left            =   2040
      TabIndex        =   6
      Top             =   1740
      Width           =   915
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Label1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   2595
      Left            =   300
      TabIndex        =   5
      Top             =   1740
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Label1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   645
      Left            =   225
      TabIndex        =   4
      Top             =   1320
      Width           =   2775
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      Caption         =   "Label1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   615
      Left            =   300
      TabIndex        =   3
      Top             =   300
      Width           =   5715
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00800000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00C0C000&
      Height          =   855
      Left            =   180
      Top             =   180
      Width           =   5955
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00800000&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00C0C000&
      Height          =   3195
      Left            =   180
      Top             =   1200
      Width           =   2895
   End
End
Attribute VB_Name = "TurnForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' TURNFORM.FRM
Option Explicit
Dim m001A() As Integer
Dim m004C As Integer
Dim m004E As Integer
Const mc0100 = 1 ' &H1%
Const mc0144 = 8913094  ' &H8800C6&
Const mc014C = 6684742  ' &H660046&

Private Sub ComClear_Click()
    Kill AppData$ + "\" + "emperors.hof"
    Call sub05EC(0)
End Sub

Private Sub Command3_Click()
    If gv055A% < 10 Then
            gv0212% = gv055A%
            gv055A% = 20
            TurnForm.Picture = LoadPicture()
            Call sub05EC(0)
        Else
            TurnForm.Picture = LoadPicture(AppResc$ + "\" + "tfinal.bmp")
            Call sub0290(2)
            gv0210% = 1
            Unload TurnForm
        End If
End Sub

Private Sub Command4_Click()
    If gv055A% < 10 Then
            TurnForm.Refresh
            TurnForm.PrintForm
        Else
        End If
End Sub

Private Sub ComOkay1_Click()
    Unload TurnForm
End Sub

Private Sub ComOkayWin_Click()
    If m004E% = 0 Then
            Timer1.Enabled = 0
            TurnForm.ImageWin.Picture = LoadPicture()
            ComClear.Visible = -1
            m004E% = 1
            Call sub05EC(0)
        Else
            If gv0714% Then Unload NoticeForm
            ContMap.Enabled = -1
            Screen.MousePointer = 0
            ContMap.MousePointer = 0
            Unload TurnForm
        End If
End Sub

Private Sub Form_Activate()
    ContMap.MousePointer = 0
    Screen.MousePointer = 0
    If gv0558% = 1 Then
            Screen.MousePointer = 11
            If gv03A4% = gv07A8% Then
                    ComOkay1.Enabled = 0
                Else
                    ComOkay1.Visible = 0
                End If
            Call sub0290(5)
            Screen.MousePointer = 0
            If gv03A4% = gv07A8% Then
                    ComOkay1.Enabled = -1
                    ComOkay1.SetFocus
                Else
                    Unload TurnForm
                End If
        ElseIf gv0558% = 0 Then
        ElseIf gv0558% = 2 Then
            Call sub05EC(1)
        End If
End Sub

Private Sub Form_Load()
Dim l008C As Integer
Dim l0098 As Integer
Dim l009A As String
Dim l00DC As Integer
Dim l00F2 As Integer
Dim l00FA As Variant
' Const mc0100 = 1 ' &H1%
    Screen.MousePointer = 11
    m004C% = 0
    gv02D0% = 0
    m004E% = 0
    If gv0558% = 0 Or gv0558% = 2 Then
        ImageWin.Picture = LoadPicture(AppResc$ + "\tfinal.bmp")
        TurnForm.ScaleMode = 1
        TurnForm.Width = ImageWin.Width + 100
        TurnForm.Height = ImageWin.Height + 440
        TurnForm.ScaleMode = 3
        End If
    'TurnForm.Left = (ContMap.Picture8.Left + 150 - TurnForm.Width) / 2
    'TurnForm.Top = (ContMap.Height - TurnForm.Height) / 2
    SetCenterOfForm ContMap, TurnForm
    If gv0558% = 1 Then
            For l008C% = 1 To gv02C6%
                If gv0260(l008C%).M1E9A = gv03A4% Then
                    If gv0260(l008C%).M1EC2 > l0098% Then
                        l0098% = gv0260(l008C%).M1EC2
                        l009A$ = Trim$(gv0260(l008C%).M1E1E)
                        End If
                    End If
                Next
            Label1.Caption = "Your Turn, General " + Trim$(gv02D6(gv03A4%).M1E1E) + "!  "
            Label1.Caption = Label1.Caption + "Your forces are currently concentrated in " + l009A$ + "."
            Picture1(0).Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv03A4%)) + ".bmp")
            Picture2.Picture = LoadPicture(AppData$ + "\empfiles\pictemp" + Trim$(Str$(gv03A4%)) + ".bmp")
            Label2.Caption = "Earned Armies"
            Label3.Caption = Trim$(Str$(gv076C%)) + " Countries" + gv0214$ + gv0214$
            Label4.Caption = Str$(gv076E%) + gv0214$ + gv0214$ + gv0214$
            Label3.Caption = Label3.Caption + "Continents:" + gv0214$
            For l008C% = 1 To 6
                If gv0772%(l008C%, 1) = 1 Then
                    Label3.Caption = Label3.Caption + "  " + gv0294(l008C%).M1E1E + gv0214$
                    Label4.Caption = Label4.Caption + Str$(gv0772%(l008C%, 2)) + gv0214$
                    l00DC% = 1
                    End If
                Next
            If l00DC% = 0 Then
                Label3.Caption = Label3.Caption + "  None" + gv0214$
                Label4.Caption = Label4.Caption + gv0214$
                End If
            Label3.Caption = Label3.Caption + gv0214$ + "Total New Armies:"
            Label4.Caption = Label4.Caption + gv0214$ + Str$(gv076E% + gv0770%)
            Label5.Caption = "State Of The Natives" + gv0214$ + gv0214$
            For l008C% = 1 To UBound(gv073A%)
                Label5.Caption = Label5.Caption + "The " + gv03E6(gv0260(gv073A%(l008C%)).M1EAC) + "'s of " + Trim$(gv0260(gv073A%(l008C%)).M1E1E) + " Revolted" + gv0214$ + gv0214$
                l00F2% = 1
                Next
            If l00F2% = 0 Then
                    Label5.Caption = Label5.Caption + "No Revolutions."
                Else
                    Image1.Visible = -1
                    l00FA = AppResc$ + "\c3.wav"
                    If gv01F4% = 0 Then Call sndPlaySound(l00FA, mc0100)
                End If
        ElseIf gv0558% = 0 Then
            If gv07CA% Then
                gv07CA% = 0
                gv07C8% = -1
                NoticeForm.Show
                End If
            Label1.Visible = 0
            Label2.Visible = 0
            Label3.Visible = 0
            Label4.Visible = 0
            Label5.Visible = 0
            Picture1(0).Visible = 0
            Picture2.Visible = 0
            TurnForm.BackColor = QBColor(0)
            Shape1.Visible = 0
            Shape2.Visible = 0
            Shape3.Visible = 0
            ImageWin.Visible = -1
            LabelWin.Left = (ImageWin.Width - LabelWin.Width) / 2
            LabelWin.Caption = "It's All Yours At Last, General " + Trim$(gv02D6(gv055A%).M1E1E) + "!"
            Timer1.Enabled = -1
            ReDim m001A%(6, 2)
            m001A%(1, 1) = 171
            m001A%(1, 2) = 173
            m001A%(2, 1) = 229
            m001A%(2, 2) = 221
            m001A%(3, 1) = 184
            m001A%(3, 2) = 204
            m001A%(4, 1) = 244
            m001A%(4, 2) = 177
            m001A%(5, 1) = 194
            m001A%(5, 2) = 152
            m001A%(6, 1) = 148
            m001A%(6, 2) = 241
        ElseIf gv0558% = 2 Then
            Label1.Visible = 0
            Label2.Visible = 0
            Label3.Visible = 0
            Label4.Visible = 0
            Label5.Visible = 0
            Picture1(0).Visible = 0
            Picture2.Visible = 0
            TurnForm.BackColor = QBColor(4)
            Shape1.Visible = 0
            Shape2.Visible = 0
            Shape3.Visible = 0
            LabelWin.Visible = 0
            ImageWin.Visible = -1
            ComOkayWin.Visible = -1
            Timer1.Enabled = 0
            ImageWin.Picture = LoadPicture()
            m004E% = 1
        End If
    Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim l0128 As Integer
    If gv0558% = 1 Then
            ContMap.MousePointer = 0
            ContMap.Enabled = -1
            TurnForm.Hide
            gv030C% = gv076E% + gv0770%
            For l0128% = 1 To UBound(gv073A%)
                gv0260(gv073A%(l0128%)).M1E9A = gv0260(gv073A%(l0128%)).M1EAC
                gv0260(gv073A%(l0128%)).M1ECC = gv02D6(gv0260(gv073A%(l0128%)).M1EAC).M1ECC
                gv0260(gv073A%(l0128%)).M1EA3 = gv0260(gv073A%(l0128%)).M1EAC
                gv0260(gv073A%(l0128%)).M1EC2 = 5
                Call sub02F3(gv073A%(l0128%), gv0260(gv073A%(l0128%)).M1ECC)
                gv02D6(gv0260(gv073A%(l0128%)).M1EAC).M1F99 = gv02D6(gv0260(gv073A%(l0128%)).M1EAC).M1F99 + 5
                Next
            If gv03A4% = gv07A8% Then
                    Call sub0496(-1)
                    Call sub02AB(-1)
                Else
                    gv0252% = gv0252% + 1
                    If gv0252% = 7 Then gv0252% = 1
                    If gv01F6% = 0 Then Call sub02E3("cplay" + LTrim$(Str$(gv0252%)) + ".mid")
                    Call sub0496(0)
                    Call sub02AB(0)
                End If
            If gv07CA% Then
                gv07CA% = 0
                gv07C8% = -1
                NoticeForm.Show
                End If
            ContMap.MousePointer = 0
        Else
            If Timer1.Enabled Then Cancel = -1
            Exit Sub
        End If
    ContMap.Enabled = -1
End Sub

Private Sub ImageWin_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call ComOkayWin_Click
End Sub

Private Sub Timer1_Timer()
Dim l0136 As Variant
Dim l0140 As Integer
Dim l0142 As Integer
' Const mc0144 = 8913094& ' &H8800C6&
Dim l014A As Integer
' Const mc014C = 6684742& ' &H660046&
    m004C% = m004C% + 1
    Select Case m004C%
        Case 1
            LabelWin.Caption = "Ooooops, but what's that sound???"
            l0136 = AppResc$ + "\c3.wav"
            If gv01F4% = 0 Then Call sndPlaySound(l0136, mc0100)
            Timer1.Interval = 3000
        Case Is > 1
            gv02D0% = gv02D0% + 1
            If gv02D0% = 7 Then gv02D0% = 1
            If m004C% > 7 Then
                    ComOkayWin.Visible = -1
                    LabelWin.Caption = ""
                Else
                    Select Case gv02D0%
                        Case 1: LabelWin.Caption = "Arrgh! Canada Has Revolted!"
                        Case 2: LabelWin.Caption = "Eeeek! Brazil Has Revolted!"
                        Case 3: LabelWin.Caption = "Now Those Guatamalans..."
                        Case 4: LabelWin.Caption = "Oh Well..."
                        Case 5: LabelWin.Caption = "Back To The Drawing Board..."
                        Case 6: LabelWin.Caption = "Australia Too???"
                        Case Else
                        End Select
                End If
            l0140% = m001A%(gv02D0%, 1) - (PicBlastM(0).Width \ 2): l0142% = m001A%(gv02D0%, 2) - (PicBlastM(0).Height \ 2)
            l014A% = BitBlt(ImageWin.hdc, l0140%, l0142%, PicBlastM(0).Width, PicBlastM(0).Height, PicBlastM(0).hdc, 0, 0, mc0144&)
            l014A% = BitBlt(ImageWin.hdc, l0140%, l0142%, PicBlastM(3).Width, PicBlastM(3).Height, PicBlastM(3).hdc, 0, 0, mc014C&)
            l0136 = AppResc$ + "\c3.wav"
            If gv01F4% = 0 Then Call sndPlaySound(l0136, mc0100)
            Call sub046C(0.13)
            l014A% = BitBlt(ImageWin.hdc, l0140%, l0142%, PicBlastM(1).Width, PicBlastM(1).Height, PicBlastM(1).hdc, 0, 0, mc0144&)
            l014A% = BitBlt(ImageWin.hdc, l0140%, l0142%, PicBlastM(4).Width, PicBlastM(4).Height, PicBlastM(4).hdc, 0, 0, mc014C&)
            Call sub046C(0.13)
            l014A% = BitBlt(ImageWin.hdc, l0140%, l0142%, PicBlastM(2).Width, PicBlastM(2).Height, PicBlastM(2).hdc, 0, 0, mc0144&)
            l014A% = BitBlt(ImageWin.hdc, l0140%, l0142%, PicBlastM(5).Width, PicBlastM(5).Height, PicBlastM(5).hdc, 0, 0, mc014C&)
            Call sub046C(0.13)
            ImageWin.Refresh
            If m004C% > 7 Then
                    Timer1.Interval = 100
                Else
                    Timer1.Interval = 1500
                End If
        Case Else
        End Select
End Sub

