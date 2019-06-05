VERSION 4.00
Begin VB.Form SurferForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   Caption         =   "PocketSurfer"
   ClientHeight    =   6045
   ClientLeft      =   1425
   ClientTop       =   2400
   ClientWidth     =   9090
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
   Height          =   6930
   Icon            =   "W3S16.frx":0000
   Left            =   1305
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6045
   ScaleWidth      =   9090
   Top             =   1635
   Width           =   9330
   Begin VB.CommandButton ComPost 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Post Notice Of This Game"
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
      Left            =   3105
      TabIndex        =   20
      Top             =   180
      Visible         =   0   'False
      Width           =   2550
   End
   Begin VB.ComboBox TextURL 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   2640
      TabIndex        =   18
      Top             =   660
      Width           =   4455
   End
   Begin VB.PictureBox Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   2460
      MousePointer    =   1  'Arrow
      ScaleHeight     =   1905
      ScaleWidth      =   3465
      TabIndex        =   15
      Top             =   1620
      Visible         =   0   'False
      Width           =   3495
      Begin VB.PictureBox PicProgHolder 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H80000008&
         Height          =   285
         Left            =   180
         ScaleHeight     =   255
         ScaleWidth      =   3045
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   840
         Width           =   3075
         Begin VB.Label PicProgress 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BackStyle       =   0  'Transparent
            ForeColor       =   &H0000FFFF&
            Height          =   255
            Left            =   360
            TabIndex        =   17
            Top             =   0
            Width           =   2355
         End
      End
      Begin VB.CommandButton ComCancel 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "&Cancel"
         Height          =   315
         Left            =   1260
         TabIndex        =   13
         Top             =   1350
         Width           =   975
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "Transferring File..."
         ForeColor       =   &H0000FFFF&
         Height          =   435
         Left            =   360
         TabIndex        =   14
         Top             =   360
         Width           =   2790
      End
   End
   Begin VB.PictureBox PicGauge 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      BorderStyle     =   0  'None
      ForeColor       =   &H00C0C0C0&
      Height          =   435
      Left            =   5640
      ScaleHeight     =   435
      ScaleWidth      =   1995
      TabIndex        =   12
      Top             =   5640
      Width           =   1995
      Begin VB.Line Line12 
         BorderColor     =   &H00000000&
         BorderStyle     =   6  'Inside Solid
         BorderWidth     =   2
         X1              =   60
         X2              =   1920
         Y1              =   60
         Y2              =   60
      End
      Begin VB.Line Line11 
         BorderColor     =   &H00000000&
         BorderWidth     =   2
         X1              =   60
         X2              =   60
         Y1              =   360
         Y2              =   60
      End
      Begin VB.Line Line10 
         BorderColor     =   &H000000FF&
         X1              =   1920
         X2              =   1920
         Y1              =   60
         Y2              =   360
      End
      Begin VB.Line Line9 
         BorderColor     =   &H000000FF&
         X1              =   60
         X2              =   1920
         Y1              =   360
         Y2              =   360
      End
   End
   Begin VB.PictureBox PicStatus 
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      BorderStyle     =   0  'None
      ForeColor       =   &H00C0C0C0&
      Height          =   435
      Left            =   180
      ScaleHeight     =   435
      ScaleWidth      =   5115
      TabIndex        =   11
      Top             =   5640
      Width           =   5115
      Begin VB.Line Line8 
         BorderColor     =   &H000000FF&
         X1              =   60
         X2              =   5040
         Y1              =   360
         Y2              =   360
      End
      Begin VB.Line Line7 
         BorderColor     =   &H000000FF&
         X1              =   5040
         X2              =   5040
         Y1              =   60
         Y2              =   360
      End
      Begin VB.Line Line6 
         BorderColor     =   &H00000000&
         BorderWidth     =   2
         X1              =   60
         X2              =   60
         Y1              =   360
         Y2              =   60
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00000000&
         BorderStyle     =   6  'Inside Solid
         BorderWidth     =   2
         X1              =   60
         X2              =   5040
         Y1              =   60
         Y2              =   60
      End
      Begin VB.Label LabelStatus 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   120
         TabIndex        =   2
         Top             =   105
         Width           =   5595
      End
   End
   Begin VB.CommandButton ComReload 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Reload"
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
      Left            =   960
      TabIndex        =   10
      Top             =   180
      Width           =   735
   End
   Begin VB.CommandButton ComNext 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "-->"
      Enabled         =   0   'False
      Height          =   315
      Left            =   960
      TabIndex        =   9
      Top             =   645
      Width           =   435
   End
   Begin VB.CommandButton ComBack 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "<--"
      Enabled         =   0   'False
      Height          =   315
      Left            =   480
      TabIndex        =   8
      Top             =   645
      Width           =   435
   End
   Begin VB.CommandButton ComHome 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Home"
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
      Left            =   180
      TabIndex        =   7
      Top             =   180
      Width           =   735
   End
   Begin VB.PictureBox SizeTest 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   435
      Left            =   9000
      ScaleHeight     =   405
      ScaleWidth      =   285
      TabIndex        =   6
      Top             =   0
      Visible         =   0   'False
      Width           =   315
   End
   Begin VB.PictureBox Holder 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      ForeColor       =   &H80000008&
      Height          =   4575
      Left            =   180
      ScaleHeight     =   4545
      ScaleWidth      =   8565
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   1020
      Width           =   8595
      Begin VB.PictureBox Display 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000080&
         BorderStyle     =   0  'None
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   9315
         Left            =   -30
         ScaleHeight     =   9315
         ScaleWidth      =   8595
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   0
         Width           =   8595
         Begin VB.TextBox InputText 
            Appearance      =   0  'Flat
            Height          =   315
            Index           =   0
            Left            =   360
            TabIndex        =   19
            Top             =   300
            Visible         =   0   'False
            Width           =   615
         End
      End
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   4575
      Left            =   8760
      MousePointer    =   1  'Arrow
      TabIndex        =   3
      Top             =   1020
      Width           =   255
   End
   Begin VB.CommandButton ComStop 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Stop"
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
      Left            =   8160
      MousePointer    =   1  'Arrow
      TabIndex        =   1
      Top             =   180
      Width           =   795
   End
   Begin VBX.IPPORT IPPort1 
      Left            =   6240
      Top             =   120
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
   Begin VB.Line Line2 
      BorderColor     =   &H00000000&
      BorderWidth     =   4
      X1              =   9000
      X2              =   180
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Line Line4 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      X1              =   180
      X2              =   9000
      Y1              =   5580
      Y2              =   5580
   End
   Begin VB.Line Line3 
      BorderColor     =   &H000000FF&
      BorderWidth     =   4
      X1              =   9000
      X2              =   9000
      Y1              =   600
      Y2              =   5580
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00000000&
      BorderWidth     =   4
      X1              =   180
      X2              =   180
      Y1              =   600
      Y2              =   5580
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Location:"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   2
      Left            =   1620
      TabIndex        =   0
      Top             =   705
      Width           =   1095
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00000080&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H0000FFFF&
      Height          =   6075
      Left            =   60
      Top             =   75
      Width           =   9075
   End
   Begin VB.Menu MenuFile 
      Caption         =   "&File"
      Begin VB.Menu MenuFileExit 
         Caption         =   "E&xit"
      End
   End
End
Attribute VB_Name = "SurferForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

' W3S.FRM
Option Explicit
Dim m001A() As Variant
Dim m004C() As String
Dim m007E() As String
Dim m00B0 As Integer
Dim m00B2 As Integer
Dim m00B4 As String
Dim m00B8 As String
Dim m00BC As String
Dim m00C0 As String
Dim m00C4 As String
Dim m00C8 As Integer
Dim m00CA As String
Dim m00CE As Integer
Dim m00D0 As Integer
Dim m00D2 As String
Dim m00D6 As Integer
Dim m00D8 As Integer
Dim m00DA As String
Dim m00DE As Integer
Dim m00E0 As Integer
Dim m00E2 As String
Dim m00E6 As Long
Dim m00EA As String
Dim m00EE(3) As Long
Dim m0104(3) As Long
Dim m011A(3) As Long
Dim m0130(3) As Long
Dim m0146(3) As Long
Dim m015C As Single
Dim m0160 As String
Dim m016C() As String
Dim m01A0() As T30B4
Dim m01D2() As String
Dim m0204 As Integer
Dim m0206 As Single
Dim m020A As Single
Dim m020E As Single
Dim m0212 As Single
Dim m0216 As Single
Dim m021A As Integer
Dim m021C As Integer
Dim m0220() As T313B
Dim m0254() As T313B
Dim m0286 As Integer
Dim m0288 As Integer
Dim m028A As Integer
Dim m028C As Integer
Dim m028E As Integer
Dim m0290 As Integer
Dim m0292 As String
Const m0352 = 0 ' &H0%
Const mc0364 = 1 ' &H1%
Const mc0386 = 2 ' &H2%
Const mc0388 = 1 ' &H1%
Const mc038A = 500 ' &H1F4%
Const mc038E = 500 ' &H1F4%
Const mc0390 = 200 ' &HC8%
Const mc0392 = 1 ' &H1%
Const mc0498 = 2 ' &H2%

