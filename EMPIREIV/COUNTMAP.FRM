VERSION 4.00
Begin VB.Form CountMap 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   6870
   ClientLeft      =   315
   ClientTop       =   1530
   ClientWidth     =   9600
   DrawStyle       =   4  'Dash-Dot-Dot
   FillStyle       =   0  'Solid
   BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000080&
   Height          =   7455
   Icon            =   "COUNTMAP.frx":0000
   Left            =   195
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6870
   ScaleWidth      =   9600
   Top             =   1065
   Width           =   9840
   Begin VB.CommandButton ComTranCancel 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Cancel"
      Height          =   1035
      Left            =   8520
      TabIndex        =   54
      Top             =   4980
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.PictureBox Box_Blast 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   405
      Left            =   585
      ScaleHeight     =   375
      ScaleWidth      =   375
      TabIndex        =   51
      TabStop         =   0   'False
      Top             =   5625
      Visible         =   0   'False
      Width           =   405
   End
   Begin VB.PictureBox Picture8 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   225
      Left            =   6630
      ScaleHeight     =   225
      ScaleWidth      =   2865
      TabIndex        =   49
      Top             =   6690
      Width           =   2865
      Begin VB.CommandButton ComFocus 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Height          =   210
         Left            =   2535
         TabIndex        =   59
         Top             =   210
         Width           =   285
      End
   End
   Begin VB.PictureBox Picture7 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   6945
      Left            =   9480
      ScaleHeight     =   6945
      ScaleWidth      =   165
      TabIndex        =   48
      Top             =   -30
      Width           =   165
   End
   Begin VB.PictureBox Picture6 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   6630
      ScaleHeight     =   195
      ScaleWidth      =   2865
      TabIndex        =   47
      Top             =   -60
      Width           =   2865
   End
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   6975
      Left            =   6480
      ScaleHeight     =   6975
      ScaleWidth      =   165
      TabIndex        =   45
      Top             =   0
      Width           =   165
      Begin VB.PictureBox Picture5 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   135
         Left            =   180
         ScaleHeight     =   105
         ScaleWidth      =   1425
         TabIndex        =   46
         Top             =   30
         Width           =   1455
      End
   End
   Begin VB.CommandButton CoM_Transfer_Done 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Done"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   7380
      TabIndex        =   17
      Top             =   6330
      Visible         =   0   'False
      Width           =   1395
   End
   Begin VB.HScrollBar Scroll_Armies_Move 
      Height          =   315
      Left            =   6660
      TabIndex        =   16
      Top             =   5970
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.CommandButton Com_Assign 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Assign"
      Height          =   795
      Left            =   8490
      TabIndex        =   2
      Top             =   5880
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0FFFF&
      Height          =   675
      Left            =   6660
      TabIndex        =   26
      Top             =   4200
      Visible         =   0   'False
      Width           =   2835
      Begin VB.Label Label14 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Air"
         ForeColor       =   &H00C0C000&
         Height          =   255
         Left            =   2160
         TabIndex        =   27
         Top             =   420
         Width           =   435
      End
      Begin VB.Label Label15 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Infantry"
         ForeColor       =   &H0000C000&
         Height          =   255
         Left            =   1020
         TabIndex        =   28
         Top             =   420
         Width           =   795
      End
      Begin VB.Label Label17 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Mechan."
         ForeColor       =   &H0000C0C0&
         Height          =   255
         Left            =   60
         TabIndex        =   29
         Top             =   420
         Width           =   795
      End
      Begin VB.Label Label20 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C000&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   540
         TabIndex        =   32
         Top             =   240
         Width           =   195
      End
      Begin VB.Label Label19 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C000&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   360
         TabIndex        =   31
         Top             =   240
         Width           =   195
      End
      Begin VB.Label Label18 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C0C0&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00E0FFFF&
         Height          =   195
         Left            =   180
         TabIndex        =   30
         Top             =   240
         Width           =   195
      End
      Begin VB.Label Label13 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label13"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   2280
         TabIndex        =   39
         Top             =   120
         Width           =   195
      End
      Begin VB.Label Label12 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label12"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   1980
         TabIndex        =   38
         Top             =   120
         Width           =   75
      End
      Begin VB.Label Label11 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label11"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   1020
         TabIndex        =   37
         Top             =   120
         Width           =   75
      End
      Begin VB.Label Label5 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label5"
         ForeColor       =   &H80000008&
         Height          =   15
         Left            =   180
         TabIndex        =   34
         Top             =   120
         Width           =   2295
      End
      Begin VB.Label Label10 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label10"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   180
         TabIndex        =   36
         Top             =   120
         Width           =   195
      End
   End
   Begin VB.PictureBox Box_Attackee_Status 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   8700
      ScaleHeight     =   195
      ScaleWidth      =   795
      TabIndex        =   15
      TabStop         =   0   'False
      Top             =   3600
      Visible         =   0   'False
      Width           =   795
   End
   Begin VB.PictureBox Box_Attackee_Flag2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   555
      Left            =   7980
      ScaleHeight     =   555
      ScaleWidth      =   1515
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   3060
      Visible         =   0   'False
      Width           =   1515
   End
   Begin VB.PictureBox Box_Attackables 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H00E0FFFF&
      Height          =   195
      Index           =   0
      Left            =   6660
      ScaleHeight     =   195
      ScaleWidth      =   2835
      TabIndex        =   1
      Top             =   2580
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0FFFF&
      Height          =   675
      Left            =   6660
      TabIndex        =   19
      Top             =   1500
      Visible         =   0   'False
      Width           =   2835
      Begin VB.Label Label9 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Air"
         ForeColor       =   &H00C0C000&
         Height          =   255
         Left            =   2220
         TabIndex        =   25
         Top             =   420
         Width           =   375
      End
      Begin VB.Label Label8 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Infantry"
         ForeColor       =   &H0000C000&
         Height          =   255
         Left            =   1020
         TabIndex        =   24
         Top             =   420
         Width           =   675
      End
      Begin VB.Label Label7 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         Caption         =   "Mechan."
         ForeColor       =   &H0000C0C0&
         Height          =   255
         Left            =   60
         TabIndex        =   23
         Top             =   420
         Width           =   795
      End
      Begin VB.Label Label4 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C000&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   540
         TabIndex        =   22
         Top             =   240
         Width           =   195
      End
      Begin VB.Label Label3 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C000&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   360
         TabIndex        =   21
         Top             =   240
         Width           =   195
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H0000C0C0&
         BorderStyle     =   1  'Fixed Single
         ForeColor       =   &H00E0FFFF&
         Height          =   195
         Left            =   180
         TabIndex        =   20
         Top             =   240
         Width           =   195
      End
      Begin VB.Label Label22 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label22"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   2280
         TabIndex        =   42
         Top             =   120
         Width           =   195
      End
      Begin VB.Label Label21 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label21"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   1980
         TabIndex        =   41
         Top             =   120
         Width           =   75
      End
      Begin VB.Label Label16 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label16"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   1020
         TabIndex        =   40
         Top             =   120
         Width           =   75
      End
      Begin VB.Label Label6 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label6"
         ForeColor       =   &H80000008&
         Height          =   75
         Left            =   180
         TabIndex        =   35
         Top             =   120
         Width           =   195
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Caption         =   "Label1"
         ForeColor       =   &H80000008&
         Height          =   15
         Left            =   180
         TabIndex        =   33
         Top             =   120
         Width           =   2295
      End
   End
   Begin VB.PictureBox Box_Attacker_Status 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   8700
      ScaleHeight     =   195
      ScaleWidth      =   795
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   900
      Width           =   795
   End
   Begin VB.PictureBox Box_Attacker_Flag2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   8040
      ScaleHeight     =   495
      ScaleWidth      =   1455
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   420
      Width           =   1455
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1305
      Left            =   -60
      ScaleHeight     =   1305
      ScaleWidth      =   6585
      TabIndex        =   44
      Top             =   5640
      Width           =   6585
      Begin VB.TextBox TextWindow 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
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
         Height          =   900
         Left            =   150
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   56
         Top             =   300
         Visible         =   0   'False
         Width           =   4575
      End
      Begin Threed.SSCommand ComHotLine 
         Height          =   540
         Left            =   5685
         TabIndex        =   57
         Top             =   75
         Width           =   810
         _Version        =   65536
         _ExtentX        =   1429
         _ExtentY        =   953
         _StockProps     =   78
         ForeColor       =   8388608
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   3
         Picture         =   "COUNTMAP.frx":030A
      End
      Begin Threed.SSCommand Com_To_World_Map 
         Height          =   1095
         Left            =   4890
         TabIndex        =   0
         Top             =   75
         Width           =   780
         _Version        =   65536
         _ExtentX        =   1376
         _ExtentY        =   1931
         _StockProps     =   78
         Caption         =   "World"
         ForeColor       =   8388608
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   3
         Picture         =   "COUNTMAP.frx":0BE4
      End
      Begin Threed.SSCommand Command11 
         Height          =   540
         Left            =   5685
         TabIndex        =   52
         Top             =   630
         Width           =   810
         _Version        =   65536
         _ExtentX        =   1429
         _ExtentY        =   953
         _StockProps     =   78
         ForeColor       =   8388608
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   3
         Picture         =   "COUNTMAP.frx":0EFE
      End
      Begin VB.Label LabelUpdate 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
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
         Height          =   255
         Left            =   150
         TabIndex        =   60
         Top             =   60
         Width           =   4545
      End
      Begin VB.Line Line4 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   6540
         X2              =   6540
         Y1              =   75
         Y2              =   1200
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   6540
         X2              =   4875
         Y1              =   1200
         Y2              =   1200
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00404040&
         BorderWidth     =   2
         X1              =   4860
         X2              =   4860
         Y1              =   1185
         Y2              =   60
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00404040&
         BorderWidth     =   2
         X1              =   4860
         X2              =   6495
         Y1              =   60
         Y2              =   60
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   5640
      Left            =   360
      ScaleHeight     =   5610
      ScaleWidth      =   6480
      TabIndex        =   50
      Top             =   120
      Width           =   6510
      Begin VB.Label CLabel 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H000000C0&
         Caption         =   "CLabel"
         ForeColor       =   &H0000FFFF&
         Height          =   240
         Left            =   -705
         TabIndex        =   58
         Top             =   270
         Width           =   750
      End
      Begin VB.Image Image4 
         Appearance      =   0  'Flat
         Height          =   495
         Left            =   240
         MousePointer    =   10  'Up Arrow
         Top             =   5010
         Width           =   915
      End
      Begin VB.Image Image3 
         Appearance      =   0  'Flat
         Height          =   735
         Left            =   1680
         MousePointer    =   10  'Up Arrow
         Top             =   4560
         Width           =   435
      End
      Begin VB.Image Image2 
         Appearance      =   0  'Flat
         Height          =   555
         Left            =   4440
         MousePointer    =   10  'Up Arrow
         Top             =   3180
         Width           =   1035
      End
      Begin VB.Image Image1 
         Appearance      =   0  'Flat
         Height          =   795
         Left            =   1140
         MousePointer    =   10  'Up Arrow
         Top             =   3720
         Width           =   795
      End
      Begin VB.Image CountryButton 
         Appearance      =   0  'Flat
         Height          =   228
         Index           =   0
         Left            =   444
         MousePointer    =   10  'Up Arrow
         Top             =   732
         Visible         =   0   'False
         Width           =   192
      End
   End
   Begin VB.CommandButton Command9 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Cancel"
      Height          =   1035
      Left            =   6660
      TabIndex        =   43
      Top             =   4980
      Visible         =   0   'False
      Width           =   945
   End
   Begin Threed.SSCommand ComBlitz 
      Height          =   1035
      Left            =   8565
      TabIndex        =   61
      Top             =   4980
      Visible         =   0   'False
      Width           =   915
      _Version        =   65536
      _ExtentX        =   1614
      _ExtentY        =   1826
      _StockProps     =   78
      Caption         =   "Blitz!"
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Font3D          =   3
      Picture         =   "COUNTMAP.frx":1218
   End
   Begin Threed.SSCommand Com_Transfer 
      Height          =   1035
      Left            =   6660
      TabIndex        =   55
      Top             =   4980
      Visible         =   0   'False
      Width           =   1875
      _Version        =   65536
      _ExtentX        =   3307
      _ExtentY        =   1826
      _StockProps     =   78
      Caption         =   "Transfer"
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Font3D          =   3
      Picture         =   "COUNTMAP.frx":1AF2
   End
   Begin Threed.SSCommand Com_Attack 
      Height          =   1035
      Left            =   7605
      TabIndex        =   53
      Top             =   4980
      Visible         =   0   'False
      Width           =   960
      _Version        =   65536
      _ExtentX        =   1693
      _ExtentY        =   1826
      _StockProps     =   78
      Caption         =   "Attack!"
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Font3D          =   3
      Picture         =   "COUNTMAP.frx":2344
   End
   Begin VB.Label Label_Transfer_Inform 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0FFFF&
      Height          =   1035
      Left            =   6660
      TabIndex        =   18
      Top             =   4980
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.Label Label_Attackee_Pop 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6660
      TabIndex        =   14
      Top             =   3960
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.Label Label_Attackee_Capitol 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6660
      TabIndex        =   13
      Top             =   3780
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.Label Label_Attackee_Armies 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6660
      TabIndex        =   12
      Top             =   3600
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Label Label_Attackee_Name 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   6660
      TabIndex        =   11
      Top             =   2820
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.Label Label_Inform 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0FFFF&
      Height          =   315
      Left            =   6660
      TabIndex        =   5
      Top             =   2220
      Visible         =   0   'False
      Width           =   2835
   End
   Begin VB.Label Label_Attacker_Pop 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6660
      TabIndex        =   9
      Top             =   1260
      Width           =   2835
   End
   Begin VB.Label Label_Attacker_Capitol 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6660
      TabIndex        =   8
      Top             =   1080
      Width           =   2835
   End
   Begin VB.Label Label_Attacker_Armies 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H0000FF00&
      Height          =   195
      Left            =   6660
      TabIndex        =   7
      Top             =   900
      Width           =   2055
   End
   Begin VB.Label Label_Attacker_Name 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   315
      Left            =   6660
      TabIndex        =   6
      Top             =   165
      Width           =   2835
   End