Private Sub ComBack_Click()
    If m00B2% > 1 Then
        Call ComStop_Click
        Me.MousePointer = 11
        gv0C7E% = 1
        m00B2% = m00B2% - 1
        If m00B2% = 1 Then
            ComBack.Enabled = 0
            End If
        gv0C80% = 1
        ComNext.Enabled = -1
        Call sub1B3E(m004C$(m00B2%))
        If gv0C98% = 0 Then Call sub1B4D
        End If
End Sub

Private Sub ComCancel_Click()
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    gv0C7E% = 0
    Screen.MousePointer = 0
    Close m00DE%
    m00D8% = 0
    m00DA$ = ""
    m00E6& = 0
    Frame1.Visible = 0
    MenuFile.Enabled = -1
    Display.Enabled = -1
    ComHome.Enabled = -1
    ComReload.Enabled = -1
    ComStop.Enabled = -1
    If m00B2% > 1 Then ComBack.Enabled = -1
    If m00B2% < m00B0% Then ComNext.Enabled = -1
    Me.MousePointer = 0
    LabelStatus.Caption = "Transfer Aborted."
    LabelStatus.Refresh
End Sub

Private Sub ComHome_Click()
    gv0C7E% = 1
    Refresh
    m00B0% = 0
    m00B2% = 0
    ReDim Preserve m001A(m00B0%)
    ReDim Preserve m004C$(m00B0%)
    ReDim Preserve m007E$(m00B0%)
    ComNext.Enabled = 0
    ComBack.Enabled = 0
    Call sub1B6D(m0292$)
End Sub

Private Sub ComNext_Click()
    If m00B2% < m00B0% Then
        Call ComStop_Click
        Me.MousePointer = 11
        gv0C7E% = 1
        m00B2% = m00B2% + 1
        If m00B2% = m00B0% Then
            ComNext.Enabled = 0
            End If
        gv0C80% = 1
        ComBack.Enabled = -1
        Call sub1B3E(m004C$(m00B2%))
        If gv0C98% = 0 Then Call sub1B4D
        End If
End Sub

Private Sub ComPost_Click()
Dim l02EC As String
    Call sub07B0(l02EC$, 1)
End Sub

Private Sub ComReload_Click()
    If m00B2% > 0 Then
        Me.MousePointer = 11
        gv0C7E% = 1
        IPPort1.Linger = 0
        IPPort1.Connected = 0
        m00B0% = m00B2%
        ComNext.Enabled = 0
        If m00B0% = 1 Then ComBack.Enabled = 0
        ReDim Preserve m001A(m00B0%)
        ReDim Preserve m004C$(m00B0%)
        ReDim Preserve m007E$(m00B0%)
        Call sub1B6D(m004C$(m00B2%))
        End If
End Sub

Private Sub ComStop_Click()
Dim l02EE As Integer
    If IPPort1.Connected Then l02EE% = 1
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    If l02EE% And m00D8% = 0 And m00B2% > 1 Then
        m00B0% = m00B2% - 1
        m00B2% = m00B0%
        ReDim Preserve m001A(m00B0%)
        ReDim Preserve m004C$(m00B0%)
        ReDim Preserve m007E$(m00B0%)
        ComNext.Enabled = 0
        LabelStatus.Caption = ""
        End If
    LabelStatus.Caption = ""
    gv0C7E% = 0
    m00D0% = 1
    Me.MousePointer = 0
End Sub

Private Sub Display_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0326 As Single
Dim l0328 As Integer
Dim l032A As Integer
Dim l032C As String
Dim l032E As Long
Dim l0330 As Integer
    If gv0C7E% Then Me.MousePointer = 11: Exit Sub
    For l0326! = (X - 160) To (X + 160) Step Screen.TwipsPerPixelX
        If Display.Point(l0326!, Y) = RGB(m0104&(1), m0104&(2), m0104&(3)) Or Display.Point(l0326!, Y) = RGB(m011A&(1), m011A&(2), m011A&(3)) Then
            Me.MousePointer = 10: l0328% = 1
            For l032A% = 1 To m0288%
                If X > m0254(l032A%).M3148 And X < m0254(l032A%).M3154 Then
                    If Y > m0254(l032A%).M314E And Y < m0254(l032A%).M315A Then
                        l032C$ = Trim$(m0220(m0254(l032A%).M3176).M3182)
                        If Right$(l032C$, 1) = Chr$(34) Then
                            l032C$ = Left$(l032C$, Len(l032C$) - 1)
                            End If
                        l032E& = InStr(LCase(l032C$), "=")
                        If l032E& > 0 Then
                            For l0330% = l032E& + 1 To Len(l032C$)
                                If Mid$(l032C$, l0330%, 1) <> Chr$(34) And Mid$(l032C$, l0330%, 1) <> Chr$(32) Then
                                    l032C$ = Mid$(l032C$, l0330%, Len(l032C$) - l0330% + 1)
                                    Exit For
                                    End If
                                Next
                            LabelStatus.Caption = l032C$
                            End If
                        End If
                    End If
                Next
            Exit For
            End If
        Next
    If l0328% = 0 Then Me.MousePointer = 0: LabelStatus.Caption = ""
End Sub

Private Sub Display_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l033A As Integer
    m028C% = 0
    For l033A% = 1 To m0288%
        If X > m0254(l033A%).M3148 And X < m0254(l033A%).M3154 Then
            If Y > m0254(l033A%).M314E And Y < m0254(l033A%).M315A Then
                m028C% = m0254(l033A%).M3176
                End If
            End If
        Next
    If m028C% > 0 Then
        gv0C7E% = 1: Me.MousePointer = 11
        Call sub1BD5(m028C%)
        End If
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
    If m00D6% = 0 Then
        m00D6% = 1
        gv0C7E% = 1
        Refresh
        Call sub1B6D(m0292$)
        End If
End Sub

Private Sub Form_Load()
Dim l03BE As Integer
    'SurferForm.Left = (Screen.Width - SurferForm.Width) / 2
    'SurferForm.Top = (Screen.Height - SurferForm.Height) / 2
    SetCenterOfForm ContMap, SurferForm
    ReDim m004C$(0), m001A(0)
    gv07B6% = -1
    m00B2% = 0
    If gv07B4% Then
            m0292$ = "http://viablesoftware.com/cgi-win/wlatest.exe/first"
        Else
            m0292$ = "http://viablesoftware.com/empireiv/index.htm"
        End If
    TextURL.Visible = 0
    Label1(2).Visible = 0
    IPPort1.EOL = Chr$(10)
    m015C! = Display.FontSize
    m0160$ = Display.FontName
    m021A = m0352
    m020E! = 300: m020A! = 400
    m0212! = 300: m0216! = 300
    m0206! = Display.Width - (m020E! + m020A!)
    m00D0% = 0
    l03BE% = -1
End Sub

Private Sub Form_Resize()
    If SurferForm.Width > 5200 And SurferForm.Height > 3000 Then
        Screen.MousePointer = 11
        Display.Cls
        Display.AutoRedraw = 0
        Display.Refresh
        Holder.Height = Me.ScaleHeight - Holder.Top - 650
        Holder.Width = Me.ScaleWidth - 700
        Shape2.Height = Holder.Height + 1530
        Shape2.Width = Holder.Width + 570
        VScroll1.Left = Holder.Left + Holder.Width + 100
        VScroll1.Height = Holder.Height
        Display.Width = Holder.Width
        TextURL.Top = Holder.Top - 400
        Label1(2).Top = TextURL.Top
        ComBack.Top = TextURL.Top
        ComNext.Top = TextURL.Top
        TextURL.Width = Holder.Width - TextURL.Left + 200
        ComStop.Left = VScroll1.Left + VScroll1.Width - ComStop.Width
        Line1.Y1 = Holder.Top - 20
        Line1.Y2 = Line1.Y1
        Line1.Y2 = Holder.Top + Holder.Height
        Line2.Y1 = Holder.Top - 20
        Line2.Y2 = Line2.Y1
        Line2.X1 = Holder.Left + Holder.Width
        Line3.Y1 = Holder.Top - 20
        Line3.X1 = Holder.Left + Holder.Width
        Line3.X2 = Line3.X1
        Line3.Y2 = Holder.Top + Holder.Height
        Line4.Y1 = Holder.Top + Holder.Height
        Line4.Y2 = Line4.Y1
        Line4.X2 = Holder.Left + Holder.Width
        PicStatus.Top = Holder.Top + Holder.Height + 80
        PicStatus.Left = Holder.Left - 60
        PicGauge.Top = Holder.Top + Holder.Height + 80
        PicGauge.Left = VScroll1.Left + VScroll1.Width - PicGauge.Width + 40
        Refresh
        m0206! = Display.Width - (m020E! + m020A!)
        Display.AutoRedraw = -1
        If m00B2% > 0 Then Call sub1B4D
        Screen.MousePointer = 0
        End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    LabelStatus.Caption = ""
    m00B0% = 0
    m00B2% = m00B0%
    ReDim Preserve m001A(m00B0%)
    ReDim Preserve m004C$(m00B0%)
    ReDim Preserve m007E$(m00B0%)
    gv0C7E% = 0
    m00D0% = 1
    m00D6% = 0
    Me.MousePointer = 0
    gv07B6% = 0
End Sub

Private Sub IPPort1_Connected(StatusCode As Integer, Description As String)
' IPPort1.Connected
' Param p0422 As String
Dim l0424 As Variant
l0424 = ""
If Description <> "OK" Then
        MsgBox "Connection error: " & Description
        Me.MousePointer = 0
    Else
    End If
End Sub

Private Sub IPPort1_DataIn(Text As String, EOL As Integer)
' IPPort1.DataIn
' Param p0428 As String, p042A As Integer
Dim l042C As Long
Dim l042E As String
Dim l0430 As Long
    LabelStatus.Caption = "Transferring data..."
    If m00E0% = 0 Then
        If m00D8% Then
                m00E2$ = m00E2$ + Text + Chr$(10)
                If Trim$(Text) = "" Or Trim(Text) = Chr$(13) Then
                    m00E0% = 1
                    IPPort1.EOL = ""
                    End If
                Exit Sub
            Else
                m007E$(m00B2%) = m007E$(m00B2%) + Text + Chr$(10)
                If Trim$(Text) = "" Or Trim(Text) = Chr$(13) Then
                    m00E0% = 1
                    End If
                Exit Sub
            End If
        End If
    If m00D8% Then
            If Frame1.Visible = 0 Then
                    If InStr(LCase$(m00E2$), "http/1.0 200") And InStr(LCase$(m00E2$), "text/html") = 0 Then
                            m00E6& = 0
                            LabelStatus.Caption = "Transferring File..."
                            LabelStatus.Refresh
                            l042C& = InStr(LCase$(m00E2$), "content-length:")
                            If l042C& > 0 Then
                                m00E6& = Val(Right$(m00E2$, Len(m00E2$) - (l042C& + 15)))
                                If m00E6& > 0 Then
                                    Frame1.Visible = -1
                                    End If
                                End If
                            MenuFile.Enabled = 0
                            Display.Enabled = 0
                            ComHome.Enabled = 0
                            ComReload.Enabled = 0
                            ComStop.Enabled = 0
                            ComBack.Enabled = 0
                            ComNext.Enabled = 0
                            m00DE% = FreeFile
                            Open m00DA$ For Binary As m00DE%
                            l042E$ = Text
                            Put m00DE%, , l042E$
                            l0430& = Seek(m00DE%)
                            If m00E6& > 0 Then
                                Call sub1C54(l0430&, m00E6&)
                                LabelStatus.Caption = "Received " + Str$(l0430&) + " bytes of" + Str$(m00E6&)
                                End If
                        Else
                            MsgBox "Host Reports A Problem. Can't Transfer File."
                            IPPort1.Linger = 0
                            IPPort1.Connected = 0
                            gv0C7E% = 0
                            Screen.MousePointer = 0
                            Me.MousePointer = 0
                            LabelStatus.Caption = ""
                            LabelStatus.Refresh
                        End If
                Else
                    l042E$ = Text
                    Put m00DE%, , l042E$
                    l0430& = Seek(m00DE%)
                    If m00E6& > 0 Then
                        Call sub1C54(l0430&, m00E6&)
                        LabelStatus.Caption = "Received " + Str$(l0430&) + " bytes of" + Str$(m00E6&)
                        End If
                End If
        Else
            If EOL Then Text = Text & Chr$(10)
            m001A(m00B2%) = m001A(m00B2%) + Text
        End If
End Sub


Private Sub IPPort1_Disconnected(StatusCode As Integer, Description As String)
' IPPort.Disconnected
' Param p0434 As String
Dim l0436 As Long
Dim l0438 As Long
Dim l043A As Integer
Dim l043C As String
Me.MousePointer = 0
m00CE% = 1
If Description <> "OK" Then
        Close m00DE%
        m00DE% = 0
        m00D8% = 0
        MsgBox "Connection broken: " & Description
    Else
        If m00D8% Then
                Close m00DE%
                Refresh
                m00DE% = FreeFile
                Open m00DA$ For Append As m00DE%
                l0436& = LOF(m00DE%)
                Close m00DE%
                Frame1.Visible = 0
                Me.MousePointer = 0
                Screen.MousePointer = 0
                MenuFile.Enabled = -1
                Display.Enabled = -1
                ComHome.Enabled = -1
                ComReload.Enabled = -1
                ComStop.Enabled = -1
                If m00B2% > 1 Then ComBack.Enabled = -1
                If m00B2% < m00B0% Then ComNext.Enabled = -1
                m00DE% = 0
                m00D8% = 0
                LabelStatus.Caption = "Received" + Str$(l0436&) + " bytes of" + Str$(m00E6&) + ". Transfer Complete."
                LabelStatus.Refresh
            Else
                l0438& = InStr(LCase$(m007E$(m00B2%)), "location:")
                If l0438& > 0 Then
                        For l043A% = l0438& + 9 To Len(m007E$(m00B2%))
                            If Mid$(m007E$(m00B2%), l043A%, 1) = Chr$(13) Or Mid$(m007E$(m00B2%), l043A%, 1) = Chr$(10) Then
                                l043C$ = Trim$(Mid$(m007E$(m00B2%), l0438& + 9, l043A% - (l0438& + 9)))
                                Exit For
                                End If
                            Next
                        l0438& = InStr(l043C$, ":")
                        Select Case Mid$(l043C$, 1, l0438&)
                            Case "http:"
                                GoSub L34D0E
                                Call sub1B6D(l043C$)
                            Case "ftp:"
                                Call sub1C46(l043C$)
                            Case Else
                            End Select
                    Else
                        Display.Cls
                        LabelStatus.Caption = "Formatting Document..."
                        LabelStatus.Refresh
                        IPPort1.Linger = 0
                        IPPort1.Connected = 0
                        Me.MousePointer = 0
                        Call sub1B4D
                    End If
            End If
        m00E0% = 0
    End If
    Exit Sub

L34D0E:
    If m00B2% = 0 Then Return
    m00B0% = m00B2% - 1
    m00B2% = m00B0%
    ReDim Preserve m001A(m00B0%)
    ReDim Preserve m004C$(m00B0%)
    ReDim Preserve m007E$(m00B0%)
    ComNext.Enabled = 0
    Return
End Sub

Private Sub MenuFileExit_Click()
    Unload SurferForm
End Sub

Private Sub sub1AF9(p0296 As String)
Dim l0298 As Long
Dim l029A As String
    m0286% = m0286% + 1
    ReDim Preserve m0220(m0286%)
    l0298& = InStr(LCase$(p0296$), "a ")
    l029A$ = Trim$(Right$(p0296$, Len(p0296$) - l0298& - 1))
    m0220(m0286%).M3182 = l029A$
End Sub

Private Sub sub1B04(p1 As String, p029C As String, p02A2 As Control, p4 As Integer)
' called (p1$, p2$, p3 As object, p4%)
' TODO: FIXUP THESE ARGUMENTS!
    If Trim$(p029C$) = "" And m00EA$ = "" Then p029C$ = ""
    m0204% = m0204% + 1
    ReDim Preserve m01A0(m0204%)
    ReDim Preserve m01D2$(m0204%)
    m01D2$(m0204%) = (p029C$)
    m01A0(m0204%).M310A = p02A2.FontName
    m01A0(m0204%).M3116 = p02A2.FontSize
    m01A0(m0204%).M30DF = p02A2.FontBold
    m01A0(m0204%).M30EB = p02A2.FontItalic
    m01A0(m0204%).M30F9 = p02A2.FontUnderline
    m01A0(m0204%).M30D2 = p02A2.TextWidth(m01D2$(m0204%))
    m01A0(m0204%).M30C4 = p02A2.TextHeight(m01D2$(m0204%))
    m01A0(m0204%).M3122 = p02A2.ForeColor
    If m028E% Then
            m01A0(m0204%).M312F = m0286%
        Else
            m01A0(m0204%).M312F = 0
        End If
    m00EA$ = m00EA$ + Trim$(p029C$)
End Sub

Private Sub sub1B3E(p0460 As String)
Dim l0462 As Long
Dim l0464 As Integer
    m00BC$ = ""
    m00C0$ = ""
    m00C4$ = ""
    m00C8% = 80
    m00CA$ = ""
    l0462& = InStr(8, p0460$, "/")
    If l0462& = 0 Then
            l0462& = Len(p0460$) + 1
            m00B4$ = Mid$(p0460$, 8, l0462& - 8)
            m00BC$ = "/"
        Else
            m00B4$ = Mid$(p0460$, 8, l0462& - 8)
            m00C0$ = Mid$(p0460$, l0462&, Len(p0460$) - l0462& + 1)
            For l0464% = Len(m00C0$) To 1 Step -1
                If Mid$(m00C0$, l0464%, 1) = "/" Then
                    m00BC$ = Right$(m00C0$, Len(m00C0$) - l0464%)
                    m00C0$ = Left$(m00C0$, l0464%)
                    Exit For
                    End If
                Next
            For l0464% = Len(m00BC$) To 1 Step -1
                If Mid$(m00BC$, l0464%, 1) = "#" Then
                    m00C4$ = Right$(m00BC$, Len(m00BC$) - l0464% + 1)
                    m00BC$ = Left$(m00BC$, l0464% - 1)
                    Exit For
                    End If
                Next
        End If
    l0462& = InStr(m00B4$, ":")
    If l0462& Then
        m00CA$ = Right$(m00B4$, Len(m00B4$) - l0462&)
        m00C8% = Val(m00CA$)
        m00CA$ = ":" + m00CA$
        m00B4$ = Left$(m00B4$, l0462& - 1)
        End If