End
Attribute VB_Name = "CountMap"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' COUNTMAP.FRM
Option Explicit
Dim m001A As Integer
Dim m001C As Integer

Private Sub Box_Attackables_Click(Index%)
Dim l0046 As Integer
    If gv0260(gv02CC%).M1E9A <> gv03A4% Or CoM_Transfer_Done.Visible = -1 Then
        Beep
        CountMap.Refresh
        If gv0714% = 0 Then
            If CoM_Transfer_Done.Visible = -1 Then
                    gv07DE% = 0
                    gv05A4& = Empire_Query.Left
                    'Empire_Query.Left = Empire_Query.Left - 2000
                    SetCenterOfForm CountMap, Empire_Query
                    Empire_Query.Label1.Caption = "Finish assigning armies to " + gv0214$ + RTrim$(gv0260(gv02CC%).M1E1E) + gv0214$ + "first!"
                    Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
                    Empire_Query.Com_True.Caption = "Okay"
                    Empire_Query.Com_False.Visible = 0
                    Empire_Query.Show
                    Do
                        DoEvents
                        Loop Until gv07DE%
                    If ContMap.Enabled Then CountMap.ComFocus.SetFocus
                Else
                    gv07DE% = 0
                    gv05A4& = Empire_Query.Left
                    Empire_Query.Left = Empire_Query.Left - 2000
                    Empire_Query.Label1.Caption = "You can't attack from " + RTrim$(gv0260(gv02CC%).M1E1E) + "!" + gv0214$ + "The countries you've conquered are" + gv0214$ + "under BIG dots the same color as your FLAG."
                    'Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
                    SetCenterOfForm CountMap, Empire_Query
                    Empire_Query.Com_True.Caption = "Okay"
                    Empire_Query.Com_False.Visible = 0
                    Empire_Query.Show
                    Do
                        DoEvents
                        Loop Until gv07DE%
                    If ContMap.Enabled Then CountMap.ComFocus.SetFocus
                End If
            End If
        Beep
        Exit Sub
        End If
    For l0046% = gv02D2% To 0 Step -1
        Box_Attackables(l0046%).Enabled = 0
        Next
    For l0046% = gv02D2% To 0 Step -1
        Box_Attackables(l0046%).Visible = 0
        Box_Attackables(l0046%).Enabled = -1
        Next
    Box_Attackables(0).Cls
    Box_Attackables(Index).ForeColor = QBColor(15)
    Call sub052C(gv0522%(Index))
    gv02CE% = gv0522%(Index)
    Com_Assign.Visible = 0
    If gv0260(gv02CE%).M1E9A <> gv02D6(gv03A4%).M1EA3 And gv0260(gv02CC%).M1EC2 > 1 Then
        Com_Attack.Visible = -1: Com_Attack.SetFocus
        ComBlitz.Visible = -1
        Command9.Visible = -1
        If m001A% = 0 Then
            CountMap.Refresh
            Screen.MousePointer = 11
            m001A% = 1
            If gv01F6% = 0 Then Call sub02E3("Contnent.mid")
            Screen.MousePointer = 0
            End If
        End If
    If gv0260(gv02CE%).M1E9A = gv02D6(gv03A4%).M1EA3 Then
        Com_Transfer.Visible = -1
        ComTranCancel.Visible = -1
        Com_Transfer.SetFocus
        End If