End Sub

Private Sub sub1B4D()
Dim l033C As Variant
Dim l0340 As Variant
Dim l0350 As Long
' Const m0352 = 0 ' &H0%
Dim l0354 As String
Static m035C As Integer
Dim l035E As Integer
Dim l0360 As Integer
Dim l0362 As Integer
' Const mc0364 = 1 ' &H1%
Dim l0366 As String
Dim l0368 As String
Static m036A As Integer
Dim l036C As Integer
Dim l036E As Long
Dim l0370 As Long
Dim l0372 As Integer
Dim l037A As Variant
Dim l037E As Long
Dim l0380 As String
' Const mc0386 = 2 ' &H2%
' Const mc0388 = 1 ' &H1%
' Const mc038A = 500 ' &H1F4%
Dim l038C As Single
' Const mc038E = 500 ' &H1F4%
' Const mc0390 = 200 ' &HC8%
' Const mc0392 = 1 ' &H1%
Dim l0394 As Integer
Dim l0396 As Long
Dim l0398 As Variant
Dim l039C As Variant
Dim l03A0 As Long
Dim l03A2 As Long
Dim l03A4 As String
    On Error Resume Next
    Do
        gv0C80% = 0
        gv0C98% = 1
        m00D0% = 0
        ComReload.Enabled = 0
        l033C = m001A(m00B2%)
        Display.Height = 30000
        m0204% = 0
        ReDim m01A0(m0204%)
        ReDim m01D2$(m0204%)
        m0286% = 0
        m0288% = 0
        m028C% = 0
        ReDim m0220(m0286%)
        l0340 = l033C
        Display.Cls
        VScroll1.Value = 1
        VScroll1.Max = Holder.Height
        VScroll1.SmallChange = 200
        VScroll1.LargeChange = Holder.Height
        Display.CurrentY = m0212!
        l0350& = 0
        m021A = m0352
        m020E! = 300: m020A! = 400
        m0212! = 300: m0216! = 300
        m0206! = Display.Width - (m020E! + m020A!)
        sub1BE3 l0354$
        SizeTest.FontName = m0160$
        SizeTest.FontSize = m015C!
        SizeTest.ForeColor = Display.ForeColor
        SizeTest.FontBold = 0
        SizeTest.FontItalic = 0
        SizeTest.FontUnderline = 0
        m028A = m035C
        l035E% = 0
        l0360% = 0
        l0362% = 0
        m021C = mc0364
        Call sub1B04(l0366$, l0368$, SizeTest, m036A)
        sub1BF0
        Do
            l036C% = 0
            l036E& = InStr(l0350& + 1, l0340, "<")
            If l036E& > 0 Then
                If l036E& < Len(l0340) - 1 And Mid$(l0340, l036E& + 1, 1) = "!--" Then
                    l0370& = InStr(l036E& + 1, l0340, "--")
                    If l0370& > 0 Then
                        l0350& = l0370& + 3
                        l036C% = 1
                        End If
                    End If
                If l036C% = 0 Then
                    l0366$ = Mid$(l0340, l0350& + 1, l036E& - l0350& - 1)
                    l0370& = InStr(l036E& + 1, l0340, ">")
                    If l0370& > 0 Then
                            l0368$ = Mid$(l0340, l036E& + 1, l0370& - l036E& - 1)
                            GoSub L314B0
                            l0350& = l0370&
                            DoEvents
                            If gv0C80% Then Exit Do
                            If m00D0% Then Exit Do
                        Else
                            DoEvents
                            If gv0C80% Then Exit Do
                            If m00D0% Then Exit Do
                        End If
                    End If
                End If
            If Display.CurrentY > 0 Then VScroll1.Max = Display.CurrentY
            Loop While l036E& > 0
        If gv0C80% = 0 And m00D0% Then Exit Do
        Loop While gv0C80%
    gv0C98% = 0
    VScroll1.Min = 1
    If Display.CurrentY > 0 Then VScroll1.Max = Display.CurrentY
    VScroll1.SmallChange = 200
    VScroll1.LargeChange = Holder.Height
    If Len(Trim$(m00C4$)) > 0 Then
        For l0372% = 1 To m0286%
            If InStr(LCase$(Trim$(m0220(l0372%).M3182)), LCase$(Right$(m00C4$, Len(m00C4$) - 1))) Then
                VScroll1.Value = m0220(l0372%).M316B + 1
                Exit For
                End If
            Next
        End If
    Me.MousePointer = 0
    gv0C7E% = 0
    LabelStatus.Caption = "Document Done."
    TextURL.Clear
    For l0372% = m00B0% To 1 Step -1
        TextURL.AddItem m004C$(l0372%)
        Next
    TextURL.Text = m004C$(m00B2%)
    LabelStatus.Refresh
    ComReload.Enabled = -1
    If Display.CurrentY >= 30000 Then MsgBox ("Document Was Too Large.  PocketSurfer Has Truncated Page.")
    If m00D0% Then m00D0% = 0
    Exit Sub

L314B0:
    l037A = l0366$: GoSub L328D0
    l0366$ = l037A
    l037A = l0368$: GoSub L328D0
    l0368$ = l037A
    l037E& = InStr(l0368$, Chr$(32))
    If l037E& = 0 Then l037E& = Len(l0368$)
    If l037E& = 0 Then Return
    l0380$ = Trim$(Mid$(l0368$, 1, l037E&))
    If l0380$ = "" Then Return
    Select Case LCase$(l0380$)
        Case "html"
        Case "/html"
        Case "title"
        Case "/title"
            SurferForm.Caption = "[" + l0366$ + "]"
        Case "head"
        Case "/head"
        Case "body"
            If Len(l0368$) > 6 Then Call sub1BE3(l0368$)
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
        Case "/body"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
        Case "input"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
        Case "i"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            SizeTest.FontItalic = -1
        Case "/i"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            SizeTest.FontItalic = 0
        Case "b"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            SizeTest.FontBold = -1
        Case "/b"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            SizeTest.FontBold = 0
        Case "center"
            m021C = mc0364
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            m021A = mc0388
        Case "/center"
            m021C = mc0364
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            m021A = m0352
        Case "a"
            sub1AF9 l0368$
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            m028E% = 1
            If InStr(LCase$(l0368$), "name=") = 0 And InStr(LCase$(l0368$), "name =") = 0 Then
                SizeTest.ForeColor = RGB(m0104(1), m0104(2), m0104(3))
                SizeTest.FontUnderline = -1
                End If
        Case "/a"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            m028E% = 0
            SizeTest.ForeColor = RGB(m0130(1), m0130(2), m0130(3))
            SizeTest.FontUnderline = 0
        Case "br"
            m021C = mc0364
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
        Case "p"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
        Case "font"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            Call sub1BFD(l0368$)
        Case "/font"
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            SizeTest.FontSize = m015C!
            SizeTest.FontName = m0160$
        Case "img"
            Call sub1C08(l0368$, l0366$)
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
        Case "h1"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C! + 7
            SizeTest.FontBold = -1
        Case "/h1"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = 0
        Case "h2"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C! + 4
            SizeTest.FontBold = -1
        Case "/h2"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = 0
        Case "h3"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C! + 2
            SizeTest.FontBold = -1
        Case "/h3"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = 0
        Case "h4"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = -1
        Case "/h4"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = 0
        Case "h5"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C! - 1
            SizeTest.FontBold = -1
        Case "/h5"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = 0
        Case "h6"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C! - 2
            SizeTest.FontBold = -1
        Case "/h6"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontSize = m015C!
            SizeTest.FontBold = 0
        Case "hr"
            m021C = mc0364
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            Call sub1C16(l0368$)
        Case "blockquote"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontItalic = -1
        Case "/blockquote"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            SizeTest.FontItalic = 0
        Case "ul", "ol"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            m020E! = m020E! + mc038A
            l035E% = l035E% + 1
        Case "/ul", "/ol"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            m020E! = m020E! - mc038A
            l035E% = l035E% - 1
            If l035E% < 1 Then m020E! = 300: m028A = m035C
        Case "li"
            m021C = mc0364
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            l038C! = Display.CurrentY
            Display.Line (m020E! - 180, Display.CurrentY + 120)-(m020E! - 100, Display.CurrentY + 220), QBColor(3), BF
            Display.CurrentY = l038C!
            Display.Refresh
        Case "dl"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            l0360% = l0360% + 1
            m020E! = m020E! + mc038E
        Case "dt"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            If m028A = m035C Then
                m020E! = m020E! - mc0390
                End If
            m028A = mc0392
        Case "dd"
            m021C = mc0364
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            If m028A = mc0392 Then
                m028A = m035C
                m020E! = m020E! + mc0390
                End If
            l038C! = Display.CurrentY
            Display.Line (m020E! - 180, Display.CurrentY + 120)-(m020E! - 100, Display.CurrentY + 220), QBColor(12), BF
            Display.CurrentY = l038C!
            Display.Refresh
        Case "/dl"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
            If m028A = mc0392 Then
                m028A = m035C
                m020E! = m020E! + mc0390
                End If
            m020E! = m020E! - mc038E
            l0360% = l0360% - 1
            If l0360% < 1 Then m020E! = 300: m028A = m035C
        Case "table"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
        Case "/th"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
        Case "/td"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
        Case "/table"
            m021C = mc0386
            Call sub1B04(l0366$, l0368$, SizeTest, m036A)
            sub1BF0
        Case Else
            If l0380$ <> "" And Left$(l0380$, 1) <> "!" Then
                    Call sub1B04(l0366$, l0368$, SizeTest, m036A)
                ElseIf Left$(l0380$, 1) = "!" Then
                    l0362% = 1
                End If
        End Select
    Return

L328D0:
    If l0394% Then Return
    l0396& = 0
    Do
        l0396& = InStr(l0396& + 1, l037A, Chr$(13) + Chr$(10))
        If l0396& > 0 Then
            l0398 = Mid$(l037A, 1, l0396& - 1)
            l039C = Mid$(l037A, l0396& + 2, Len(l037A) - (l0396&))
            l037A = l0398 + " " + l039C
            End If
        Loop While l0396&
    l0396& = 0
    Do
        l0396& = InStr(l0396& + 1, l037A, Chr$(13))
        If l0396& > 0 Then
            l0398 = Mid$(l037A, 1, l0396& - 1)
            l039C = Mid$(l037A, l0396& + 1, Len(l037A) - (l0396& - 1))
            l037A = l0398 + " " + l039C
            End If
        Loop While l0396&
    Do
        l0396& = InStr(l0396& + 1, l037A, Chr$(9))
        If l0396& > 0 Then
            l0398 = Mid$(l037A, 1, l0396& - 1)
            l039C = Mid$(l037A, l0396& + 1, Len(l037A) - (l0396& - 1))
            l037A = l0398 + " " + l039C
            End If
        Loop While l0396&
    l0396& = 0
    Do
        l0396& = InStr(l0396& + 1, l037A, Chr$(10))
        If l0396& > 0 Then
            l0398 = Mid$(l037A, 1, l0396& - 1)
            l039C = Mid$(l037A, l0396& + 1, Len(l037A) - (l0396& - 1))
            l037A = l0398 + " " + l039C
            End If
        Loop While l0396&
    l0396& = 0
    Do
        l03A0& = 0
        l0396& = InStr(l0396& + 1, l037A, "  ")
        If l0396& > 0 Then
            l0398 = Mid$(l037A, 1, l0396& - 1)
            l039C = Mid$(l037A, l0396& + 2, Len(l037A) - (l0396&))
            l037A = l0398 + " " + l039C
            l0396& = l0396& - 1
            l03A0& = 1
            End If
        Loop While l03A0&
    l0396& = 0
    Do
        l03A0& = 0
        l0396& = InStr(l0396& + 1, l037A, "&")
        If l0396& > 0 Then
            l03A2& = InStr(l0396& + 1, l037A, ";")
            If l03A2& > 0 Then
                l03A4$ = Mid$(l037A, l0396& + 1, l03A2& - l0396& - 1)
                Call sub1C27(l03A4$)
                l0398 = Mid$(l037A, 1, l0396& - 1)
                l039C = Mid$(l037A, l03A2& + 1, Len(l037A) - (l03A2&))
                l037A = l0398 + l03A4$ + l039C
                l03A0& = 1
                End If
            End If
        Loop While l03A0&
    Return
End Sub

Private Sub sub1B6D(p02F0 As String)
Dim l02F2 As String
Dim l02F4 As String
Dim l02F6 As String
Dim l02F8 As String
Dim l02FA As Integer
Dim l02FC As String
Dim l02FE As Long
Dim l0300 As String
Dim l0302 As Integer
Dim l0304 As String
Dim l0306 As Integer
Dim l0308 As String
Dim l0312 As Integer
Dim l0314 As Integer
Dim l0316 As String
Dim l0318 As String
Dim l031A As String
Dim l031C As Single
    On Error GoTo L309A4
    m00D0% = 0
    m00E0% = 0
    Me.MousePointer = 11:
    l02F2$ = p02F0$
    l02F4$ = ""
    l02F6$ = ""
    l02F8$ = ""
    l02FA% = 80
    l02FC$ = ""
    If Len(l02F2$) > 10 And LCase$(Left$(l02F2$, 7)) = "http://" Then
            l02FE& = InStr(8, l02F2$, "/")
            If l02FE& = 0 Then
                    l02FE& = Len(l02F2$) + 1
                    l0300$ = Mid$(l02F2$, 8, l02FE& - 8)
                Else
                    l0300$ = Mid$(l02F2$, 8, l02FE& - 8)
                    l02F6$ = Mid$(l02F2$, l02FE&, Len(l02F2$) - l02FE& + 1)
                    For l0302% = Len(l02F6$) To 1 Step -1
                        If Mid$(l02F6$, l0302%, 1) = "/" Then
                            l02F4$ = Right$(l02F6$, Len(l02F6$) - l0302%)
                            l02F6$ = Left$(l02F6$, l0302%)
                            Exit For
                            End If
                        Next
                    For l0302% = Len(l02F4$) To 1 Step -1
                        If Mid$(l02F4$, l0302%, 1) = "#" Then
                            l02F8$ = Right$(l02F4$, Len(l02F4$) - l0302% + 1)
                            l02F4$ = Left$(l02F4$, l0302% - 1)
                            Exit For
                            End If
                        Next
                End If
        Else
            MsgBox "Sorry, Not A Valid URL..."
            gv0C7E% = 0
            Me.MousePointer = 0
            Exit Sub
        End If
    l02FE& = InStr(l0300$, ":")
    If l02FE& Then
        l02FC$ = Right$(l0300$, Len(l0300$) - l02FE&)
        l02FA% = Val(l02FC$)
        l02FC$ = ":" + l02FC$
        l0300$ = Left$(l0300$, l02FE& - 1)
        End If
    LabelStatus.Caption = "Looking up host " + l0300$
    LabelStatus.Refresh
    Me.MousePointer = 11
    IPPort1.Linger = False
    IPPort1.Connected = False
    Call sub1BA4(l0300$, l0304$)
    If m00D0% Then
        IPPort1.Linger = 0
        IPPort1.Connected = 0
        Me.MousePointer = 0
        m00D0% = 0: Exit Sub
        End If
    If l0304$ = "255.255.255.255" Then
        IPPort1.Linger = 0
        IPPort1.Connected = 0
        LabelStatus.Caption = ""
        Me.MousePointer = 0
        MsgBox "Sorry, PocketSurfer Couldn't Find A DNS Entry For " + l0300$ + "."
        Err = 0
        gv0C7E% = 0
        Me.MousePointer = 0
        Exit Sub
        End If
    GoSub L306AE
    If m00D0% Or IPPort1.Connected = 0 Then
        m00D0% = 0: Me.MousePointer = 0: Exit Sub
        End If
    l0306% = 0
    If Len(Trim$(l02F4$)) > 4 Then
        l0308$ = Right$(l02F4$, 4)
        If l0308$ = ".exe" Then
                If InStr(l02F6$, "cgi") = 0 Then
                    l0306% = 1
                    gv0722 = ".exe"
                    End If
            ElseIf l0308$ = ".zip" Then
                l0306% = 1
                gv0722 = ".zip"
            End If
        If l0306% Then
            LabelStatus.Caption = ""
            LabelStatus.Refresh
            IPPort1.Linger = 0
            IPPort1.Connected = 0
            gv0726% = 15
            gv0C84$ = l02F4$
            Screen.MousePointer = 11
            If gv0728 <> "" Then
                    l0312% = FreeFile
                    Open gv0728 For Append As l0312%
                    If LOF(l0312%) > 0 Then
                        Close l0312%
                        Screen.MousePointer = 0
                        l0314% = MsgBox(UCase$(gv0728) + " already exists.  Overwrite it?", 289, "File Exists")
                        If l0314% <> 1 Then
                            Err = 0
                            gv0C7E% = 0
                            Me.MousePointer = 0
                            Screen.MousePointer = 0
                            Exit Sub
                            End If
                        End If
                    Close l0312%
                    Kill gv0728
                    GoSub L306AE
                    If m00D0% Or IPPort1.Connected = 0 Then m00D0% = 0: Me.MousePointer = 0: Exit Sub
                    m00D8% = 1
                    m00DA$ = gv0728
                    m00E6& = 0
                    m00E2$ = ""
                    If l02F6$ = "" Then l0316$ = "/" Else l0316$ = ""
                    l0318$ = "GET " + l02F6$ + l0316$ + l02F4$ + " HTTP/1.0" + Chr$(13) + Chr$(10)
                    l0318$ = l0318$ + "Connection: Keep-Alive" + Chr$(13) + Chr$(10)
                    l0318$ = l0318$ + "User-Agent: Mozilla/2.0 (Compatible; PocketSurfer 1.0)" + Chr$(13) + Chr$(10)
                    l0318$ = l0318$ + "Host: " + m00B4$ + Chr$(13) + Chr$(10)
                    l0318$ = l0318$ + "Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*" + Chr$(13) + Chr$(10) + Chr$(13) + Chr$(10)
                    IPPort1.DataToSend = l0318$
                Else
                    Err = 0
                    gv0C7E% = 0
                    Me.MousePointer = 0
                    Screen.MousePointer = 0
                    Exit Sub
                End If
            End If
        End If
    If l0306% = 0 Then
        m00B4$ = l0300$
        m00B8$ = l0304$
        m00C0$ = l02F6$
        m00BC$ = l02F4$
        m00CA$ = l02FC$
        m00C4$ = l02F8$
        m00E0% = 0
        If m00C0$ = "" Then l0316$ = "/" Else l0316$ = ""
        l031A$ = "http://" + m00B4$ + m00CA$ + m00C0$ + l0316$ + m00BC$ + m00C4$
        If l031A$ <> m004C$(m00B2%) Or m00B0% = 0 Then
                If m00B0% < 15 Then
                        m00B0% = m00B0% + 1
                        ReDim Preserve m001A(m00B0%)
                        ReDim Preserve m004C$(m00B0%)
                        ReDim Preserve m007E$(m00B0%)
                        m00B2% = m00B0%
                        m004C$(m00B2%) = "http://" + m00B4$ + m00CA$ + m00C0$ + m00BC$ + m00C4$
                    Else
                        For l0302% = 1 To m00B0% - 1
                            m001A(l0302%) = m001A(l0302% + 1)
                            m004C$(l0302%) = m004C$(l0302% + 1)
                            m007E$(l0302%) = m007E$(l0302% + 1)
                            Next
                        m00B2% = m00B0%
                        m001A(m00B2%) = ""
                        m007E$(m00B2%) = ""
                        m004C$(m00B2%) = "http://" + m00B4$ + m00CA$ + m00C0$ + m00BC$ + m00C4$
                    End If
                If m00B0% > 1 Then ComBack.Enabled = -1
            Else
                m001A(m00B2%) = ""
                m007E$(m00B2%) = ""
            End If
        m00D2$ = m00B4$
        If l02F6$ = "" Then l0316$ = "/" Else l0316$ = ""
        l0318$ = "GET " + m00C0$ + l0316$ + m00BC$ + " HTTP/1.0" + Chr$(13) + Chr$(10)
        l0318$ = l0318$ + "Connection: Keep-Alive" + Chr$(13) + Chr$(10)
        l0318$ = l0318$ + "User-Agent: Mozilla/2.0 (Compatible; PocketSurfer 1.0)" + Chr$(13) + Chr$(10)
        l0318$ = l0318$ + "Host: " + m00B4$ + Chr$(13) + Chr$(10)
        l0318$ = l0318$ + "Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*" + Chr$(13) + Chr$(10) + Chr$(13) + Chr$(10)
        IPPort1.DataToSend = l0318$
        End If
    Exit Sub