End Sub

Private Sub Box_Attackables_GotFocus(Index%)
    CountMap.Box_Attackables(Index).Cls
    CountMap.Box_Attackables(Index).ForeColor = QBColor(14)
    CountMap.Box_Attackables(Index).Print RTrim$(gv0260(gv0522%(Index)).M1E1E);
    CountMap.Box_Attackables(Index).Print Tab(21); gv0260(gv0522%(Index)).M1EC2;
    CountMap.Box_Attackables(Index).Line (2200, 0)-(2350, 140), gv0260(gv0522%(Index)).M1ECC, BF
    CountMap.Box_Attackables(Index).Line (2400, 0)-(2550, 140), gv02D6(gv0260(gv0522%(Index)).M1EAC).M1ECC, BF
End Sub

Private Sub Box_Attackables_KeyPress(Index%, KeyAscii As Integer)
    Call Box_Attackables_Click(Index)
End Sub

Private Sub Box_Attackables_LostFocus(Index%)
    CountMap.Box_Attackables(Index).Cls
    CountMap.Box_Attackables(Index).ForeColor = QBColor(15)
    CountMap.Box_Attackables(Index).Print RTrim$(gv0260(gv0522%(Index)).M1E1E);
    CountMap.Box_Attackables(Index).Print Tab(21); gv0260(gv0522%(Index)).M1EC2;
    CountMap.Box_Attackables(Index).Line (2200, 0)-(2350, 140), gv0260(gv0522%(Index)).M1ECC, BF
    CountMap.Box_Attackables(Index).Line (2400, 0)-(2550, 140), gv02D6(gv0260(gv0522%(Index)).M1EAC).M1ECC, BF
End Sub

Private Sub CLabel_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    CLabel.Visible = 0
End Sub

Private Sub Com_Assign_Click()
    gv03E2% = 3
    ComFocus.SetFocus
    Call sub10A8(0)
    Call sub10E0
    Scroll_Armies_Move.SetFocus
End Sub

Private Sub Com_Attack_Click()
Dim l00C4 As String
Dim l00CA As Single
Dim l00D8 As Integer
Dim l00EC As Integer
    If gv051A% Then
            ComFocus.SetFocus
            gv05DC% = 0
            gv051A% = 0
            Com_Attack.Visible = 0
            ComBlitz.Visible = 0
            Command9.Visible = 0
        Else
            Call sub10A8(0)
            Com_Attack.FontItalic = 0
            Com_Attack.Caption = "Retreat"
            ComBlitz.Visible = 0
            gv051A% = 1
            Label_Inform.Caption = "Attacking:"
            Command9.Visible = 0
            If gv0714% Then
                gv0738% = gv0260(gv02CC%).M1EC2
                l00C4$ = gc07EC + gc0844 + gc07E4 + Str$(gv02CE%) + gc07E4 + Str$(gv02CC%) + gc07E4 + gc07E8
                sub0264 "Sending Notice Of Attack...", "Chip:"
                gv0734% = 0
                Call sub0273(l00C4$)
                l00CA! = Timer + (gv0692%)
                Do Until gv0734% Or Timer > l00CA!
                    DoEvents
                    Loop
                If gv0734% = 0 Then
                        sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                        Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                        'ComHotLine.Visible = 0
                        ComHotLine.Enabled = False
                        CountMap.TextWindow.Visible = 0
                        CountMap.LabelUpdate.Visible = 0
                        Call sub03E1(1)
                        Com_To_World_Map.Visible = -1
                        Exit Sub
                    Else
                        sub0264 "Okay.", "Host:"
                    End If
                End If
            CountMap.Refresh
            Do
                Call sub020F(gv02CE%, gv02CC%, l00D8%, gv0520%)
                Call sub0290(0.1)
                Loop While gv051A% And gv0260(gv02CC%).M1EC2 > 1 And l00D8% = 0
            gv05DC% = 0
            If l00D8% = 1 Then
                    Screen.MousePointer = 11
                    ComFocus.SetFocus
                    Com_Attack.Visible = 0
                    ComBlitz.Visible = 0
                    Command9.Visible = 0
                    Label_Transfer_Inform.Visible = -1
                    Label_Transfer_Inform.FontSize = 14
                    Label_Transfer_Inform.Caption = "Success!"
                    If gv0714% Then
                            gv0738% = gv0738% - gv0260(gv02CC%).M1EC2
                            l00C4$ = gc07EC + gc0848 + gc07E4 + Str$(gv02CE%) + gc07E4 + Str$(gv02CC%) + gc07E4 + Str$(gv0260(gv02CE%).M1EC2) + gc07E4 + Str$(gv0260(gv02CC%).M1EC2) + gc07E4 + Str$(gv0738%) + gc07E4 + gc07E8
                            sub0264 "Sending Notice Of Success...", "Chip:"
                            gv0734% = 0
                            Call sub0273(l00C4$)
                            gv0738% = 0
                            l00CA! = Timer + (gv0692%)
                            Do Until gv0734% Or Timer > l00CA!
                                DoEvents
                                Loop
                            If gv0734% = 0 Then
                                    sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                                    Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                                    'ComHotLine.Visible = 0
                                    ComHotLine.Enabled = False
                                    CountMap.TextWindow.Visible = 0
                                    CountMap.LabelUpdate.Visible = 0
                                    Call sub03E1(1)
                                    Com_To_World_Map.Visible = -1
                                    Exit Sub
                                Else
                                    sub0264 "Okay.", "Host:"
                                End If
                        Else
                            Call sub02F3(gv02CE%, gv0260(gv02CE%).M1ECC)
                        End If
                    If gv0594% = 2 Then
                            Call sub110B
                        Else
                            If gv0260(gv02CE%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                                    Call sub110B
                                Else
                                    Call sub111A
                                End If
                        End If
                    Screen.MousePointer = 11
                    Call sub0290(0.5)
                    gv0260(gv02CE%).M1EA3 = gv0260(gv02CC%).M1EA3
                    Label_Transfer_Inform.Caption = ""
                    Label_Transfer_Inform.FontSize = 8.25
                    If gv0594% = 2 Then
                            Label_Transfer_Inform.Caption = RTrim$(gv0260(gv02CE%).M1E1E) + " is yours!  Occupy it with how many armies?"
                        Else
                            If gv0260(gv02CE%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                                    Label_Transfer_Inform.Caption = "The people of " + RTrim$(gv0260(gv02CE%).M1E1E) + " welcome you with open arms!  Occupy it with how many armies?"
                                Else
                                    Label_Transfer_Inform.Caption = "The " + gv03E6$(gv0260(gv02CE%).M1EAC) + "s of " + RTrim$(gv0260(gv02CE%).M1E1E) + " will resist you!  You'll need" + Str$(gv0260(gv02CE%).M1EB8)
                                    Label_Transfer_Inform.Caption = Label_Transfer_Inform.Caption + " armies there to prevent a revolution."
                                End If
                        End If
                    Label_Inform.Caption = "Has Conquered"
                    For l00EC% = gv0256% To (gv0256% + gv0254%) - 1
                        Call sub05AA(l00EC%, gv02D6(gv0260(l00EC%).M1E9A).M1ECC)
                        Next
                    Scroll_Armies_Move.Visible = -1
                    Scroll_Armies_Move.SetFocus
                    CoM_Transfer_Done.Visible = -1
                    gv03E2% = 1: Call sub10E0
                    Call sub052C(gv02CE%)
                    Screen.MousePointer = 0
                Else
                    gv05DC% = 0
                    Screen.MousePointer = 11
                    If gv0714% Then
                        gv0738% = gv0738% - gv0260(gv02CC%).M1EC2
                        l00C4$ = gc07EC + gc084C + gc07E4 + Str$(gv02CE%) + gc07E4 + Str$(gv02CC%) + gc07E4 + Str$(gv0260(gv02CE%).M1EC2) + gc07E4 + Str$(gv0260(gv02CC%).M1EC2) + gc07E4 + Str$(gv0738%) + gc07E4 + gc07E8
                        sub0264 "Sending Notice Of Withdrawel...", "Chip:"
                        gv0734% = 0
                        Call sub0273(l00C4$)
                        gv0738% = 0
                        l00CA! = Timer + (gv0692%)
                        Do Until gv0734% Or Timer > l00CA!
                            DoEvents
                            Loop
                        If gv0734% = 0 Then
                                sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                                Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                                'ComHotLine.Visible = 0
                                ComHotLine.Enabled = False
                                CountMap.TextWindow.Visible = 0
                                CountMap.LabelUpdate.Visible = 0
                                Call sub03E1(1)
                                Com_To_World_Map.Visible = -1
                                Exit Sub
                            Else
                                sub0264 "Okay.", "Host:"
                            End If
                        End If
                    ComFocus.SetFocus
                    Com_Attack.Visible = 0
                    ComBlitz.Visible = 0
                    Command9.Visible = 0
                    Label_Inform.Caption = "Withdraws From"
                    Call sub10A8(-1)
                    If gv0260(gv02CC%).M1EC2 < 2 Then gv02CE% = 0: gv03E2% = 0
                    If gv0260(gv02CC%).M1EC2 > 1 Then
                        Com_Attack.FontItalic = -1
                        Com_Attack.Caption = "Attack!"
                        Com_Attack.Visible = -1
                        ComBlitz.Visible = -1
                        Command9.Visible = -1
                        Com_Attack.SetFocus
                        End If
                    Screen.MousePointer = 0
                End If
            gv051A% = 0
            Com_Attack.FontItalic = -1
            Com_Attack.Caption = "Attack!"
            CountMap.Refresh
        Screen.MousePointer = 0
        End If
    If gv0714% And ContMap.IPPort1.Connected = 0 Then
        Call sub03E1(1)
        Com_To_World_Map.Visible = -1
        End If
End Sub

Private Sub Com_Help_Click()
    Screen.MousePointer = 11
    gv0210% = 3
End Sub

Private Sub Com_To_World_Map_Click()
    ContMap.Enabled = -1
    ContMap.ComFocus.SetFocus
    If gv0714% And ContMap.IPPort1.Connected = 0 Then
        Else
            Call sub03E1(0)
        End If
    If ContMap.IPPort1.Connected Then Call sub04C1("")
End Sub

Private Sub Com_To_World_Map_GotFocus()
Dim l00F8 As Integer
    Screen.MousePointer = 0
    If gv03AC% Then
        gv03AC% = 0
        For l00F8% = gv0256% To (gv0256% + gv0254%) - 1
                Call sub05AA(l00F8%, gv02D6(gv0260(l00F8%).M1E9A).M1ECC)
            Next
        If m001C% Then Call sub1173
        End If
End Sub

Private Sub Com_Transfer_Click()
    gv03E2% = 2
    ComFocus.SetFocus
    Call sub10A8(0)
    Call sub10E0
    Scroll_Armies_Move.SetFocus
End Sub

Private Sub CoM_Transfer_Done_Click()
Dim l00FA As Integer
Dim l00FC As Integer
Dim l0100 As String
Dim l0108 As String
Dim l010A As Single
    ComFocus.SetFocus
    Screen.MousePointer = 11
    CoM_Transfer_Done.Visible = 0
    Scroll_Armies_Move.Visible = 0
    Label_Transfer_Inform.Caption = ""
    Label_Transfer_Inform.Visible = 0
    If gv03E2% = 1 Then
            gv0260(gv02CE%).M1EC2 = gv0260(gv02CE%).M1EC2 + Scroll_Armies_Move.Value
            gv0260(gv02CC%).M1EC2 = gv0260(gv02CC%).M1EC2 - Scroll_Armies_Move.Value
            l00FA% = gv02CC%: l00FC% = gv02CE%
            If gv0714% Then
                gv0738% = gv0738% - gv0260(gv02CC%).M1EC2
                l0100$ = gc0854
                End If
            Label_Inform.Caption = "Shares Borders With:"
            If gv0260(gv02CE%).M1EC2 > gv0260(gv02CC%).M1EC2 And (gv0260(gv02CE%).M1E25 = gv0260(gv02CC%).M1E25) Then
                    gv02CC% = gv02CE%
                    Call sub0405(gv02CC%)
                 Else
                    Call sub0405(gv02CC%)
                 End If
            Box_Attackables(0).SetFocus
            If gv0520% Then
                If gv0714% = 0 Then
                        gv03E2% = 0
                        Call sub03CC
                        Screen.MousePointer = 0
                        Exit Sub
                    Else
                        l0108$ = gc07EC + gc0870 + gc07E4 + Trim$(Str$(gv0554%)) + gc07E4 + Trim$(Str$(gv0556%)) + gc07E4 + gc07E8
                        sub0264 "Surrendering...", "Chip:"
                        gv0734% = 0
                        Call sub0273(l0108$)
                        l010A! = Timer + (gv0692%)
                        Do Until gv0734% Or Timer > l010A!
                            DoEvents
                            Loop
                        If gv0734% = 0 Then
                            Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                            'ComHotLine.Visible = 0
                            ComHotLine.Enabled = False
                            CountMap.TextWindow.Visible = 0
                            CountMap.LabelUpdate.Visible = 0
                            Call sub03E1(1)
                            Com_To_World_Map.Visible = -1
                            Exit Sub
                            End If
                        sub0264 "Okay.", "Host:"
                        ContMap.MousePointer = 0
                        gv0520% = 0
                    End If
                End If
        ElseIf gv03E2% = 2 Then
            gv0260(gv02CE%).M1EC2 = gv0260(gv02CE%).M1EC2 + Scroll_Armies_Move.Value
            gv0260(gv02CC%).M1EC2 = gv0260(gv02CC%).M1EC2 - Scroll_Armies_Move.Value
            l00FA% = gv02CC%: l00FC% = gv02CE%
            If gv0714% Then
                gv0738% = gv0738% - gv0260(gv02CC%).M1EC2
                l0100$ = gc0850
                End If
            Label_Inform.Caption = "Shares Borders With:"
            If gv0260(gv02CE%).M1EC2 > gv0260(gv02CC%).M1EC2 And (gv0260(gv02CE%).M1E25 = gv0260(gv02CC%).M1E25) Then
                    gv02CC% = gv02CE%
                    Call sub0405(gv02CC%)
                 Else
                    Call sub0405(gv02CC%)
                 End If
        Else
            gv0260(gv02CC%).M1EC2 = gv0260(gv02CC%).M1EC2 + Scroll_Armies_Move.Value
            l00FC% = gv02CC%
            gv030C% = gv030C% - Scroll_Armies_Move.Value
            If gv0714% Then
                gv0738% = gv0738% - gv030C%
                l0100$ = gc0858
                End If
            Label_Inform.Caption = "Shares Borders With:"
            Call sub0405(gv02CC%)
        End If
    If gv0714% Then
        Screen.MousePointer = 11
        l0108$ = gc07EC + l0100$ + gc07E4 + Str$(l00FC%) + gc07E4 + Str$(l00FA%) + gc07E4 + Str$(gv0260(l00FC%).M1EC2) + gc07E4 + Str$(gv0260(l00FA%).M1EC2) + gc07E4 + Str$(gv0738%) + gc07E4 + gc07E8
        sub0264 "Sending Notice Of Transfer...", "Chip:"
        gv0734% = 0
        Call sub0273(l0108$)
        l010A! = Timer + (gv0692%)
        Do Until gv0734% Or Timer > l010A!
            DoEvents
            Loop
        If gv0734% = 0 Then
                sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                'ComHotLine.Visible = 0
                ComHotLine.Enabled = False
                CountMap.TextWindow.Visible = 0
                CountMap.LabelUpdate.Visible = 0
                Call sub03E1(1)
                Com_To_World_Map.Visible = -1
                Exit Sub
            Else
                sub0264 "Okay.", "Host:"
            End If
        End If
    Call sub10A8(-1)
    gv02CE% = 0
    gv03E2% = 0
    Call sub10A8(-1)
    If m001C% Then Call sub1173
    Box_Attackables(0).SetFocus
    ContMap.Refresh
    Screen.MousePointer = 0
End Sub

Private Sub ComBlitz_Click()
    gv05DC% = 1
    Call Com_Attack_Click
    gv05DC% = 0
End Sub

Private Sub ComHotLine_Click()
    Screen.MousePointer = 11
    RoomForm.Show
End Sub

Private Sub Command11_Click()
    Call sub089A(11)
    Screen.MousePointer = 0
End Sub

Private Sub Command9_Click()
    If gv051A% Or gv03E2% Then Beep: Exit Sub
    Call sub0405(gv02CC%)
    Box_Attackables(0).SetFocus
End Sub

Private Sub ComTranCancel_Click()
    Com_Transfer.Visible = 0
    ComTranCancel.Visible = 0
    Call sub0405(gv02CC%)
    Box_Attackables(0).SetFocus
End Sub

Private Sub CountryButton_MouseDown(Index%, Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0120 As Integer
Dim l0122 As Integer
    If gv03E2% Or gv051A% Then Beep: Exit Sub
    If gv02CC% = 0 And Button = 2 Then Beep: Exit Sub
    If gv02CC% And Button = 2 Then
        If gv02CC% = gv0256% + Index - 1 Then
            Beep
            End If
        If gv0260(gv02CC%).M1E9A <> gv03A4% Then
            If gv0714% = 0 Then
                gv07DE% = 0
                gv05A4& = Empire_Query.Left
                'Empire_Query.Left = Empire_Query.Left - 2000
                SetCenterOfForm CountMap, Empire_Query
                Empire_Query.Label1.Caption = "You can't transfer from " + RTrim$(gv0260(gv02CC%).M1E1E) + "!" + gv0214$ + "The countries you've conquered are" + gv0214$ + "under BIG dots the same color as your FLAG."
                Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
                Empire_Query.Com_True.Caption = "Okay"
                Empire_Query.Com_False.Visible = 0
                Empire_Query.Show
                Do
                    DoEvents
                    Loop Until gv07DE%
                If CountMap.Enabled Then CountMap.ComFocus.SetFocus
                End If
            Exit Sub
            End If
        If gv0260(gv02CC%).M1E9A = gv0260(gv0256% + Index - 1).M1E9A Then
                For l0120% = gv02D2% To 0 Step -1
                    Box_Attackables(l0120%).Enabled = 0
                    Next
                For l0120% = gv02D2% To 0 Step -1
                    Box_Attackables(l0120%).Visible = 0
                    Box_Attackables(l0120%).Enabled = -1
                    Next
                Box_Attackables(0).Cls
                Call sub052C(gv0256% + Index - 1)
                gv02CE% = gv0256% + Index - 1
                Com_Attack.Visible = 0
                ComBlitz.Visible = 0
                ComBlitz.Visible = 0
                Command9.Visible = 0
                Com_Assign.Visible = 0
                Com_Transfer.Visible = -1
                ComTranCancel.Visible = -1
                Com_Transfer.SetFocus
            Else
                l0122% = -1
                For l0120% = 0 To gv02D2%
                    If (gv0256% + Index - 1) = gv0522%(l0120%) Then
                        l0122% = l0120%: Exit For
                        End If
                    Next
                If l0122% > -1 Then
                        Com_Transfer.Visible = 0
                        ComTranCancel.Visible = 0
                        Call Box_Attackables_Click(l0122%)
                    Else
                        If gv0714% = 0 Then
                            gv07DE% = 0
                            gv05A4& = Empire_Query.Left
                            'Empire_Query.Left = Empire_Query.Left - 2000
                            SetCenterOfForm CountMap, Empire_Query
                            Empire_Query.Label1.Caption = "You can only attack countries that have borders with " + RTrim$(gv0260(gv02CC%).M1E1E) + "!"
                            Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
                            Empire_Query.Com_True.Caption = "Okay"
                            Empire_Query.Com_False.Visible = 0
                            Empire_Query.Show
                            Do
                                DoEvents
                                Loop Until gv07DE%
                            If CountMap.Enabled Then CountMap.ComFocus.SetFocus
                            End If
                    End If
            End If
        Exit Sub
        End If
    gv05A2% = 1
    gv02CC% = gv0256% + Index - 1
    Call sub0405(gv02CC%)
    ComFocus.SetFocus
    CountMap.Refresh
    Box_Attackables(0).SetFocus
End Sub

Private Sub CountryButton_MouseMove(Index%, Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0130 As String
    If gv0260(gv0256% + Index - 1).M1EC2 > 1 Then l0130$ = " Armies" Else l0130$ = " Army"
    CLabel.BackColor = QBColor(4)
    If CountryButton(Index).Left < Picture1.Width / 2 Then
            CLabel.Caption = "<-- " + RTrim$(gv0260(gv0256% + Index - 1).M1E1E) + " -" + Str$(gv0260(gv0256% + Index - 1).M1EC2) + l0130$ + " "
            CLabel.Left = CountryButton(Index).Left + CountryButton(Index).Width + 60
        Else
            CLabel.Caption = " " + RTrim$(gv0260(gv0256% + Index - 1).M1E1E) + " -" + Str$(gv0260(gv0256% + Index - 1).M1EC2) + l0130$ + " -->"
            CLabel.Left = CountryButton(Index).Left - CLabel.Width - 60
        End If
    CLabel.Top = CountryButton(Index).Top - 30
    CLabel.Visible = -1
End Sub

Private Sub Form_Activate()
Dim l014A As Single
Dim l014C As Single
    m001A% = 0
    Screen.MousePointer = 0
    If gv05A0% Then
        Call CountryButton_MouseDown(gv05A0%, 1, 0, l014A!, l014C!)
        gv05A0% = 0
        End If
End Sub

Private Sub Form_Load()
    CountMap.Height = ContMap.Height
    CountMap.Width = ContMap.Width
    If gv020C! = -400 Then
            'CountMap.Left = (Screen.Width - CountMap.Width)
            'CountMap.Top = (Screen.Height - CountMap.Height)
            SetCenterOfForm ContMap, CountMap
            gv020C! = CountMap.Top
            gv0208! = CountMap.Left
        Else
            CountMap.Top = gv020C!
            CountMap.Left = gv0208!
        End If
    sub0610 Date$ + Time$
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If gv07D8% = 0 Then
            Cancel = -1
            Exit Sub
        Else
            gv07D8% = 0
        End If
    If gv020C! <> -400 Then
        gv020C! = CountMap.Top
        gv0208! = CountMap.Left
        End If
    m001C% = 0
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l015E As String
    Select Case CountMap.Caption
        Case "Europe"
            l015E$ = "To North America (Iceland)"
        Case "South America"
            l015E$ = "To North America (Panama)"
        Case "Africa"
            l015E$ = "To Europe (Spain)"
        Case "Asia"
            l015E$ = "To Europe (Ukraine)"
        Case "Australia"
            l015E$ = "To Asia (Indonesia)"
        Case "North America"
            l015E$ = "To Asia (Russia)"
        Case Else
        End Select
    CLabel.BackColor = QBColor(0)
    If Image1.Left + (Image2.Width / 2) < Picture1.Width / 2 Then
            CLabel.Caption = " " + l015E$ + " "
            CLabel.Left = Image1.Left + Image1.Width
        Else
            CLabel.Caption = " " + l015E$ + " "
            CLabel.Left = Image1.Left - CLabel.Width
        End If
    CLabel.Top = Image1.Top
    CLabel.Visible = -1
End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0174 As Integer
    If Button = 1 Then
            Screen.MousePointer = 11
            CLabel.Visible = 0
            gv03AC% = 2
            CountMap.Picture1.Visible = 0
            Call sub03E1(1)
            Select Case CountMap.Caption
                Case "Europe", "South America"
                    gv0254% = 17: gv0256% = 1
                    Call sub04AB("North America", "cont5.bmp", 1)
                Case "Africa", "Asia"
                    gv0254% = 30: gv0256% = 67
                    Call sub04AB("Europe", "cont4.bmp", 1)
                Case "Australia", "North America"
                    gv0254% = 40: gv0256% = 97
                    Call sub04AB("Asia", "cont2.bmp", 1)
                Case Else
                End Select
            CountMap.Picture1.Refresh
            CountMap.Picture1.Visible = -1
            Call sub1279
            Screen.MousePointer = 0
        ElseIf Button = 2 Then
            If gv03E2% Or gv051A% Then Beep: Exit Sub
            If gv02CC% = 0 And Button = 2 Then Beep: Exit Sub
            If gv0260(gv02CC%).M1E9A <> gv03A4% Then Beep: Exit Sub
            Select Case CountMap.Caption
                Case "Europe"
                    l0174% = 1
                Case "South America"
                    l0174% = 4
                Case "Africa"
                    l0174% = 2
                Case "Asia"
                    l0174% = 6
                Case "Australia"
                    l0174% = 2
                Case "North America"
                    l0174% = 4
                Case Else
                End Select
            Call Box_Attackables_Click(l0174%)
        End If
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l017E As String
    Select Case CountMap.Caption
        Case "Europe"
            l017E$ = "To Asia (Russia)"
        Case "Africa"
            l017E$ = "To Asia (Israel)"
        Case "North America"
            l017E$ = "To Europe (Ireland)"
        Case "South America"
            l017E$ = "To Africa (Liberia)"
        Case "Asia"
            l017E$ = "To North America (United States)"
        Case "Australia"
            l017E$ = "To South America (Chile)"
        Case Else
        End Select
    CLabel.BackColor = QBColor(0)
    If Image2.Left + (Image2.Width / 2) < Picture1.Width / 2 Then
            CLabel.Caption = " " + l017E$ + " "
            CLabel.Left = Image2.Left + Image2.Width
        Else
            CLabel.Caption = " " + l017E$ + " "
            CLabel.Left = Image2.Left - CLabel.Width
        End If
    CLabel.Top = Image2.Top
    CLabel.Visible = -1
End Sub

Private Sub Image2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0188 As Integer
    If Button = 1 Then
            Screen.MousePointer = 11
            CLabel.Visible = 0
            gv03AC% = 2
            CountMap.Picture1.Visible = 0
            Call sub03E1(1)
            Select Case CountMap.Caption
                Case "Europe", "Africa"
                    gv0254% = 40: gv0256% = 97
                    Call sub04AB("Asia", "cont2.bmp", 1)
                Case "North America"
                    gv0254% = 30: gv0256% = 67
                    Call sub04AB("Europe", "cont4.bmp", 1)
                Case "South America"
                    gv0254% = 36: gv0256% = 31
                    Call sub04AB("Africa", "cont1.bmp", 1)
                Case "Asia"
                    gv0254% = 17: gv0256% = 1
                    Call sub04AB("North America", "cont5.bmp", 1)
                Case "Australia"
                    gv0254% = 13: gv0256% = 18
                    Call sub04AB("South America", "cont6.bmp", 1)
                Case Else
                End Select
            CountMap.Picture1.Refresh
            CountMap.Picture1.Visible = -1
            Call sub1279
            Screen.MousePointer = 0
        ElseIf Button = 2 Then
            If gv03E2% Or gv051A% Then Beep: Exit Sub
            If gv02CC% = 0 And Button = 2 Then Beep: Exit Sub
            If gv0260(gv02CC%).M1E9A <> gv03A4% Then Beep: Exit Sub
            Select Case CountMap.Caption
                Case "Europe"
                    l0188% = 6
                Case "Africa"
                    l0188% = 2
                Case "North America"
                    l0188% = 1
                Case "South America"
                    l0188% = 10
                Case "Asia"
                    l0188% = 7
                Case "Australia"
                    l0188% = 2
                Case Else
                End Select
            Call Box_Attackables_Click(l0188%)
        End If
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0192 As String
    Select Case CountMap.Caption
        Case "Europe"
            l0192$ = "To Africa (Morocco)"
        Case "North America"
            l0192$ = "To South America (Colombia)"
        Case "Africa"
            l0192$ = "To South America (Brazil)"
        Case "Asia"
            l0192$ = "To Australia"
        Case "South America"
            l0192$ = "To Australia (New Zealand)"
        Case Else
        End Select
    CLabel.BackColor = QBColor(0)
    If Image3.Left + (Image2.Width / 2) < Picture1.Width / 2 Then
            CLabel.Caption = " " + l0192$ + " "
            CLabel.Left = Image3.Left + Image3.Width
        Else
            CLabel.Caption = " " + l0192$ + " "
            CLabel.Left = Image3.Left - CLabel.Width
        End If
    CLabel.Top = Image3.Top
    CLabel.Visible = -1
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l01A2 As Integer
    If Button = 1 Then
            Screen.MousePointer = 11
            CLabel.Visible = 0
            gv03AC% = 2
            CountMap.Picture1.Visible = 0
            Call sub03E1(1)
            Select Case CountMap.Caption
                Case "Europe"
                    gv0254% = 36: gv0256% = 31
                    Call sub04AB("Africa", "cont1.bmp", 1)
                Case "North America", "Africa"
                    gv0254% = 13: gv0256% = 18
                    Call sub04AB("South America", "cont6.bmp", 1)
                Case "Asia", "South America"
                    gv0254% = 3: gv0256% = 137
                    Call sub04AB("Australia", "cont3.bmp", 1)
                Case Else
                End Select
            CountMap.Picture1.Refresh
            CountMap.Picture1.Visible = -1
            Call sub1279
            Screen.MousePointer = 0
        ElseIf Button = 2 Then
            If gv03E2% Or gv051A% Then Beep: Exit Sub
            If gv02CC% = 0 And Button = 2 Then Beep: Exit Sub
            If gv0260(gv02CC%).M1E9A <> gv03A4% Then Beep: Exit Sub
            Select Case CountMap.Caption
                Case "Europe"
                    l01A2% = 2
                Case "North America"
                    l01A2% = 1
                Case "Africa"
                    l01A2% = 3
                Case "Asia"
                    l01A2% = 3
                Case "South America"
                    l01A2% = 3
                Case Else
                End Select
            Call Box_Attackables_Click(l01A2%)
        End If
End Sub

Private Sub Image4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l01AC As String
    Select Case CountMap.Caption
        Case "Asia"
            l01AC$ = "To Africa (Egypt)"
        Case Else
        End Select
    CLabel.BackColor = QBColor(0)
    If Image4.Left + (Image2.Width / 2) < Picture1.Width / 2 Then
            CLabel.Caption = " " + l01AC$ + " "
            CLabel.Left = Image4.Left + Image4.Width
        Else
            CLabel.Caption = " " + l01AC$ + " "
            CLabel.Left = Image4.Left - CLabel.Width
        End If
    CLabel.Top = Image4.Top
    CLabel.Visible = -1
End Sub

Private Sub Image4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l01BC As Integer
    If Button = 1 Then
            Screen.MousePointer = 11
            CLabel.Visible = 0
            gv03AC% = 2
            CountMap.Picture1.Visible = 0
            Call sub03E1(1)
            Select Case CountMap.Caption
                Case "Asia"
                    gv0254% = 36: gv0256% = 31
                    Call sub04AB("Africa", "cont1.bmp", 1)
                Case Else
                End Select
            CountMap.Picture1.Refresh
            CountMap.Picture1.Visible = -1
            Call sub1279
            Screen.MousePointer = 0
        ElseIf Button = 2 Then
            Select Case CountMap.Caption
                Case "Asia"
                    l01BC% = 4
                Case Else
                End Select
            Call Box_Attackables_Click(l01BC%)
        End If
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    CLabel.Visible = 0
End Sub

Private Sub Scroll_Armies_Move_Change()
    If gv03E2% < 3 Then
            CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CE%).M1EC2 + Scroll_Armies_Move.Value)
            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CC%).M1EC2 - Scroll_Armies_Move.Value)
        Else
            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CC%).M1EC2 + Scroll_Armies_Move.Value)
            Label_Inform.Caption = "New Armies:" + Str$(gv030C% - Scroll_Armies_Move.Value)
        End If