L306AE:
    LabelStatus.Caption = "Contacting host: " + l0300$
    LabelStatus.Refresh
    Me.MousePointer = 11
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    DoEvents
    #If Win32 Then
    IPPort1.RemotePort = l02FA%
    #Else
    IPPort1.Port = l02FA%
    #End If
    For l0302% = 1 To 3
        If IPPort1.Connected = 0 Then
            IPPort1.Linger = 0
            IPPort1.Connected = 0
            IPPort1.EOL = Chr$(10)
            IPPort1.Connected = True
            End If
        l031C! = Timer + 10
        Do Until IPPort1.Connected Or Timer > l031C! Or m00D0%
            DoEvents
            Loop
        If IPPort1.Connected Then Exit For
        If m00D0% Then
            IPPort1.Linger = 0
            IPPort1.Connected = 0
            Me.MousePointer = 0
            Exit For
            End If
        Next
    If m00D0% Then Return
    If IPPort1.Connected = 0 Then
        IPPort1.Linger = 0
        IPPort1.Connected = 0
        LabelStatus.Caption = ""
        If m00D0% Then
            IPPort1.Linger = 0
            IPPort1.Connected = 0
            Me.MousePointer = 0
            Return
            End If
        Me.MousePointer = 0
        MsgBox "Timed Out Connecting To Specified Host.  The Host Is Likely Off Line."
        Err = 0
        gv0C7E% = 0
        Return
        End If
    Me.MousePointer = 11
    LabelStatus.Caption = "Host contacted, waiting for a reply..."
    LabelStatus.Refresh
    Return

L309A4:
    LabelStatus.Caption = ""
    Me.MousePointer = 0
    gv0C7E% = 0
    MsgBox "Error!! " & Error$
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    If m00D0% Then m00D0% = 0
    Exit Sub
End Sub

Private Sub sub1BA4(p041A As String, p041C As String)
    On Error Resume Next
    m00D0% = 0
    ComStop.Enabled = 0
    Display.Enabled = 0
    If p041A$ <> "" Then
        #If Win32 Then
        IPPort1.RemoteHost = p041A$
        #Else
        IPPort1.HostName = p041A$
        #End If
        If Err Then
            Err = 0
            #If Win32 Then
            IPPort1.RemoteHost = p041A$
            #Else
            IPPort1.HostAddress = p041A$
            #End If
            If Err Then
                Err = 0
                End If
            End If
        #If Win32 Then
        p041C$ = IPPort1.RemoteHost
        p041A$ = IPPort1.RemoteHost
        #Else
        p041C$ = IPPort1.HostAddress
        p041A$ = IPPort1.HostName
        #End If
        End If
    ComStop.Enabled = -1
    Display.Enabled = -1
End Sub

Private Sub sub1BD5(p043E As Integer)
Dim l0440 As String
Dim l0442 As Long
Dim l0444 As String
Dim l0446 As Long
Dim l0448 As Integer
Dim l0452 As String
Dim l0454 As String
Dim l0456 As Integer
    Me.MousePointer = 11
    gv0C7E% = 1
    IPPort1.Linger = 0
    IPPort1.Connected = 0
    l0440$ = Trim$(m0220(p043E%).M3182)
    l0442& = InStr(l0440$, "=")
    If l0442& = 0 Then Me.MousePointer = 0: Exit Sub
    l0444$ = Trim$(Mid$(l0440$, 1, l0442& - 1))
    If Right$(l0440$, 1) = Chr$(34) Then
        l0440$ = Left$(l0440$, Len(l0440$) - 1)
        End If
    l0446& = InStr(LCase(l0440$), "=")
    If l0446& > 0 Then
            For l0448% = l0446& + 1 To Len(l0440$)
                If Mid$(l0440$, l0448%, 1) <> Chr$(34) And Mid$(l0440$, l0448%, 1) <> Chr$(32) Then
                    l0440$ = Mid$(l0440$, l0448%, Len(l0440$) - l0448% + 1)
                    Exit For
                    End If
                Next
        Else
            Exit Sub
        End If
    l0440$ = LCase$(l0440$)
    Select Case LCase$(l0444$)
        Case "name"
        Case "href"
            l0446& = InStr(l0440$, ":")
            Select Case Mid$(l0440$, 1, l0446&)
                Case "http:"
                    GoSub L3552A
                    Call sub1B6D(l0440$)
                Case "ftp:"
                    Call sub1C46(l0440$)
                Case "weiv:"
                    If gv07B4% Then
                            gv0C7E% = 0
                            gv07BC$ = Trim$(Right$(l0440$, Len(l0440$) - l0446&))
                            Unload SurferForm
                        Else
                            gv0C7E% = 0
                            Beep
                            Me.MousePointer = 0
                        End If
                Case "mailto:"
                    gv0C7E% = 0
                    Screen.MousePointer = 11
                    gv0C9A$ = Trim$(Right$(l0440$, Len(l0440$) - l0446&))
                    EmailForm.Show
                    Me.MousePointer = 0
                Case Else
                    If Left$(l0440$, 1) <> "#" Then
                            GoSub L3552A
                            If m00C0$ = "" Then l0452$ = "/" Else l0452$ = ""
                            If Left$(l0440$, 1) = "/" Then
                                    m00C0$ = ""
                                ElseIf Len(l0440$) > 3 Then
                                    If Left$(l0440$, 3) = "../" Then
                                        m00C0$ = ""
                                        l0440$ = Right$(l0440$, Len(l0440$) - 2)
                                        End If
                                End If
                            l0440$ = "http://" + m00B4$ + m00CA$ + m00C0$ + l0452$ + l0440$
                            Call sub1B6D(l0440$)
                        Else
                            l0446& = InStr(l0440$, "#")
                            l0454$ = Trim$(Right$(l0440$, Len(l0440$) - l0446&))
                            Me.MousePointer = 0
                            gv0C7E% = 0
                            If Len(Trim$(l0454$)) > 0 Then
                                For l0456% = 1 To m0286%
                                    l0440$ = Trim$(m0220(l0456%).M3182)
                                    l0444$ = Trim$(Mid$(l0440$, 1, l0442& - 1))
                                    If LCase$(l0444$) = "name" Then
                                        l0442& = InStr(l0440$, "=")
                                        If l0442& = 0 Then Me.MousePointer = 0: Exit Sub
                                        If Right$(l0440$, 1) = Chr$(34) Then
                                            l0440$ = Left$(l0440$, Len(l0440$) - 1)
                                            End If
                                        l0446& = InStr(LCase(l0440$), "=")
                                        If l0446& > 0 Then
                                            For l0448% = l0446& + 1 To Len(l0440$)
                                                If Mid$(l0440$, l0448%, 1) <> Chr$(34) And Mid$(l0440$, l0448%, 1) <> Chr$(32) Then
                                                    l0440$ = Mid$(l0440$, l0448%, Len(l0440$) - l0448% + 1)
                                                    Exit For
                                                    End If
                                                Next
                                            End If
                                        l0440$ = LCase$(l0440$)
                                        If l0440$ = LCase$(l0454$) Then
                                            VScroll1.Value = m0220(l0456%).M316B + 1
                                            Exit For
                                            End If
                                        End If
                                    Next
                                End If
                        End If
                End Select
        Case Else
        End Select
    Exit Sub