End Sub

Private Sub sub10A8(p0092 As Integer)
    CountMap.Com_To_World_Map.Visible = p0092%
    CountMap.Command11.Visible = p0092%
    CountMap.Image1.Visible = p0092%
    CountMap.Image2.Visible = p0092%
    CountMap.Image3.Visible = p0092%
    CountMap.Image4.Visible = p0092%
End Sub

Private Sub sub10E0()
    If gv03E2% = 1 Then
            Scroll_Armies_Move.Visible = -1
            Scroll_Armies_Move.Min = 0
            Scroll_Armies_Move.Value = 0
            gv0738% = gv0260(gv02CC%).M1EC2
            gv0260(gv02CE%).M1EC2 = gv0260(gv02CE%).M1EC2 + 1
            gv0260(gv02CC%).M1EC2 = gv0260(gv02CC%).M1EC2 - 1
            Scroll_Armies_Move.Max = gv0260(gv02CC%).M1EC2 - 1
            If gv0260(gv02CE%).M1EC2 + Scroll_Armies_Move.Max > 99 Then
                Scroll_Armies_Move.Max = (99 - gv0260(gv02CE%).M1EC2)
                End If
            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CC%).M1EC2)
            CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CE%).M1EC2)
            Scroll_Armies_Move.SmallChange = 1
            Scroll_Armies_Move.LargeChange = (gv0260(gv02CC%).M1EC2 / 5) + 1
        ElseIf gv03E2% = 2 Then
            Com_Transfer.Visible = 0
            ComTranCancel.Visible = 0
            Label_Transfer_Inform.Visible = -1
            Label_Transfer_Inform.Caption = "Transfer how many armies General " + RTrim$(gv02D6(gv03A4%).M1E1E) + "?"
            CoM_Transfer_Done.Visible = -1
            Label_Inform.Caption = "Transferring To:"
            Scroll_Armies_Move.Visible = -1
            Scroll_Armies_Move.Value = 0
            Scroll_Armies_Move.Min = 0
            Scroll_Armies_Move.Max = gv0260(gv02CC%).M1EC2 - 1
            If gv0260(gv02CE%).M1EC2 + Scroll_Armies_Move.Max > 99 Then
                Scroll_Armies_Move.Max = (99 - gv0260(gv02CE%).M1EC2)
                End If
            gv0738% = gv0260(gv02CC%).M1EC2
            CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CE%).M1EC2)
            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CC%).M1EC2)
            Scroll_Armies_Move.SmallChange = 1
            Scroll_Armies_Move.LargeChange = ((gv0260(gv02CC%).M1EC2) / 5) + 1
        Else
            Com_Assign.Visible = 0
            Label_Transfer_Inform.Visible = -1
            Label_Transfer_Inform.Caption = "Assign how many armies General " + RTrim$(gv02D6(gv03A4%).M1E1E) + "?"
            Scroll_Armies_Move.Visible = -1
            CoM_Transfer_Done.Visible = -1
            Scroll_Armies_Move.Min = 0
            Scroll_Armies_Move.Value = 0
            Scroll_Armies_Move.Max = gv030C%
            If gv0260(gv02CC%).M1EC2 + Scroll_Armies_Move.Max > 99 Then
                Scroll_Armies_Move.Max = (99 - gv0260(gv02CC%).M1EC2)
                End If
            gv0738% = gv030C%
            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(gv02CC%).M1EC2)
            Label_Inform.Caption = "New Armies:" + Str$(gv030C%)
            Scroll_Armies_Move.SmallChange = 1
            Scroll_Armies_Move.LargeChange = (gv030C% / 5) + 1
        End If
End Sub

Private Sub sub110B()
Dim l01CA As Integer
    Screen.MousePointer = 11
    l01CA% = fn0601%(1, 4)
    If gv01F6% = 0 Then Call sub02E3("win" + LTrim$(Str$(l01CA%)) + ".mid")
    Screen.MousePointer = 0
End Sub

Private Sub sub111A()
Dim l01C8 As Integer
    Screen.MousePointer = 11
    l01C8% = fn0601%(1, 3)
    If gv01F6% = 0 Then Call sub02E3("unfrnd" + LTrim$(Str$(l01C8%)) + ".mid")
    Screen.MousePointer = 0
End Sub

Private Sub sub1173()
Dim l01D4 As Integer
Dim l01D6 As Single
Dim l01DA As Integer
Dim l01DC As Integer
Dim l01DE As Integer
Dim l01E0 As Single
Dim l01E2 As Single
    l01D4% = FreeFile
    l01D6! = CountMap.Picture1.ScaleMode
    CountMap.Picture1.ScaleMode = 3
    Open AppResc$ + "\" + "tomCoord.vbl" For Random As l01D4% Len = 4
    l01DA% = (gv0256% * 2) - 2: l01DC% = l01DA%
    For l01DE% = 1 To gv0254%
        l01DA% = l01DA% + 1
        Get l01D4%, l01DA%, l01E0!
        l01E0! = l01E0! / 15
        l01E0! = l01E0! - 2
        l01DA% = l01DA% + 1
        Get l01D4%, l01DA%, l01E2!
        l01E2! = l01E2! / 15
        CountMap.Picture1.CurrentX = l01E2!
        CountMap.Picture1.CurrentY = l01E0!
        CountMap.Picture1.ForeColor = QBColor(0)
        CountMap.Picture1.Line (l01E2!, l01E0!)-(l01E2! + 18, l01E0! + 13), QBColor(0), BF
        CountMap.Picture1.CurrentX = l01E2! - 3
        CountMap.Picture1.CurrentY = l01E0!
        CountMap.Picture1.ForeColor = gv02D6(gv0260(gv0256% + l01DE% - 1).M1EAC).M1ECC
        CountMap.Picture1.Print gv0260(gv0256% + l01DE% - 1).M1EC2
        Next
    CountMap.Picture1.ScaleMode = l01D6!
    Close l01D4%
End Sub

Private Sub sub1279()
Dim l01CC As Integer
Dim l01CE As Integer
Dim l01D0 As Single
Dim l01D2 As Single
    Screen.MousePointer = 0
    If gv03AC% Then
        gv03AC% = 0
        For l01CC% = gv0256% To (gv0256% + gv0254%) - 1
                Call sub05AA(l01CC%, gv02D6(gv0260(l01CC%).M1E9A).M1ECC)
            Next
        If m001C% Then Call sub1173
        End If
    gv05A0% = 0
    For l01CC% = 1 To gv0254%
        If gv0260(gv0256% + l01CC% - 1).M1EC2 > l01CE% And gv0260(gv0256% + l01CC% - 1).M1E9A = gv02D6(gv03A4%).M1EA3 Then
            l01CE% = gv0260(gv0256% + l01CC% - 1).M1EC2
            gv05A0% = l01CC%
            End If
        Next
    If gv05A0% Then
        Call CountryButton_MouseDown(gv05A0%, 1, 0, l01D0!, l01D2!)
        End If
End Sub