L3552A:
    If m00B2% = 0 Then Return
    m00B0% = m00B2%
    ReDim Preserve m001A(m00B0%)
    ReDim Preserve m004C$(m00B0%)
    ReDim Preserve m007E$(m00B0%)
    ComNext.Enabled = 0
    Return
End Sub

Private Sub sub1BE3(p1 As String)
' called (p1$)
Dim l0468 As String
            l0468$ = "000000"
    Call sub1C35(l0468$, m00EE&())
    Display.BackColor = QBColor(4)
            l0468$ = "ffff00"
    Call sub1C35(l0468$, m0130&())
    Display.ForeColor = QBColor(14)
            l0468$ = "ffffff"
    Call sub1C35(l0468$, m0104&())
            l0468$ = "800080"
    Call sub1C35(l0468$, m011A&())
            l0468$ = "FF0000"
    Call sub1C35(l0468$, m0146&())
End Sub

Private Sub sub1BF0()
Dim l046C As Integer
Dim l046E As Integer
Dim l0472() As T30B4
Dim l0478() As String
Dim l047E As Single
Dim l0480 As Single
Dim l0482 As Single
Dim l0484 As Integer
Dim l0486 As Integer
Dim l0488 As Long
Dim l048A As String
Dim l048C As Integer
Dim l048E As Integer
Dim l0490 As Long
Static m0492 As Integer
Dim l0494 As Single
Dim l0496 As Single
' Const mc0498 = 2 ' &H2%
    On Error Resume Next
    If m00EA$ = "" Then
            If m0290% And m021C = mc0386 Then
                If Display.CurrentY < 30000 Then Display.Print
                End If
            Exit Sub
        Else
            If m021C = mc0364 Then
                    m0290% = 1
                Else
                    m0290% = 0
                End If
        End If
    m0206! = Holder.Width - (m020E! + m020A!)
    For l046C% = 1 To m0204%
        GoSub L363C0
        l046E% = l046E% + 1
        ReDim Preserve l0472(l046E%) As T30B4
        ReDim Preserve l0478$(l046E%)
        l0472(l046E%) = m01A0(l046C%)
        l0478$(l046E%) = m01D2$(l046C%)
        If l0472(l046E%).M30C4 > l047E! Then
            l047E! = l0472(l046E%).M30C4
            End If
        l0482! = l0480!
        l0480! = l0480! + m01A0(l046C%).M30D2
        If l0480! > m0206! Then
            If InStr(l0478$(l046E%), " ") = 0 Then
                    l0484% = l046E%: l046E% = 0
                    For l0486% = l0484% - 1 To 1 Step -1
                        If InStr(l0478$(l0486%), " ") > 0 Then
                            l046E% = l0486%: Exit For
                            End If
                        Next
                    If l046E% > 0 Then
                            For l0486% = Len(l0478$(l046E%)) To 1 Step -1
                                If Mid$(l0478$(l046E%), l0486%, 1) = " " Then
                                    l0488& = l0486%: Exit For
                                    End If
                                Next
                            l048A$ = Right$(l0478$(l046E%), Len(l0478$(l046E%)) - l0488&)
                            l0478$(l046E%) = Left$(l0478$(l046E%), l0488& - 1)
                            Display.FontName = Trim$(l0472(l046E%).M310A)
                            Display.FontSize = l0472(l046E%).M3116
                            Display.FontBold = l0472(l046E%).M30DF
                            Display.FontItalic = l0472(l046E%).M30EB
                            Display.FontUnderline = l0472(l046E%).M30F9
                            Display.ForeColor = l0472(l046E%).M3122
                            l0472(l046E%).M30D2 = Display.TextWidth(l0478$(l046E%))
                            GoSub L3646A
                            If Display.CurrentY < 30000 Then Display.Print
                            l048C% = 0
                            For l0486% = l046E% To l0484%
                                l048C% = l048C% + 1
                                l0472(l048C%) = l0472(l0486%)
                                l0478$(l048C%) = l0478$(l0486%)
                                Next
                            l046E% = l048C%
                            ReDim Preserve l0472(l046E%) As T30B4
                            ReDim Preserve l0478$(l046E%)
                            l0478$(1) = l048A$
                            l0472(1).M30D2 = Display.TextWidth(l048A$)
                            l0480! = 0
                            For l0486% = 1 To l046E%
                                l0480! = l0480! + l0472(l0486%).M30D2
                                Next
                        Else
                        End If
                Else
                    l048A$ = l0478$(l046E%)
                    l048E% = 0
                    Do While (l0482! + Display.TextWidth(l048A$)) > m0206!
                        l0490& = 1
                        Do
                            l0488& = InStr(l0490&, l048A$, " ")
                            If ((l0482! + Display.TextWidth(Left$(l048A$, l0488&))) > m0206!) Then
                                Exit Do
                                End If
                            If l0488& > 0 Then l0490& = l0488& + 1
                            Loop While l0488& > 0
                        l0482! = 0
                        l0478$(l046E%) = Left$(l048A$, l0490& - 1)
                        l0472(l046E%).M30D2 = Display.TextWidth(l0478$(l046E%))
                        l048A$ = Right$(l048A$, Len(l048A$) - l0490& + 1)
                        GoSub L3646A
                        If Display.CurrentY < 30000 Then Display.Print
                        l046E% = 1
                        ReDim l0472(l046E%) As T30B4
                        ReDim l0478$(l046E%)
                        l0472(l046E%) = m01A0(l046C%)
                        l0478$(l046E%) = l048A$
                        l0472(l046E%).M30D2 = Display.TextWidth(l048A$)
                        l047E! = m01A0(l046C%).M30C4
                        Loop
                    l0480! = Display.TextWidth(l048A$)
                    l0482! = l0480!
                End If
            End If
        Next
    GoSub L3646A
    If m021C = mc0364 Then
            If Display.CurrentY < 30000 Then Display.Print
        ElseIf m021C = mc0386 Then
            If Display.CurrentY < 30000 Then Display.Print
            If Display.CurrentY < 30000 Then Display.Print
        End If
    m021C = m0492
    m0204% = 0
    ReDim Preserve m01A0(m0204%)
    ReDim Preserve m01D2$(m0204%)
    m00EA$ = ""
    Exit Sub

L363C0:
    Display.FontName = Trim$(m01A0(l046C%).M310A)
    Display.FontSize = m01A0(l046C%).M3116
    Display.FontBold = m01A0(l046C%).M30DF
    Display.FontItalic = m01A0(l046C%).M30EB
    Display.FontUnderline = m01A0(l046C%).M30F9
    Display.ForeColor = m01A0(l046C%).M3122
    Return

L3646A:
    If Display.CurrentY > 30000 Then Return
    l0494! = Display.CurrentY
    Select Case m021A
        Case m0352
            Display.CurrentX = m020E!
        Case mc0388
            l0496! = 0
            For l0486% = 1 To l046E%
                l0496! = l0496! + l0472(l0486%).M30D2
                Next
            Display.CurrentX = m020E! + ((m0206! - l0496!) / 2)
        Case mc0498
        Case Else
        End Select
    For l0486% = 1 To l046E%
        Display.FontName = Trim$(l0472(l0486%).M310A)
        Display.FontSize = l0472(l0486%).M3116
        Display.FontBold = l0472(l0486%).M30DF
        Display.FontItalic = l0472(l0486%).M30EB
        Display.FontUnderline = l0472(l0486%).M30F9
        Display.ForeColor = l0472(l0486%).M3122
        Display.CurrentY = l0494! + (l047E! - l0472(l0486%).M30C4) + (l0472(l0486%).M30C4 / 4)
        If l0472(l0486%).M312F > 0 Then
            m0288% = m0288% + 1
            ReDim Preserve m0254(m0288%)
            m0254(m0288%).M3148 = Display.CurrentX
            m0254(m0288%).M314E = Display.CurrentY
            m0254(m0288%).M3154 = Display.CurrentX + l0472(l0486%).M30D2
            m0254(m0288%).M315A = Display.CurrentY + l0472(l0486%).M30C4
            m0254(m0288%).M3176 = l0472(l0486%).M312F
            m0220(m0254(m0288%).M3176).M3160 = Display.CurrentX
            m0220(m0254(m0288%).M3176).M316B = Display.CurrentY
            End If
        If l0486% = 1 Then
                Display.Print LTrim$(l0478$(l0486%));
            Else
                Display.Print l0478$(l0486%);
            End If
        Next
    Display.Refresh
    Return
End Sub

Private Sub sub1BFD(p0458 As String)
Dim l045A As Single
Dim l045C As Long
Dim l045E As Integer
    l045A! = 2
    l045C& = InStr(LCase(p0458$), "size")
    If l045C& > 0 Then
        For l045E% = l045C& + 4 To Len(p0458$)
            If Mid$(p0458$, l045E%, 1) <> " " And Mid$(p0458$, l045E%, 1) <> "=" And Mid$(p0458$, l045E%, 1) <> Chr$(34) Then
                l045A! = Val(Mid$(p0458$, l045E%, Len(p0458$) - l045E% + 1))
                Exit For
                End If
            Next
        If l045A! > 5 Then l045A! = 5
        If l045A! < -1 Then l045A! = -1
        End If
    If l045A! = 3 And InStr(p0458$, "+") = 0 Then
            SizeTest.FontSize = m015C!
        Else
            Select Case l045A!
                Case 5: l045A! = 26
                Case 4: l045A! = 18
                Case 3: l045A! = 12
                Case 2: l045A! = 6
                Case 1: l045A! = 3
                Case -1: l045A! = -3
                Case Else
                End Select
            SizeTest.FontSize = m015C! + l045A!
        End If
End Sub

Private Sub sub1C08(p03EC As String, p03EE As String)
Dim l03F0 As Long
Dim l03F2 As Long
    l03F0& = InStr(LCase$(p03EC$), "alt=")
    If l03F0& = 0 Then
        l03F0& = InStr(LCase$(p03EC$), "alt =")
        If l03F0& = 0 Then Exit Sub
        End If
    l03F0& = InStr(l03F0&, p03EC$, Chr$(34))
    If l03F0& = 0 Then Exit Sub
    l03F2& = InStr(l03F0& + 1, p03EC$, Chr$(34))
    If l03F2& = 0 Then Exit Sub
    p03EE$ = Mid$(p03EC$, l03F0& + 1, l03F2& - l03F0& - 1)
End Sub

Private Sub sub1C16(p03A6 As String)
Dim l03A8 As Single
Dim l03AA As Long
Dim l03AC As Integer
Dim l03AE As Single
Dim l03B0 As Single
Dim l03B2 As Single
    l03A8! = 100
    l03AA& = InStr(LCase(p03A6$), "width")
    If l03AA& > 0 Then
        For l03AC% = l03AA& + 5 To Len(p03A6$)
            If Mid$(p03A6$, l03AC%, 1) <> " " And Mid$(p03A6$, l03AC%, 1) <> "=" And Mid$(p03A6$, l03AC%, 1) <> Chr$(34) Then
                l03A8! = Val(Mid$(p03A6$, l03AC%, Len(p03A6$) - l03AC%))
                Exit For
                End If
            Next
        If l03A8! > 100 Then l03A8! = 100
        End If
    l03AE! = 2
    l03AA& = InStr(LCase(p03A6$), "size")
    If l03AA& > 0 Then
        For l03AC% = l03AA& + 4 To Len(p03A6$)
            If Mid$(p03A6$, l03AC%, 1) <> " " And Mid$(p03A6$, l03AC%, 1) <> "=" And Mid$(p03A6$, l03AC%, 1) <> Chr$(34) Then
                l03AE! = Val(Mid$(p03A6$, l03AC%, Len(p03A6$) - l03AC% + 1))
                Exit For
                End If
            Next
        If l03AE! > 20 Then l03AE! = 2
        End If
    If l03A8! = 0 Then l03A8! = 100
    If l03AE! = 0 Then l03AE! = 2
    l03AE! = l03AE! * Screen.TwipsPerPixelY
    If Display.CurrentY < 30000 Then Display.Print
    m0206! = Display.Width - (m020E! + m020A!)
    l03A8! = ((m0206! * l03A8!) / 100)
    l03B0! = m020E! + ((m0206! - l03A8!) / 2)
    l03B2! = Display.CurrentY
    Display.Line (l03B0!, l03B2!)-(l03B0! + l03A8!, l03B2! + l03AE!), QBColor(12), B
    Display.Line (l03B0!, l03B2!)-(l03B0! + l03A8!, l03B2!), QBColor(0)
    Display.Line (l03B0!, l03B2!)-(l03B0!, l03B2! + l03AE!), QBColor(0)
    If Display.CurrentY < 30000 Then Display.Print
End Sub

Private Sub sub1C27(p041E As String)
    If Left$(p041E$, 1) = "#" Then
            p041E$ = Chr$(Val(Right$(p041E$, Len(p041E$) - 1)))
        Else
            Select Case LCase$(p041E$)
                Case "copy": p041E$ = Chr$(169)
                Case "amp": p041E$ = "&"
                Case "lt": p041E$ = "<"
                Case "gt": p041E$ = ">"
                Case "quot": p041E$ = Chr$(34)
                Case Else
                End Select
        End If
End Sub

Private Sub sub1C35(p03F4 As String, p03F6() As Long)
Dim l03FC As Integer
Dim l03FE As String
Dim l0400 As Long
Dim l0402 As Integer
Dim l0404 As Long
    For l03FC% = 1 To 3
        l03FE$ = Mid$(p03F4$, ((l03FC% - 1) * 2) + 1, 2)
        GoSub L339C0
        p03F6&(l03FC%) = l0400&
        Next
    Exit Sub

L339C0:
    For l0402% = 1 To 2
        Select Case UCase$(Mid$(l03FE$, l0402%, 1))
            Case "0": l0404& = 0
            Case "1": l0404& = 1
            Case "2": l0404& = 2
            Case "3": l0404& = 3
            Case "4": l0404& = 4
            Case "5": l0404& = 5
            Case "6": l0404& = 6
            Case "7": l0404& = 7
            Case "8": l0404& = 8
            Case "9": l0404& = 9
            Case "A": l0404& = 10
            Case "B": l0404& = 11
            Case "C": l0404& = 12
            Case "D": l0404& = 13
            Case "E": l0404& = 14
            Case "F": l0404& = 15
            Case Else
            End Select
        If l0402% = 1 Then
                l0400& = l0404& * 16
            Else
                l0400& = l0400& + l0404&
            End If
        Next
    Return
End Sub

Private Sub sub1C46(p0406 As String)
Dim l0410 As Long
Dim l0412 As Integer
Dim l0416 As Integer
Dim l0418 As Integer
    gv0C90$ = ""
    gv0C88$ = ""
    gv0C94$ = ""
    gv0C8C$ = ""
    If Len(p0406$) > 10 And LCase$(Left$(p0406$, 6)) = "ftp://" Then
            l0410& = InStr(7, p0406$, "/")
            If l0410& = 0 Then
                    MsgBox "Sorry, Not A Valid URL..."
                    gv0C7E% = 0
                    Me.MousePointer = 0
                    Exit Sub
                Else
                    gv0C90$ = Mid$(p0406$, 7, l0410& - 7)
                    gv0C94$ = Mid$(p0406$, l0410&, Len(p0406$) - l0410& + 1)
                    For l0412% = Len(gv0C94$) To 1 Step -1
                        If Mid$(gv0C94$, l0412%, 1) = "/" Then
                            gv0C8C$ = Right$(gv0C94$, Len(gv0C94$) - l0412%)
                            gv0C94$ = Left$(gv0C94$, l0412%)
                            Exit For
                            End If
                        Next
                End If
            If Trim$(gv0C8C$) <> "" And gv0C82% = 0 Then
                LabelStatus.Caption = ""
                LabelStatus.Refresh
                IPPort1.Linger = 0
                IPPort1.Connected = 0
                gv0726% = 16
                Screen.MousePointer = 11
                gv0C88$ = gv0C8C$
                gv0722 = ".*"
                If gv0728 <> "" Then
                        l0416% = FreeFile
                        Open gv0728 For Append As l0416%
                        If LOF(l0416%) > 0 Then
                            Close l0416%
                            Screen.MousePointer = 0
                            l0418% = MsgBox(UCase$(gv0728) + " already exists.  Overwrite it?", 289, "File Exists")
                            If l0418% <> 1 Then
                                Err = 0
                                gv0C7E% = 0
                                Me.MousePointer = 0
                                Screen.MousePointer = 0
                                Exit Sub
                                End If
                            End If
                        Close l0416%
                        Kill gv0728
                        gv0C88$ = gv0728
                        gv0C82% = 1
                    Else
                        If gv0C82% = 1 Then MsgBox "Download Already In Progress..."
                        Err = 0
                        gv0C7E% = 0
                        Me.MousePointer = 0
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End If
        Else
            MsgBox "Sorry, Not A Valid URL..."
            gv0C7E% = 0
            Me.MousePointer = 0
            Exit Sub
        End If
    Me.MousePointer = 0
End Sub

Private Sub sub1C54(p04A0 As Long, p04A2 As Long)
Dim l04AA As Single
Dim l04AC As Single
Dim l04AE As String
    l04AA! = PicProgHolder.Width
    l04AC! = ((l04AA! * p04A0&) / p04A2&)
    PicProgHolder.Line (1, 1)-(l04AC!, PicProgHolder.Height), QBColor(12), BF
    l04AE$ = Trim$(Str$(Int(((100 * p04A0&) / p04A2&)))) + "%"
    PicProgress.Caption = l04AE$
End Sub

Private Sub sub1C66()
End Sub

Private Sub TextURL_Click()
Dim l049A As Variant
    If TextURL.ListIndex > -1 Then Call sub1B6D(Trim$(TextURL.Text)): l049A = 0
End Sub

Private Sub TextURL_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then Call sub1B6D(Trim$(TextURL.Text)): KeyAscii = 0
End Sub

Private Sub VScroll1_Change()
    Display.Top = -VScroll1.Value
End Sub

