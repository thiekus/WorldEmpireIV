VERSION 4.00
Begin VB.Form ContMap 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "World Empire IV v3.0"
   ClientHeight    =   6570
   ClientLeft      =   1275
   ClientTop       =   2160
   ClientWidth     =   9570
   BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
      Name            =   "Times New Roman"
      Size            =   6
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   7455
   Icon            =   "CONTMP16.frx":0000
   KeyPreview      =   -1  'True
   Left            =   1155
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   438
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   638
   Top             =   1395
   Width           =   9810
   Begin VB.CommandButton ComFocus 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "ComFocus"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   9750
      TabIndex        =   42
      Top             =   4290
      Width           =   210
   End
   Begin VB.PictureBox PicNetwork 
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
      Height          =   510
      Left            =   9810
      Picture         =   "CONTMP16.frx":030A
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   37
      Top             =   1545
      Width           =   510
   End
   Begin VB.PictureBox PicLocal 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   435
      Left            =   9795
      Picture         =   "CONTMP16.frx":074C
      ScaleHeight     =   405
      ScaleWidth      =   300
      TabIndex        =   36
      Top             =   960
      Width           =   330
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   9480
      Top             =   2340
   End
   Begin VB.PictureBox LArrowShad 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   360
      Left            =   3270
      Picture         =   "CONTMP16.frx":0A56
      ScaleHeight     =   330
      ScaleWidth      =   300
      TabIndex        =   27
      TabStop         =   0   'False
      Top             =   -120
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.PictureBox RArrowShad 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   360
      Left            =   5070
      Picture         =   "CONTMP16.frx":1050
      ScaleHeight     =   330
      ScaleWidth      =   300
      TabIndex        =   26
      TabStop         =   0   'False
      Top             =   -90
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.PictureBox Picture7 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
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
      Height          =   5625
      Left            =   -60
      ScaleHeight     =   5625
      ScaleWidth      =   165
      TabIndex        =   25
      Top             =   -30
      Width           =   165
   End
   Begin VB.PictureBox Picture6 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   360
      Left            =   4710
      Picture         =   "CONTMP16.frx":164A
      ScaleHeight     =   330
      ScaleWidth      =   300
      TabIndex        =   21
      TabStop         =   0   'False
      Top             =   -60
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   360
      Left            =   4320
      Picture         =   "CONTMP16.frx":1C34
      ScaleHeight     =   330
      ScaleWidth      =   300
      TabIndex        =   20
      TabStop         =   0   'False
      Top             =   0
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   360
      Left            =   3960
      Picture         =   "CONTMP16.frx":221E
      ScaleHeight     =   330
      ScaleWidth      =   300
      TabIndex        =   19
      TabStop         =   0   'False
      Top             =   -30
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
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
      Height          =   360
      Left            =   3600
      Picture         =   "CONTMP16.frx":2808
      ScaleHeight     =   330
      ScaleWidth      =   300
      TabIndex        =   18
      TabStop         =   0   'False
      Top             =   0
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Frame Frame_Info 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   4935
      Left            =   1800
      TabIndex        =   1
      Top             =   420
      Visible         =   0   'False
      Width           =   4815
      Begin VB.CommandButton Command14 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Okay"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1485
         TabIndex        =   17
         Top             =   4320
         Visible         =   0   'False
         Width           =   1890
      End
      Begin VB.CommandButton Command8 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "Okay"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1395
         TabIndex        =   8
         Top             =   4350
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.PictureBox Box_Revolt 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
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
         Height          =   2340
         Left            =   900
         Picture         =   "CONTMP16.frx":2DF2
         ScaleHeight     =   2340
         ScaleWidth      =   2910
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   1560
         Visible         =   0   'False
         Width           =   2910
      End
      Begin VB.Label Label_Revolt 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   1755
         Left            =   600
         TabIndex        =   11
         Top             =   360
         Visible         =   0   'False
         Width           =   3555
      End
      Begin VB.Line Line16 
         BorderColor     =   &H00404040&
         BorderWidth     =   2
         X1              =   4800
         X2              =   4800
         Y1              =   150
         Y2              =   4950
      End
      Begin VB.Line Line15 
         BorderColor     =   &H00404040&
         BorderWidth     =   2
         X1              =   30
         X2              =   4800
         Y1              =   4920
         Y2              =   4920
      End
      Begin VB.Line Line14 
         BorderColor     =   &H00E0FFFF&
         X1              =   4770
         X2              =   30
         Y1              =   120
         Y2              =   120
      End
      Begin VB.Line Line13 
         BorderColor     =   &H00E0FFFF&
         X1              =   30
         X2              =   30
         Y1              =   4920
         Y2              =   120
      End
      Begin VB.Label Label12 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   0
         Left            =   3720
         TabIndex        =   7
         Top             =   1440
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label Label11 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   0
         Left            =   480
         TabIndex        =   6
         Top             =   1440
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.Label Label10 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3750
         TabIndex        =   5
         Top             =   1080
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label Label9 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2895
         TabIndex        =   4
         Top             =   1080
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Label Label8 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Label13"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   480
         TabIndex        =   3
         Top             =   1080
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.Label Label13 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         TabIndex        =   9
         Top             =   720
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   600
         Left            =   240
         TabIndex        =   2
         Top             =   165
         Visible         =   0   'False
         Width           =   4335
      End
   End
   Begin VB.PictureBox Picture8 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
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
      Height          =   6675
      Left            =   8295
      ScaleHeight     =   6675
      ScaleWidth      =   1350
      TabIndex        =   22
      Top             =   0
      Width           =   1350
      Begin VB.PictureBox Picture3 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
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
         Height          =   1185
         Left            =   75
         ScaleHeight     =   1185
         ScaleWidth      =   1095
         TabIndex        =   38
         Top             =   45
         Width           =   1095
         Begin VB.PictureBox Box_WhoseTurn 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            Enabled         =   0   'False
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
            Height          =   1200
            Left            =   -15
            Picture         =   "CONTMP16.frx":A9A4
            ScaleHeight     =   1200
            ScaleWidth      =   1110
            TabIndex        =   40
            TabStop         =   0   'False
            Top             =   -15
            Visible         =   0   'False
            Width           =   1110
         End
      End
      Begin Threed.SSCommand ComWeb 
         Height          =   900
         Left            =   105
         TabIndex        =   41
         Top             =   4635
         Visible         =   0   'False
         Width           =   1050
         _Version        =   65536
         _ExtentX        =   1852
         _ExtentY        =   1588
         _StockProps     =   78
         Caption         =   "WWW"
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
         Font3D          =   3
         MousePointer    =   1
         Picture         =   "CONTMP16.frx":C5A6
      End
      Begin Threed.SSCommand ComHotLine 
         Height          =   825
         Left            =   45
         TabIndex        =   39
         Top             =   5700
         Visible         =   0   'False
         Width           =   1170
         _Version        =   65536
         _ExtentX        =   2064
         _ExtentY        =   1455
         _StockProps     =   78
         Caption         =   "- Hot Line -"
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
         Font3D          =   3
         MousePointer    =   1
         Picture         =   "CONTMP16.frx":C8C0
      End
      Begin Threed.SSCommand ComMode 
         Height          =   900
         Left            =   105
         TabIndex        =   35
         Top             =   1860
         Width           =   1050
         _Version        =   65536
         _ExtentX        =   1852
         _ExtentY        =   1588
         _StockProps     =   78
         Caption         =   "&Local"
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
         Font3D          =   3
         Picture         =   "CONTMP16.frx":D19A
      End
      Begin Threed.SSCommand Button_Blitz 
         Height          =   900
         Left            =   105
         TabIndex        =   31
         Top             =   4635
         Width           =   1050
         _Version        =   65536
         _ExtentX        =   1852
         _ExtentY        =   1588
         _StockProps     =   78
         Caption         =   "Blitz Off"
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
         Font3D          =   3
         Picture         =   "CONTMP16.frx":D4B4
      End
      Begin Threed.SSCommand Command1 
         Height          =   435
         Left            =   45
         TabIndex        =   30
         Top             =   1320
         Width           =   1155
         _Version        =   65536
         _ExtentX        =   2037
         _ExtentY        =   767
         _StockProps     =   78
         Caption         =   "Pass"
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
      End
      Begin Threed.SSCommand Image_Help 
         Height          =   885
         Left            =   105
         TabIndex        =   29
         Top             =   2790
         Width           =   1050
         _Version        =   65536
         _ExtentX        =   1852
         _ExtentY        =   1561
         _StockProps     =   78
         Caption         =   "&Help"
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
         Font3D          =   3
         Picture         =   "CONTMP16.frx":D7CE
      End
      Begin Threed.SSCommand Image_Surrend 
         Height          =   900
         Left            =   105
         TabIndex        =   28
         Top             =   3705
         Width           =   1050
         _Version        =   65536
         _ExtentX        =   1852
         _ExtentY        =   1588
         _StockProps     =   78
         Caption         =   "&Surrender"
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
         Font3D          =   3
         Picture         =   "CONTMP16.frx":DAE8
      End
      Begin VB.Line Line12 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   1200
         X2              =   1200
         Y1              =   1260
         Y2              =   30
      End
      Begin VB.Line Line11 
         BorderWidth     =   2
         X1              =   60
         X2              =   1200
         Y1              =   30
         Y2              =   30
      End
      Begin VB.Line Line10 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   1170
         X2              =   60
         Y1              =   1260
         Y2              =   1260
      End
      Begin VB.Line Line9 
         BorderWidth     =   2
         X1              =   60
         X2              =   60
         Y1              =   30
         Y2              =   1260
      End
      Begin VB.Line Line4 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   60
         X2              =   1200
         Y1              =   5580
         Y2              =   5580
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   1200
         X2              =   1200
         Y1              =   5580
         Y2              =   1800
      End
      Begin VB.Line Line2 
         BorderWidth     =   2
         X1              =   1200
         X2              =   60
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   60
         X2              =   60
         Y1              =   1800
         Y2              =   5580
      End
   End
   Begin VB.PictureBox Picture1 
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
      Height          =   5580
      Left            =   180
      ScaleHeight     =   370
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   544
      TabIndex        =   0
      Top             =   0
      Width           =   8190
      Begin VB.PictureBox PicFlag 
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
         Height          =   495
         Left            =   7200
         Picture         =   "CONTMP16.frx":DE02
         ScaleHeight     =   465
         ScaleWidth      =   720
         TabIndex        =   43
         Top             =   240
         Visible         =   0   'False
         Width           =   750
      End
      Begin VBX.IPPORT IPPort2 
         Left            =   0
         Top             =   1440
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
      Begin VBX.IPPORT IPPort1 
         Left            =   0
         Top             =   840
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
      Begin VBX.IPDAEMON IPD1 
         Left            =   0
         Top             =   240
         KeepAlive       =   0   'False
         Linger          =   -1  'True
         LocalPort       =   0
      End
      Begin VB.Label Label_Comp_Mode 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   288
         Left            =   -12
         TabIndex        =   12
         Top             =   4704
         Visible         =   0   'False
         Width           =   8100
      End
      Begin VB.Label Label_Comp_Attackee 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
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
         Height          =   255
         Left            =   2265
         TabIndex        =   13
         Top             =   4950
         Visible         =   0   'False
         Width           =   2895
      End
      Begin VB.Label Label_Attackee_Armies 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
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
         Height          =   255
         Left            =   5100
         TabIndex        =   14
         Top             =   4950
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label Label_Comp_Attacker 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
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
         Height          =   255
         Left            =   2250
         TabIndex        =   15
         Top             =   5160
         Visible         =   0   'False
         Width           =   2895
      End
      Begin VB.Label Label_Attacker_Armies 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
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
         Height          =   255
         Left            =   5100
         TabIndex        =   16
         Top             =   5160
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
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
         Height          =   672
         Left            =   0
         TabIndex        =   24
         Top             =   180
         Width           =   8124
      End
      Begin VB.Image Command2 
         Appearance      =   0  'Flat
         Height          =   2460
         Left            =   756
         MousePointer    =   10  'Up Arrow
         Top             =   528
         Width           =   1956
      End
      Begin VB.Image Command7 
         Appearance      =   0  'Flat
         Height          =   1035
         Left            =   6240
         MousePointer    =   10  'Up Arrow
         Top             =   4170
         Width           =   1515
      End
      Begin VB.Image Command6 
         Appearance      =   0  'Flat
         Height          =   3165
         Left            =   4125
         MousePointer    =   10  'Up Arrow
         Top             =   1035
         Width           =   3510
      End
      Begin VB.Image Command5 
         Appearance      =   0  'Flat
         Height          =   1155
         Left            =   3135
         MousePointer    =   10  'Up Arrow
         Top             =   1515
         Width           =   810
      End
      Begin VB.Image Command4 
         Appearance      =   0  'Flat
         Height          =   1770
         Left            =   2955
         MousePointer    =   10  'Up Arrow
         Top             =   2730
         Width           =   1275
      End
      Begin VB.Image Command3 
         Appearance      =   0  'Flat
         Height          =   1830
         Left            =   1485
         MousePointer    =   10  'Up Arrow
         Top             =   3300
         Width           =   1365
      End
   End
   Begin VB.PictureBox Picture9 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
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
      Height          =   1335
      Left            =   0
      ScaleHeight     =   1335
      ScaleWidth      =   8355
      TabIndex        =   23
      Top             =   5580
      Width           =   8355
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
         Height          =   810
         Left            =   165
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   34
         Top             =   105
         Visible         =   0   'False
         Width           =   5205
      End
      Begin Threed.SSCommand ComConnect 
         Height          =   825
         Left            =   5490
         TabIndex        =   33
         Top             =   105
         Visible         =   0   'False
         Width           =   1380
         _Version        =   65536
         _ExtentX        =   2434
         _ExtentY        =   1455
         _StockProps     =   78
         Caption         =   "Connect To Host"
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
         Font3D          =   3
         MousePointer    =   1
         Picture         =   "CONTMP16.frx":E814
      End
      Begin Threed.SSCommand ComHost 
         Height          =   825
         Left            =   6885
         TabIndex        =   32
         Top             =   105
         Visible         =   0   'False
         Width           =   1350
         _Version        =   65536
         _ExtentX        =   2381
         _ExtentY        =   1455
         _StockProps     =   78
         Caption         =   "Host A War"
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
         Font3D          =   3
         Picture         =   "CONTMP16.frx":F0EE
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         X1              =   5480
         X2              =   8220
         Y1              =   75
         Y2              =   75
      End
      Begin VB.Line Line8 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   8250
         X2              =   8250
         Y1              =   90
         Y2              =   960
      End
      Begin VB.Line Line7 
         BorderWidth     =   2
         X1              =   5480
         X2              =   5480
         Y1              =   90
         Y2              =   930
      End
      Begin VB.Line Line6 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         X1              =   5480
         X2              =   8220
         Y1              =   960
         Y2              =   960
      End
   End
   Begin VB.Image Image3 
      Appearance      =   0  'Flat
      Height          =   435
      Left            =   0
      Top             =   0
      Width           =   465
   End
   Begin VB.Menu MenuFile 
      Caption         =   "&Game"
      Begin VB.Menu MenuFileNew 
         Caption         =   "&New Game"
      End
      Begin VB.Menu div5 
         Caption         =   "-"
      End
      Begin VB.Menu MenuFileSave 
         Caption         =   "&Save Game"
      End
      Begin VB.Menu MenuFileLoad 
         Caption         =   "&Load Game"
      End
      Begin VB.Menu div2 
         Caption         =   "-"
      End
      Begin VB.Menu MenuFileSetup 
         Caption         =   "Game &Setup..."
      End
      Begin VB.Menu MenuFileSound 
         Caption         =   "S&ound "
      End
      Begin VB.Menu MenuFileMusic 
         Caption         =   "&Music"
      End
      Begin VB.Menu MenuFileScores 
         Caption         =   "&High Scores"
      End
      Begin VB.Menu div1 
         Caption         =   "-"
      End
      Begin VB.Menu MenuFileExit 
         Caption         =   "E&xit Game"
      End
   End
   Begin VB.Menu MenuInternet 
      Caption         =   "&Internet"
      Visible         =   0   'False
      Begin VB.Menu MenuInternetConnect 
         Caption         =   "&Connect To Host"
      End
      Begin VB.Menu MenuInternetHost 
         Caption         =   "&Host A Game"
      End
      Begin VB.Menu MenuInternetStatus 
         Caption         =   "Host &Setup"
      End
   End
   Begin VB.Menu MenuHelp 
      Caption         =   "&Help"
      Begin VB.Menu MenuHelpContents 
         Caption         =   "&Contents"
      End
      Begin VB.Menu div3 
         Caption         =   "-"
      End
      Begin VB.Menu MenuHelpAbout 
         Caption         =   "&About"
      End
      Begin VB.Menu MenuHelpContact 
         Caption         =   "Contact &Information"
      End
      Begin VB.Menu MenuHelpBenefits 
         Caption         =   "&Registration Benefits"
      End
      Begin VB.Menu MenuHelpOrder 
         Caption         =   "&Order Form"
      End
   End
End
Attribute VB_Name = "ContMap"
Attribute VB_Creatable = False
Attribute VB_Exposed = False

' CONTMAP.FRM
Option Explicit
Const m00BA = 0 ' &H0%
Const mc0162 = 5 ' &H5%
Const m02B6 = 0 ' &H0%
Const mc02F2 = 2 ' &H2%

Private Sub Button_Blitz_Click()
    If gv055C% = 0 Then gv055C% = 1: Button_Blitz.Caption = "Blitz On" Else gv055C% = 0: Button_Blitz.Caption = "Blitz Off"
End Sub

Private Sub Button_Blitz_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "Blitzkrieg Mode - Speeds up computer play"
End Sub

Private Sub ComConnect_Click()
Dim l0058 As Integer
Dim l006E As Single
Dim l0070 As String
Dim l0072 As String
Dim l0074 As String
Dim l0076 As String
Dim l0078 As String
Dim l0084 As String
Dim l0094 As Integer
Dim l0096 As String
    On Error Resume Next
    Screen.MousePointer = 11
    If IPPort1.Connected Then
           If gv025C% Then
                Call sub0543
                If Not gv024E Then Exit Sub
                End If
            ContMap.Refresh
            Screen.MousePointer = 11
            ComConnect.Enabled = 0
            sub0264 "Disconnecting...", "Chip:"
            IPPort1.Linger = 0
            IPPort1.Connected = 0
            If IPD1.Listening Then
                gv0736% = 0
                For l0058% = 1 To 32
                    If IPD1.Connected(l0058%) Then
                        IPD1.Connected(l0058%) = 0
                        End If
                    Next
                sub0264 "Shutting Down Host...", "Chip:"
                IPD1.Listening = 0
                End If
            ComHotLine.Visible = 0
            ComWeb.Visible = 0
            gv0710% = 0
            gv071A% = 0
            Unload RoomForm
            l006E! = Timer + 2
            Do While Timer < l006E!
                Loop
            gv025C% = 0
            Call sub057B
            Call sub0496(0)
            Call sub02AB(0)
            l0070$ = ""
            l0072$ = ""
            l0074$ = ""
            l0076$ = ""
            l0078$ = ""
            Call sub0253(l0070$, l0072$, l0074$, l0076$, l0078$)
            sub0264 "Goodbye, " + Trim$(gv06A4$), "Chip:"
            ComConnect.Caption = "Connect To Host"
            GoSub L18CF6
        Else
            If gv071A% = 0 Then
                gv0718% = 2
                If gv01F6% = 0 Then Call sub02E3("newgame.mid")
                CyberGameForm.Show 1
                If gv0718% = 0 Then
                    GoSub L18CF6
                    Exit Sub
                    End If
                End If
            Screen.MousePointer = 11
            #If Win32 Then
            IPPort1.RemoteHost = IPPort1.LocalHost
            l0084$ = IPPort1.RemoteHost
            #Else
            IPPort1.HostName = IPPort1.LocalHostName
            l0084$ = IPPort1.HostAddress
            #End If
            If l0084$ = "0.0.0.0" Or Err <> 0 Then
                    MsgBox "Can't Initialize.  Not Connected"
                    TextWindow.Text = ""
                    GoSub L18CF6
                    Exit Sub
                Else
                End If
            ComConnect.Enabled = 0
            ComHost.Enabled = 0
            If Trim$(gv06B0$) = "" Then
                MsgBox "Can't Connect.  Invalid Host Name Or Address"
                GoSub L18CF6
                Exit Sub
                End If
            If Trim$(gv06A4$) = "" Then
                MsgBox "Can't Connect.  No Name Was Entered."
                GoSub L18CF6
                Exit Sub
                End If
            l006E! = Timer + 1
            Do Until Timer > l006E!
                DoEvents
                Loop
            If gv071A% Then
                    sub0264 "Connecting To Host...", "Chip:"
                Else
                    sub0264 "Looking Up Host...", "Chip:"
                    For l0058% = 1 To Len(gv06B0$)
                        If InStr("0123456789.", Mid$(gv06B0$, l0058%, 1)) = 0 Then
                            l0094% = 1
                            End If
                        Next
                    If l0094% Then
                            Call sub07F4(l0096$)
                            If l0096$ <> "" Then
                                sub0264 "Couldn't Connect.", "Chip:"
                                IPPort1.Connected = 0
                                GoSub L18CF6
                                Exit Sub
                                End If
                            sub0264 "Host IP Is " + Trim$(gv06CA$) + ", Connecting...", "Chip:"
                            gv06B0$ = gv06CA$
                        Else
                            sub0264 "Connecting To " + gv06B0$ + "...", "Chip:"
                        End If
                End If
            Err = 0
            #If Win32 Then
            IPPort1.Linger = False
            IPPort1.Connected = False
            IPPort1.LocalPort = 0
            IPPort1.RemotePort = gv0690%
            IPPort1.RemoteHost = Trim$(gv06B0$)
            #Else
            IPPort1.Linger = False
            IPPort1.Connected = False
            IPPort1.LocalPort = 0
            IPPort1.Port = gv0690%
            IPPort1.HostAddress = Trim$(gv06B0$)
            #End If
            If Err Then
                Err = 0
                #If Win32 Then
                IPPort1.RemoteHost = Trim$(gv06B0$)
                #Else
                IPPort1.HostName = Trim$(gv06B0$)
                #End If
                If Err Then
                    MsgBox "Can't Connect.  Host Name Or Address Couldn't Be Resolved."
                    sub0264 "Couldn't Connect.", "Chip:"
                    IPPort1.Connected = 0
                    Err = 0
                    GoSub L18CF6
                    Exit Sub
                    End If
                End If
            For l0058% = 1 To 3
                IPPort1.Connected = -1
                l006E! = Timer + (gv0692% / 2)
                Do Until gv06BE% Or gv06C0% Or Timer > l006E!
                    DoEvents
                    Loop
                If gv06BE% Or gv06C0% Then Exit For
                IPPort1.Linger = 0
                IPPort1.Connected = 0
                Next
            If gv06BE% = 0 And gv06C0% = 0 Then
                MsgBox "Timed Out Waiting For Connection"
                sub0264 "Couldn't Connect.", "Chip:"
                IPPort1.Connected = 0
                GoSub L18CF6
                Exit Sub
                End If
            If gv06BE% Then
                    Call sub086F
                Else
                    If gv06C0% Then
                            MsgBox "Connection Was Refused. Host May Be Off-line."
                        Else
                            MsgBox "Timed Out Waiting For Connection"
                        End If
                    sub0264 "Couldn't Connect.", "Chip:"
                    GoSub L18CF6
                End If
            gv06BE% = 0: gv06C0% = 0
        End If
    Screen.MousePointer = 0
    Exit Sub

L18CF6:
    ComConnect.Enabled = -1
    ComHost.Enabled = -1
    gv071A% = 0
    Call sub0446
    Screen.MousePointer = 0
    Return
End Sub

Private Sub ComConnect_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If IPPort1.Connected Then
            Label1.Caption = "Disconnect And End The Current Game"
        Else
            Label1.Caption = "Connect To Another Player's Host Game"
        End If
End Sub

Private Sub ComHost_Click()
Dim l00AE As Integer
' Const m00BA = 0 ' &H0%
Dim l00C2 As String
Dim l00DA As String
Dim l00DC As Single
    Screen.MousePointer = 11
    gv025C% = 0
    Call sub057B
    gv0718% = 1
    gv0720% = 0
    If gv01F6% = 0 Then Call sub02E3("newgame.mid")
    CyberGameForm.Show 1
    If gv0718% = 0 Then
        GoSub L195EC
        Exit Sub
        End If
    DoEvents
    gv030A% = 0
    If gv0720% Then
        Call sub047A(gv0720%)
        gv06B4% = 0
        For l00AE% = 1 To gv02CA%
            If gv02D6(l00AE%).M1F5D = m00BA Then
                gv06B4% = gv06B4% + 1
                End If
            If l00AE% > 1 Then
                gv02D6(l00AE%).M1E1E = gv05DE$(l00AE%)
                gv02D6(l00AE%).M1F50 = "c"
                End If
            gv02D6(1).M1E1E = Trim$(gv06A4$)
            Next
        Call sub0561(gv0720%)
        End If
    gv0736% = 0
    gv06A4$ = gv02D6(1).M1E1E
    On Error Resume Next
    Refresh
    sub0264 "********************** Initializing Host ********************** ", ""
    #If Win32 Then
    l00C2$ = IPD1.Config("WinsockInfo")
    #Else
    l00C2$ = IPD1.WinsockInfo
    #End If
    ReDim gv0894(32) As T2762
    For l00AE% = 1 To 32
        gv0894(l00AE%).M2796 = ""
        Next
    ReDim gv0B0C(32) As String
    ReDim gv06D2%(32)
    IPD1.Linger = 0
    IPD1.Listening = 0
    If InStr(LCase$(l00C2$), "not initialized") Then
            MsgBox "Error: Winsock Not Initialized.  Make sure your WinSock is functioning properly, then restart the program."
            sub0264 "----", "Chip:"
            GoSub L195EC
        Else
            gv07D6% = 0
            ' TODO: bypass viablesoftware.com because can't host new CyberWar
            'Call sub07B0(l00DA$, 0)
            'If l00DA$ <> "" Then
            '    MsgBox "Couldn't Register Host With Viable Name Server."
            '    If gv07D6% = 1 Then
            '            MsgBox "Your Version Of WEIV Is Out Of Date.  See Your Help Menu And 'Contact Information' To Acquire The Latest Version."
            '            ComConnect.Enabled = -1
            '            ComHost.Enabled = -1
            '            IPD1.Listening = 0
            '            gv071A% = 0
            '            Call sub0446
            '            Screen.MousePointer = 0
            '        Else
            '            GoSub L195EC
            '        End If
            '    Exit Sub
            '    End If
            ' No waiting for post to ViableSoftware servers
            'l00DC! = Timer + gv0692%
            'Do While Timer < l00DC! And gv07D6% = 0
            '    DoEvents
            '    Loop
            #If Win32 Then
            IPD1.LocalPort = gv0690%
            #Else
            IPD1.Port = gv0690%
            #End If
            IPD1.Listening = -1
            If Err Then
                    Err = 0
                    IPD1.Listening = 0
                    MsgBox "Error: " + Error$ + ".  Make sure your WinSock is functioning properly, or try configuring ViaTalk Central to a different port."
                Else
                    l00DC! = Timer + gv0692%
                    Do While Timer < l00DC!
                        DoEvents
                        If IPD1.Listening Then Exit Do
                        Loop
                End If
            If IPD1.Listening = 0 Then
                    MsgBox "Timed Out Waiting For WinSock Initialization."
                    sub0264 "----", "Chip:"
                    GoSub L195EC
                Else
                    #If Win32 Then
                    IPPort1.RemoteHost = IPPort1.LocalHost
                    gv06B0$ = IPPort1.RemoteHost
                    #Else
                    IPPort1.HostName = IPPort1.LocalHostName
                    gv06B0$ = IPPort1.HostAddress
                    #End If
                    If gv06B0$ = "0.0.0.0" Or Err <> 0 Then
                            MsgBox "Can't Initialize Host.  Not Connected"
                            TextWindow.Text = ""
                            GoSub L195EC
                            Exit Sub
                        Else
                        End If
                    sub0264 "Host Active. Host IP Is " + gv06B0$, "Chip:"
                    Command1.Caption = "Start"
                    gv071A% = 1
                    Call ComConnect_Click
                End If
        End If
    Exit Sub

L195EC:
    ComConnect.Enabled = -1
    ComHost.Enabled = -1
    TextWindow.Text = ""
    IPD1.Listening = 0
    gv071A% = 0
    Call sub0446
    Screen.MousePointer = 0
    Return
End Sub

Private Sub ComHost_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "Act As Host For A Game"
End Sub

Private Sub ComHotLine_Click()
    Screen.MousePointer = 1
    RoomForm.Show
End Sub

Private Sub ComHotLine_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "Talk To Other On-line Players"
End Sub

Private Sub Command1_Click()
Dim l0108 As String
Dim l010C As Single
' Const mc0162 = 5 ' &H5%
    If Command1.Caption = "Start" Then
        If gv03A4% > 0 Then gv03A4% = gv03A4% - 1
        gv07DC% = -1
        Call sub04F3
        End If
    If Command1.Caption = "Force Pass" Then
        gv07DE% = 0
        Empire_Query.Label1.Caption = "Are You Sure?  Normally You Should ONLY Use This Button When The Player Has Been Disconnected."
        Empire_Query.Com_True.Caption = "&Yes"
        Empire_Query.Com_False.Caption = "&Cancel"
        Empire_Query.Show
        Do
            DoEvents
            Loop Until gv07DE%
        If ContMap.Enabled Then ContMap.ComFocus.SetFocus
        If gv024E Then
            Else
                Exit Sub
            End If
        End If
    Command1.Caption = "Pass"
    Command1.Visible = 0
    If gv0714% Then
            ContMap.MousePointer = 11
            l0108$ = gc07EC + gc083C + gc07E4 + gc07E8
            sub0264 "Passing Turn...", "Chip:"
            gv0734% = 0
            Call sub0273(l0108$)
            l010C! = Timer + (gv0692%)
            Do Until gv0734% Or Timer > l010C!
                DoEvents
                Loop
            If gv0734% = 0 Then
                sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                Exit Sub
                End If
            sub0264 "Okay.", "Host:"
            ContMap.MousePointer = 0
        Else
            If Val(TrialDays$) = Int(Val(TrialDays$)) Then
                If Val(TrialDays$) > 30 And gv03A4% = 1 Then
                    ShareForm.Show 1
                    End If
                End If
            Call sub0A87
        End If
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If gv03A4% Then
            Label1.Caption = "Pass Your Turn To The Next Player"
        Else
            Label1.Caption = "Press This Button To Begin Game Play"
        End If
End Sub

Private Sub Command14_Click()
    Command14.Visible = 0
    Call sub09C5
    If gv02D6(gv03A4%).M1F50 = gc088A Then
        Else
            Call sub02BB(-1)
            Call sub02AB(-1)
        End If
    ContMap.Picture1.Refresh
End Sub

Private Sub Command2_Click()
    Screen.MousePointer = 11
    gv0254% = 17: gv0256% = 1
    Call sub04AB("North America", "cont5.bmp", 0)
End Sub

Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "NORTH AMERICA"
End Sub

Private Sub Command3_Click()
    Screen.MousePointer = 11
    gv0254% = 13: gv0256% = 18
    Call sub04AB("South America", "cont6.bmp", 0)
End Sub

Private Sub Command3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "SOUTH AMERICA"
End Sub

Private Sub Command4_Click()
    Screen.MousePointer = 11
    gv0254% = 36: gv0256% = 31
    Call sub04AB("Africa", "cont1.bmp", 0)
End Sub

Private Sub Command4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "AFRICA"
End Sub

Private Sub Command5_Click()
    Screen.MousePointer = 11
    gv0254% = 30: gv0256% = 67
    Call sub04AB("Europe", "cont4.bmp", 0)
End Sub

Private Sub Command5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "EUROPE"
End Sub

Private Sub Command6_Click()
    Screen.MousePointer = 11
    gv0254% = 40: gv0256% = 97
    Call sub04AB("Asia", "cont2.bmp", 0)
End Sub

Private Sub Command6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "ASIA"
End Sub

Private Sub Command7_Click()
    Screen.MousePointer = 11
    gv0254% = 3: gv0256% = 137
    Call sub04AB("Australia", "cont3.bmp", 0)
End Sub

Private Sub Command7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "AUSTRALIA"
End Sub

Private Sub Command8_Click()
Dim l0166 As Integer
Dim l0168 As Integer
    Command8.Visible = 0
    Frame_Info.Visible = 0
    Call sub02D4(0)
    If gv02D6(gv03A4%).M1F50 = gc0886 Then
        Call sub02BB(-1)
        Call sub02AB(-1)
        End If
    If gv051E% Then
        ContMap.Frame_Info.Visible = 0
        ContMap.Box_Revolt.Picture = LoadPicture()
        ContMap.Box_Revolt.Visible = 0
        ContMap.Label_Revolt.Visible = 0
        gv051E% = 0
        gv02D6(gv0554%).M1F5D = mc0162
        If gv0554% = gv03A4% Then
            Call Command1_Click:
            If gv02D6(gv03A4%).M1F50 = gc0886 And Command14.Visible = 0 Then
                Call sub02BB(-1)
                Call sub02AB(-1)
                End If
            End If
    For l0166% = 1 To gv02CA%
        If gv02D6(l0166%).M1F5D <> 5 Then
            l0168% = l0168% + 1: gv055A% = l0166%
            End If
        Next
    If l0168% > 1 Then gv055A% = 0
    If gv055A% > 0 Then Call sub0BC4
        End If
    ContMap.Picture1.Refresh
End Sub

Private Sub ComMode_Click()
Dim l0190 As Integer
Dim l0192 As Integer
Dim l0198 As String
Dim l019A As String
Dim l019C As String
Dim l019E As String
Dim l01A0 As String
    Call sub057B
    If gv025C% Then
        Exit Sub
        End If
    If gv0714% = 0 Then
            If Val(TrialDays$) = Int(Val(TrialDays$)) Then
                If Val(TrialDays$) > 30 Then
                        ShareForm.Show 1
                        MsgBox "Your evaluation period has expired.  CyberWar Mode is disabled.  We hope you like playing over the Internet enough to order the full version with up to 8 players and all options!  Thank you for trying WEIV!"
                        Call sub0446
                        Exit Sub
                    Else
                        MsgBox "CyberWar Mode in this version only allows two players in the game at once.  Also, and as with Local Mode, some game options are not enabled in this version.  We hope you like playing over the Internet enough to order the full version with up to 8 players and all options!  Thank you for trying WEIV!  CyberHail!"
                    End If
                End If
            ComMode.Visible = -1
            ContMap.Image_Help.Visible = -1
            MenuFileNew.Visible = 0
            MenuFileSave.Visible = 0
            MenuFileLoad.Visible = 0
            MenuInternet.Visible = -1
            TextWindow.Text = ""
            TextWindow.Visible = -1
            ComHost.Visible = -1
            ComConnect.Visible = -1
            gv055C% = 0: Button_Blitz.Caption = "Blitz Off"
            gv0714% = 1
            Call sub0702
            ComMode.Picture = PicLocal.Picture
            ComMode.Caption = "Local"
            ContMap.Caption = "World Empire IV (CyberWar)"
            For l0190% = 1 To 8
                If l0190% > 1 Then l0192% = l0190% + 3 Else l0192% = l0190%
                FileCopy AppResc$ + "\genr" + Trim$(Str$(l0192%)) + ".bmp", AppData$ + "\empfiles\pictemp" + Trim$(Str$(l0190%)) + ".bmp"
                Next
        Else
            ComMode.Visible = -1
            ContMap.Image_Help.Visible = -1
            If IPPort1.Connected Then
                Call ComConnect_Click
                End If
            If IPD1.Listening Then
                IPD1.Linger = 0
                IPD1.Listening = 0
                End If
            MenuFileNew.Visible = -1
            MenuFileSave.Visible = -1
            MenuFileLoad.Visible = -1
            MenuInternet.Visible = 0
            TextWindow.Visible = 0
            ComHost.Visible = 0
            Command1.Caption = "Pass"
            ComConnect.Visible = 0
            ComConnect.Caption = "Connect To Host"
            ComHotLine.Visible = 0
            ComWeb.Visible = 0
            l0198$ = ""
            l019A$ = ""
            l019C$ = ""
            l019E$ = ""
            l01A0$ = ""
            Call sub0253(l0198$, l019A$, l019C$, l019E$, l01A0$)
            gv055C% = 1: Button_Blitz.Caption = "Blitz On"
            gv0714% = 0
            ComMode.Picture = PicNetwork.Picture
            ComMode.Caption = "CyberWar"
            ContMap.Caption = "World Empire IV (Local)"
            ContMap.Refresh
        End If
    Screen.MousePointer = 0
End Sub

Private Sub ComMode_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "Selects Internet Or Local Game Mode"
End Sub

Private Sub ComWeb_Click()
    Screen.MousePointer = 11
    gv07B4% = 0
    SurferForm.Show
End Sub

Private Sub Form_Activate()
    ContMap.Refresh
    Screen.MousePointer = 0
    If gv0200% = 0 And gv0202% = 0 Then
        gv0200% = 1
        If gv01F6% = 0 Then Call sub02E3("comp.mid")
        ContMap.Image_Help.Visible = -1
        ContMap.ComMode.Visible = -1
        If Val(TrialDays$) = Int(Val(TrialDays$)) Then
            ShareForm.Show 1
            Screen.MousePointer = 11
            End If
        End If
End Sub

Private Sub Form_Load()
Dim l01EA As Integer
Dim l0218 As Long
Dim l021C As Integer
Dim l024A As String
Dim l024E As Integer
Dim l0250 As String
Dim l0252 As Variant
Dim l0256 As Integer
Dim l0258 As String
Dim l025A As String
Dim l0260 As Integer
Dim l0262 As Integer
Dim l0266 As Variant
Dim l026A As Integer
Dim l026C As Long
Dim l026E As String
    On Error Resume Next
    InitialForm.AutoRedraw = 0
    InitialForm.Picture1.Picture = LoadPicture()
    InitialForm.Picture2.Picture = LoadPicture()
    InitialForm.Picture1.Visible = 0
    'ContMap.Left = 0
    'ContMap.Top = 0
    SetCenterOfScreen ContMap
    Call sub0589
    For l01EA% = 0 To 8
        If l01EA% > 0 Then
            Load ContMap.Label11(l01EA%)
            ContMap.Label11(l01EA%).Top = ContMap.Label11(0).Top + (l01EA% * 240)
            Load ContMap.Label12(l01EA%)
            ContMap.Label12(l01EA%).Top = ContMap.Label12(0).Top + (l01EA% * 240)
            End If
        Next
    ContMap.Label8.Caption = ""
    Call sub0496(0)
    CountMap.Hide
    gv07AE% = 0
    gv0258& = RGB(0, 0, 0)
    Call sub0290(2)
    Unload InitialForm
    ContMap.Picture1.Picture = LoadPicture(AppResc$ + "\" + "cont7.bmp")
    ContMap.Refresh
    Label1.Width = Picture1.Width
    Label_Comp_Mode.Width = Picture1.Width
    Label_Comp_Mode.Top = (Picture1.Height / 5) * 4
    Label_Comp_Attackee.Left = (Picture1.Width - (Label_Comp_Attackee.Width + Label_Attackee_Armies.Width)) / 2
    Label_Comp_Attacker.Left = Label_Comp_Attackee.Left
    Label_Attackee_Armies.Left = Label_Comp_Attackee.Left + Label_Comp_Attackee.Width
    Label_Attacker_Armies.Left = Label_Attackee_Armies.Left
    Label_Comp_Attackee.Top = Label_Comp_Mode.Top + Label_Comp_Mode.Height
    Label_Comp_Attacker.Top = Label_Comp_Attackee.Top + Label_Comp_Attackee.Height
    Label_Attackee_Armies.Top = Label_Comp_Attackee.Top
    Label_Attacker_Armies.Top = Label_Comp_Attacker.Top
    gv01EC = ""
    l021C% = FreeFile
    Open AppResc$ + "\c1.wav" For Binary As l021C%
       l0218 = LOF(l021C%)
       gv01EC = String$(l0218, " ")
       Get l021C%, , gv01EC
    Close l021C%
    Screen.MousePointer = 0
    ContMap.ScaleMode = 3
    ContMap.Picture1.Left = (((ContMap.Picture8.Left + Picture7.Width) - ContMap.Picture1.Width) / 2) - 2
    ContMap.Picture1.Top = ((ContMap.Picture9.Top - ContMap.Picture1.Height) / 2) - 1
    Command2.Top = 37
    Command2.Left = 50
    Command3.Top = 220
    Command3.Left = 99
    Command4.Top = 182
    Command4.Left = 197
    Command5.Top = 101
    Command5.Left = 209
    Command6.Top = 69
    Command6.Left = 267
    Command7.Top = 278
    Command7.Left = 416
    ContMap.ScaleMode = 1
    gv055C% = 1: Button_Blitz.Caption = "Blitz On"
    ContMap.Label_Comp_Mode.Visible = -1
    ContMap.Label_Comp_Attackee.Visible = -1
    ContMap.Label_Comp_Attacker.Visible = -1
    ContMap.Label_Attackee_Armies.Visible = -1
    ContMap.Label_Attacker_Armies.Visible = -1
    gv06BC% = 2084
    gv0692% = 45
    ReDim gv0894(32) As T2762
    ReDim gv0B0C(32) As String
    ReDim gv06D2%(32)
    l024A$ = String$(144, " ")
    l024E% = GetWindowsDirectory(l024A$, 144)
    l0250$ = Left$(Trim$(l024A$), Len(Trim$(l024A$)) - 1)
    If Right$(l0250$, 1) <> "\" Then
        l0250$ = l0250$ + "\"
        End If
    ChDir AppData$ + "\" + "empfiles"
    ' Buat temporary folder
    If Err Then
        Err = 0
        MkDir AppData$ + "\" + "empfiles"
    End If
    ' Bypass Trial from here
    'If Err Then
    '        Err = 0
    '        MkDir AppData$ + "\" + "empfiles"
    '        FileCopy AppResc$ + "\genr1.bmp", AppData$ + "\empfiles\pictemp9.bmp"
    '        Randomize Timer
    '        l0252 = Date
    '        For l01EA% = 1 To Len(l0252)
    '            l0256% = Asc(Mid$(l0252, l01EA%, 1)) * 3
    '            l0258$ = l0258$ + Format(l0256%, "000")
    '            Next
    '        l021C% = FreeFile
    '        Open l0250$ + "winemcfg.sys" For Append As l021C%
    '        If LOF(l021C%) < 1 Then
    '                Close l021C%
    '                GoSub L1BC04
    '                TrialDays$ = "1"
    '            Else
    '                GoSub L1B914
    '            End If
    '    Else
    '        GoSub L1B914
    '    End If
    ' Fill with non-integer value instead so behaves like commercial edition!
    TrialDays$ = "1.5"
    l025A$ = Picture1.FontName
    Picture1.FontName = "Courier New"
    If Err Then
        Err = 0: Picture1.FontName = "FixedSys"
        If Err Then
            Err = 0: Picture1.FontName = "Terminal"
            End If
            If Err Then
                Err = 0: Picture1.FontName = l025A$
                End If
        End If
    gv070C$ = Picture1.FontName
    Picture1.FontName = "Arial"
    If Err Then
        Err = 0: Picture1.FontName = "Helv"
        If Err Then
            Err = 0: Picture1.FontName = "Times Roman"
            End If
            If Err Then
                Err = 0: Picture1.FontName = l025A$
                End If
        End If
    gv0708$ = Picture1.FontName
    l0260% = 1
    ComMode.Picture = PicNetwork.Picture
    ComMode.Caption = "CyberWar"
    ContMap.Caption = "World Empire IV (Local)"
    Randomize Timer
    l0262% = Int((20000 - 10000 + 1) * Rnd + 10000)
    gv07D2$ = Trim$(Str$(l0262%))
    l0262% = Int((9999 - 1000 + 1) * Rnd + 1000)
    gv07D2$ = gv07D2$ + "-" + Trim$(Str$(l0262%))
    l0262% = Int((90 - 65 + 1) * Rnd + 65)
    gv07D2$ = gv07D2$ + "-" + Chr$(l0262%)
    l0262% = Int((90 - 65 + 1) * Rnd + 65)
    gv07D2$ = gv07D2$ + Chr$(l0262%)
    l0262% = Int((90 - 65 + 1) * Rnd + 65)
    gv07D2$ = gv07D2$ + Chr$(l0262%)
    Exit Sub

L1B914:
    Close l021C%
    l021C% = FreeFile
    Open l0250$ + "winemcfg.sys" For Input As l021C%
    If Err Then
            GoSub L1BC04: Return
        Else
            Line Input #l021C%, l025A$
        End If
    If Err Then
            GoSub L1BC04: Return
        Else
            If l025A$ <> "[System Segment Address]" Then End
            Line Input #l021C%, l0258$
            If Val(l0258$) < 1 Then End
            l0258$ = "0101"
            If InStr(l0258$, "0101") = 0 Then
                    l025A$ = ""
                    For l01EA% = 1 To Len(l0258$) Step 3
                        l0256% = Val(Mid$(l0258$, l01EA%, 3)) \ 3
                        l025A$ = l025A$ + Chr$(l0256%)
                        Next
                    l0252 = CVDate(l025A$)
                    If Err Then Kill l0250$ + "winemcfg.sys": End
                    l0266 = Date
                    TrialDays$ = Trim$(Str$(l0266 - l0252 + 1))
                    If Val(TrialDays$) < 0 Then
                        MsgBox "Invalid System Date... Can't Run WEIV."
                        End
                        End If
                Else
                    l026A% = FreeFile
                    Open AppData$ + "\empfiles\pictemp9.bmp" For Binary As l026A%
                    l026C& = LOF(l026A%) - 100
                    l026E$ = Space$(1)
                    Get #l026A%, l026C&, l026E$
                    Close l026A%
                    If l026E$ = "C" Then
                            TrialDays$ = "1.5"
                        Else
                            TrialDays$ = "32"
                        End If
                End If
        End If
    Close l021C%
    Return

L1BC04:
    Close l021C%
    Err = 0
    l0258$ = ""
    l0252 = Date
    For l01EA% = 1 To Len(l0252)
        l0256% = Asc(Mid$(l0252, l01EA%, 1)) * 3
        l0258$ = l0258$ + Format(l0256%, "000")
        Next
    l021C% = FreeFile
    Open l0250$ + "winemcfg.sys" For Output As l021C%
    Print #l021C%, "[System Segment Address]"
    Print #l021C%, l0258$
    Close l021C%
    TrialDays$ = "1"
    Return
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim l0272 As Integer
Dim l0274 As Single
    If IPPort1.Connected Then
        ComConnect.Enabled = 0
        sub0264 "Disconnecting...", "Chip:"
        IPPort1.Linger = 0
        IPPort1.Connected = 0
        If IPD1.Listening Then
            For l0272% = 1 To 32
                If IPD1.Connected(l0272%) Then
                    IPD1.Connected(l0272%) = 0
                    End If
                Next
            sub0264 "Shutting Down Host...", "Chip:"
            IPD1.Listening = 0
            End If
        l0274! = Timer + 2
        Do While Timer < l0274!
            Loop
        End If
    ComHotLine.Visible = 0
    ComWeb.Visible = 0
    If gv0710% Then Unload RoomForm
    If gv07B6% Then Unload SurferForm
    If gv07C8% Then Unload NoticeForm
    gv0710% = 0
    gv071A% = 0
    Call sub04F3
    Unload ContMap
    If Val(TrialDays$) = Int(Val(TrialDays$)) Then
            End
        Else
            End
        End If
End Sub

Private Sub Image_Help_Click()
    Call sub089A(1)
End Sub

Private Sub Image_Help_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "&What to do at this Window!"
End Sub

Private Sub Image_Surrend_Click()
Dim l02A4 As String
Dim l02A6 As Single
    Screen.MousePointer = 11
    gv044C% = 2
    Screen.MousePointer = 11
    ContMap.Enabled = 0
    gv0554% = 0: gv0556% = 0: gv07C6% = 0
    If gv0714% = 0 Then
            SaveForm.Show 1
        Else
            SaveForm.Show
            Do Until gv07C6%
                DoEvents
                Loop
            If gv07C6% = 2 Then
                l02A4$ = gc07EC + gc0870 + gc07E4 + Trim$(Str$(gv0554%)) + gc07E4 + Trim$(Str$(gv0556%)) + gc07E4 + gc07E8
                sub0264 "Rats.  Surrendering...", "Chip:"
                gv0734% = 0
                Call sub0273(l02A4$)
                l02A6! = Timer + (gv0692%)
                Do Until gv0734% Or Timer > l02A6!
                    DoEvents
                    Loop
                If gv0734% = 0 Then
                    sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                    Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                    gv07C6% = 0
                    Exit Sub
                    End If
                sub0264 "Okay.", "Host:"
                ContMap.MousePointer = 0
                Call Command1_Click
                End If
            gv07C6% = 0
        End If
End Sub

Private Sub Image_Surrend_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "S&urrender your armies to another player"
End Sub

Private Sub IPD1_Connected(ConnectionID As Integer, StatusCode As Integer, Description As String)
' IPD1.Connected
' Param p02B0 As Integer
' Const m02B6 = 0 ' &H0%
Dim l02B8 As String
    gv0894(ConnectionID).M27B8 = m02B6
    l02B8$ = IPD1.RemoteHost(ConnectionID)
    sub0264 "Attempted Connection...", "Host: " + l02B8$
    gv0B0A% = ConnectionID
End Sub

Private Sub IPD1_DataIn(ConnectionID As Integer, Text As String, EOL As Integer)
' IPD1.DataIn
' Param p02BC As Integer, p02BE As String
Dim l02C2 As String
Dim l02C4 As Integer
Dim l02C6 As Long
Dim l02C8 As String
Dim l02D0 As String
Dim l02D2 As String
Dim l02D4 As String
Dim l02DE As Long
Dim l02E0 As Variant
Dim l02E6 As String
Dim l02EE As String
' Const mc02F2 = 2 ' &H2%
Dim l02F4 As String
Dim l02F6 As String
Dim l02F8 As Integer
Dim l0302 As Integer
Dim l030A As String
    On Error GoTo IPD1_DataIn_ErrHandler
    If Len(gv0B0C(ConnectionID)) + Len(Text) > 16000 Then
        gv0B0C(ConnectionID) = ""
        l02C2$ = IPD1.RemoteHost(ConnectionID)
        sub0264 "[ERROR] Data Too Large. ", "Host: " + l02C2$
        Exit Sub
        End If
    If gv0B0C(ConnectionID) = "" Then
        sub06AC Text, l02C4%
        If l02C4% Then
            l02C2$ = IPD1.RemoteHost(ConnectionID)
            l02C6& = InStr(Text, ":")
            If l02C6& > 0 And l02C6& < 14 Then
                    l02C8$ = Mid$(Text, 1, l02C6&)
                    l02D0$ = l02C8$ + gc07F4 + gc07E4 + gc07E0 + gv0214$ + gv0214$ + "Chip: Sorry, Your Version Of WEIV Is Out Of Date And Not Compatible With This Host.  See Your HELP Menu For Information On Obtaining The Latest Version Of World Empire IV." + gv0214$ + gc07E8
                    sub0759 l02D0$, ConnectionID
                    DoEvents
                    sub0264 "Invalid Version: " + l02C8$ + ". Connection Closed. ", "Host: " + l02C2$
                Else
                    sub0264 "[ERROR] Bad Data. Connection Closed. ", "Host: " + l02C2$
                End If
            IPD1.Connected(ConnectionID) = 0
            Call sub0738(gv0894(ConnectionID))
            Exit Sub
            End If
        End If
    gv0B0C(ConnectionID) = gv0B0C(ConnectionID) + Text
    If Len(Trim$(gv0B0C(ConnectionID))) > 12 Then
            If Right$(gv0B0C(ConnectionID), Len(gc07E8)) = gc07E8 Then
                    Text = gv0B0C(ConnectionID)
                    gv0B0C(ConnectionID) = ""
                Else
                    Exit Sub
                End If
        Else
            gv0B0C(ConnectionID) = ""
            Exit Sub
        End If
    l02D2$ = "1"
    If Len(Text) > 33 And InStr(Left$(Text, 23), gc0804) > 0 Or InStr(Left$(Text, 23), gc0808) > 0 Or InStr(Left$(Text, 23), gc080C) > 0 Then
            If InStr(Text, gc0818) Then
                    l02DE& = 0: Text = ""
                Else
                    l02E0 = Mid$(Text, 23, 10)
                    l02DE& = Val(l02E0) - (Len(gc07E8) - 1)
                End If
        Else
            l02DE& = InStr(Text, gc07E8)
        End If
    Do While l02DE& > 0
        l02D4 = Mid$(Text, 1, l02DE& - 1)
        l02D2$ = "2"
        Text = Right$(Text, Len(Text) - l02DE& - (Len(gc07E8) - 1))
        l02D4 = Right$(l02D4, Len(l02D4) - Len(gc07EC))
        l02D2$ = "3"
        l02C6& = InStr(l02D4, gc07E4)
        l02E6$ = Left$(l02D4, Len(gc07F0))
        l02D4 = Right$(l02D4, Len(l02D4) - Len(l02E6$) - Len(gc07E4))
        l02D2$ = "4"
        Select Case l02E6$
            Case gc0814
                Text = ""
                gv0B0C(ConnectionID) = ""
                l02D0$ = gc07EC + gc07FC + gc07E4 + "Sorry, Upload Failed."
                sub0759 l02D0$, ConnectionID
            Case gc07F0
                l02C2$ = IPD1.RemoteHost(ConnectionID)
                Call sub0744(l02D4, ConnectionID)
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc07F4, gc07F8
                Select Case gv0894(ConnectionID).M27B8
                    Case mc02F2
                        l02F4$ = ""
                        If Val(gv0894(ConnectionID).M27C3) = Int(Val(gv0894(ConnectionID).M27C3)) Then
                            l02F4$ = " (Evaluation Day " + Trim$(gv0894(ConnectionID).M27C3) + ")"
                            End If
                        If l02E6$ = gc07F8 Then
                            l02C6& = InStr(l02D4, gc07E4)
                            l02F6$ = Mid$(l02D4, 1, l02C6& - 1)
                            l02D4 = Mid$(l02D4, l02C6& + 2, Len(l02D4) - l02C6& + 2)
                            End If
                        For l02F8% = 1 To 32
                            If gv0894(l02F8%).M27B8 = mc02F2 Then
                                If l02E6$ = gc07F8 Then
                                        If Trim$(gv0894(l02F8%).M2796) = l02F6$ Or l02F8% = ConnectionID Then
                                            l02D0$ = gc07EC + gc07F4 + gc07E4 + Trim$(gv0894(ConnectionID).M2796) + " To " + l02F6$ + l02F4$ + ": " + gv0214$ + l02D4 + gv0214$ + gc07E8
                                            sub0759 l02D0$, l02F8%
                                            End If
                                    Else
                                        l02D0$ = gc07EC + gc07F4 + gc07E4 + Trim$(gv0894(ConnectionID).M2796) + l02F4$ + ": " + gv0214$ + l02D4 + gv0214$ + gc07E8
                                        sub0759 l02D0$, l02F8%
                                    End If
                                End If
                            Next
                    Case Else
                    End Select
            Case gc07FC
            Case gc0834
                Call sub0844(l02D4, ConnectionID)
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0830
                Call sub0561(gv0720%)
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc082C
                Call sub0833(l02D4, ConnectionID)
            Case gc085C
                l02F4$ = gc07EC + gc085C + gc07E4 + l02D4 + gc07E4 + gc07E8
                sub0818 l02F4$, l0302%
                gv0894(ConnectionID).M1EA3 = gv02D6(Val(l02D4)).M1EA3
                sub0264 "User " + Trim$(gv0894(ConnectionID).M2796) + " Logged Onto System. ", "Host: " + l02C2$
                Call sub085E(ConnectionID)
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0800
                Call sub0761(l02D0$, ConnectionID)
                l02D0$ = gc07EC + gc0800 + gc07E4 + "Current Users Are..." + l02D0$ + gc07E8
                sub0759 l02D0$, ConnectionID
            Case gc083C
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
                gv07C0% = -1
            Case gc0838
                Call sub06BD(l030A$)
                l02F4$ = gc07EC + gc0838 + gc07E4 + l030A$ + gc07E4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0840
                l02F4$ = gc07EC + gc0840 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0844
                l02F4$ = gc07EC + gc0844 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0848
                l02F4$ = gc07EC + gc0848 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc084C
                l02F4$ = gc07EC + gc084C + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0850
                l02F4$ = gc07EC + gc0850 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0854
                l02F4$ = gc07EC + gc0854 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0858
                l02F4$ = gc07EC + gc0858 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0874
                l02F4$ = gc07EC + gc0874 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0870
                l02F4$ = gc07EC + gc0870 + gc07E4 + l02D4 + gc07E8
                sub0818 l02F4$, l0302%
                l02EE$ = gc07EC + gc0828 + gc07E4 + gc07E8
                sub0759 l02EE$, ConnectionID
            Case gc0828
                gv0734% = 1
            Case gc081C
            Case gc0804, gc0808, gc080C
            Case Else
            End Select
        gv0894(ConnectionID).M27AD = 0
        If Len(Text) > 33 And InStr(Left$(Text, 23), gc0804) > 0 Or InStr(Left$(Text, 23), gc0808) > 0 Or InStr(Left$(Text, 23), gc080C) > 0 Then
                l02E0 = Mid$(Text, 23, 10)
                l02DE& = Val(l02E0) - (Len(gc07E8) - 1)
            Else
                l02DE& = InStr(Text, gc07E8)
            End If
        Loop
    Exit Sub

IPD1_DataIn_ErrHandler:
    gv0B0C(ConnectionID) = ""
    l02C2$ = IPD1.RemoteHost(ConnectionID)
    sub0264 "[ERROR] " + l02D2$ + ": " + l02E6$ + " " + Error$, "Host: " + l02C2$
    Exit Sub

End Sub

Private Sub IPD1_Disconnected(ConnectionID As Integer, StatusCode As Integer, Description As String)
' IPD1.Disconnect
' Param p031E As Integer
Dim l0324 As Integer
Dim l0326 As Integer
Dim l0328 As Integer
Dim l032C As String
    For l0324% = 1 To gv02CA%
        If Trim$(gv02D6(l0324%).M1E1E) = Trim$(gv0894(ConnectionID).M2796) Then
            l0326% = l0324%
            Exit For
            End If
        Next
    If l0326% > 0 Then
        gv02D6(l0326%).M1F50 = gc088A
        gv02D6(l0326%).M1E1E = gv05DE$(l0326%)
        End If
    gv0894(ConnectionID).M27B8 = m02B6
    sub0264 "User " + Trim$(gv0894(ConnectionID).M2796) + " Logged Out. ", "Host: " + gv0894(ConnectionID).M2780
    For l0328% = 1 To 32
        If gv0894(l0328%).M27B8 = mc02F2 Then
            l032C$ = gc07EC + gc0824 + gc07E4 + Trim$(gv0894(ConnectionID).M2796) + " Has Left The Game." + gc07E8
            sub0759 l032C$, l0328%
            End If
        Next
    Call sub0852
    Call sub0738(gv0894(ConnectionID))

End Sub

Private Sub IPPort1_Connected(StatusCode As Integer, Description As String)
' IPPort1.Connected
' Param p0330 As String
Dim l0332 As String
    If Description = "OK" Then
            sub0264 "Connected OK", "Chip: " + l0332$
            gv06BE% = 1
        Else
            gv06C0% = 1
            sub0264 Description, "Chip: " + l0332$
            IPPort1.Connected = 0
        End If

End Sub

Private Sub IPPort1_DataIn(Text As String, EOL As Integer)
' IPPort1.DataIn
' Param p0334 As String
Dim l033A As Integer
Dim l033C As String
Dim l033E As Variant
Dim l0342 As Long
Dim l0344 As Long
Dim l0346 As String
Dim l0352 As String
Dim l0354 As String
Dim l0356 As String
Dim l0358 As String
Dim l035A As String
    On Error GoTo IPPort1_DataIn_ErrHandler
    If Len(gv0B06$) + Len(Text) > 16000 Then
        gv0B06$ = ""
        sub0264 "[ERROR] Data Too Large. ", "Chip:"
        Exit Sub
        End If
    If gv0B06$ = "" Then
        sub06AC Text, l033A%
        If l033A% Then
            gv0B06 = ""
            sub0264 "[ERROR] Non-WEIV Data Received. Data Discarded. ", "Chip:"
            Exit Sub
            End If
        End If
    gv0B06$ = gv0B06$ + Text
    If Len(Trim$(gv0B06$)) > 18 Then
            If Right$(gv0B06$, Len(gc07E8)) = gc07E8 Then
                    Text = gv0B06$
                    gv0B06$ = ""
                Else
                    Exit Sub
                End If
        Else
            gv0B06$ = ""
            Exit Sub
        End If
    If Len(Text) > 33 And InStr(Left$(Text, 23), gc0804) > 0 Or InStr(Left$(Text, 23), gc0808) > 0 Or InStr(Left$(Text, 23), gc080C) > 0 Then
            l033E = Mid$(Text, 23, 10)
            l0342& = Val(l033E) - (Len(gc07E8) - 1)
        Else
            l0342& = InStr(Text, gc07E8)
        End If
    Do While l0342& > 0
        l033C = Mid$(Text, 1, l0342& - 1)
        Text = Right$(Text, Len(Text) - l0342& - (Len(gc07E8) - 1))
        l033C = Right$(l033C, Len(l033C) - Len(gc07EC))
        l0344& = InStr(l033C, gc07E4)
        l0346$ = Left$(l033C, Len(gc07F0))
        l033C = Right$(l033C, Len(l033C) - Len(l0346$) - Len(gc07E4))
        Select Case l0346$
            Case gc0804, gc0808, gc080C
            Case gc0810
            Case gc07F4
                Call sub0774(l033C + gv0214$)
            Case gc0878
                If InStr(l033C, "Sorry") Then
                       gv07CE$ = l033C: gv07CC% = 1
                    Else
                       gv07CE$ = l033C: gv07CC% = 2:
                    End If
            Case gc07FC
                Call sub0774("Chip: " + l033C + gv0214$)
            Case gc0818
                sub0264 "[ERROR] Attempt To Receive Picture Failed. ", "Chip:"
            Case gc0824
                Call sub08D3(l033C)
            Case gc0800
                Call sub0774("Chip: " + l033C + gv0214$)
            Case gc082C
                Call sub0802(l033C)
                Refresh
                gv07AA% = 1
            Case gc0834
                Call sub08B5(l033C)
            Case gc081C
            Case gc0828
                gv0734% = 1
            Case gc0838
                Call sub050D(l033C)
            Case gc0840
                l0352$ = l033C + " Thinking..."
                l0354$ = ""
                l0356$ = ""
                l0358$ = ""
                l035A$ = ""
                Call sub0253(l0352$, l0354$, l0356$, l0358$, l035A$)
            Case gc085C
                Call sub069E(l033C, 1)
            Case gc0844
                Call sub088C(l033C)
            Case gc0848
                Call sub08A6(l033C, 0)
            Case gc084C
                Call sub08A6(l033C, 1)
            Case gc0850
                Call sub08A6(l033C, 2)
            Case gc0854
                Call sub08A6(l033C, 3)
            Case gc0858
                Call sub08A6(l033C, 4)
            Case gc0870
                Call sub06E1(l033C)
            Case gc0874
                Call sub06F3(l033C)
            Case gc086C
                Call sub068C(l033C)
            Case Else
            End Select
        If Len(Text) > 33 And InStr(Left$(Text, 23), gc0804) > 0 Or InStr(Left$(Text, 23), gc0808) > 0 Or InStr(Left$(Text, 23), gc080C) > 0 Then
                l033E = Mid$(Text, 23, 10)
                l0342& = Val(l033E) - (Len(gc07E8) - 1)
            Else
                l0342& = InStr(Text, gc07E8)
            End If
        Loop
    Exit Sub

IPPort1_DataIn_ErrHandler:
    Text = ""
    gv0B06$ = ""
    sub0264 "Error Receiving Data -" + l0346$ + "-", "Chip:"
    Exit Sub

End Sub

Private Sub IPPort1_Disconnected(StatusCode As Integer, Description As String)
' IPPort1.Disconnceted
' Param p0360 As String
Dim l0362 As Integer
Dim l0364 As Single
Dim l0366 As String
Dim l0368 As String
Dim l036A As String
Dim l036C As String
Dim l036E As String
    Screen.MousePointer = 11
    sub0264 "-- Disconnected " + Description, "Chip:"
    ComConnect.Caption = "Connect To Host"
    If IPD1.Listening Then
        gv0736% = 0
        For l0362% = 1 To 32
            If IPD1.Connected(l0362%) Then
                IPD1.Connected(l0362%) = 0
                End If
            Next
        sub0264 "Shutting Down Host...", "Chip:"
        IPD1.Listening = 0
        End If
    gv0710% = 0
    gv071A% = 0
    Unload RoomForm
    If gv07AE% Then
        'CountMap.ComHotLine.Visible = 0
        CountMap.ComHotLine.Enabled = False
        Call sub03E1(1)
        End If
    ContMap.Enabled = -1
    l0364! = Timer + 2
    Do While Timer < l0364!
        Loop
    gv025C% = 0
    Call sub057B
    Call sub0496(0)
    Call sub02AB(0)
    l0366$ = ""
    l0368$ = ""
    l036A$ = ""
    l036C$ = ""
    l036E$ = ""
    Call sub0253(l0366$, l0368$, l036A$, l036C$, l036E$)
    ComConnect.Enabled = -1
    ComHost.Enabled = -1
    gv071A% = 0
    Call sub0446
    Screen.MousePointer = 0
End Sub

Private Sub IPPort2_Connected(StatusCode As Integer, Description As String)
' IPPort2.Connected
' Param p0372 As String
    If Description = "OK" Then
            gv06C6% = 1
        Else
            gv06C8% = 1
        End If

End Sub

Private Sub IPPort2_DataIn(Text As String, EOL As Integer)
' IPPort2.DataIn
' p0378 As String
Dim l037C As Integer
Dim l037E As String
Dim l0380 As Variant
Dim l0384 As Long
Dim l0386 As Long
Dim l0388 As String
Dim l0390 As Variant
Dim l0394 As Integer
    If Len(gv0B06$) + Len(Text) > 16000 Then
        gv0B06$ = ""
        Call sub079D("ViaTalk: Error. Data Too Large. Data Discarded." + gv0214$)
        Exit Sub
        End If
    If gv0B06$ = "" Then
        sub06AC Text, l037C%
        If l037C% Then
            gv0B06 = ""
            Call sub079D("ViaTalk: Error. Non-ViaTalk Data Received. Data Discarded." + gv0214$)
            Exit Sub
            End If
        End If
    gv0B06$ = gv0B06$ + Text
    If Len(Trim$(gv0B06$)) > 18 Then
            If Right$(gv0B06$, Len(gc07E8)) = gc07E8 Then
                    Text = gv0B06$
                    gv0B06$ = ""
                Else
                    Exit Sub
                End If
        Else
            gv0B06$ = ""
            Exit Sub
        End If
    If Len(Text) > 30 And InStr(Left$(Text, 20), gc0804) > 0 Or InStr(Left$(Text, 20), gc0808) > 0 Or InStr(Left$(Text, 20), gc080C) > 0 Then
            l0380 = Mid$(Text, 20, 10)
            l0384& = Val(l0380) - (Len(gc07E8) - 1)
        Else
            l0384& = InStr(Text, gc07E8)
        End If
    Do While l0384& > 0
        l037E = Mid$(Text, 1, l0384& - 1)
        Text = Right$(Text, Len(Text) - l0384& - (Len(gc07E8) - 1))
        l037E = Right$(l037E, Len(l037E) - Len(gc07EC))
        l0386& = InStr(l037E, gc07E4)
        l0388$ = Left$(l037E, Len(gc07F0))
        l037E = Right$(l037E, Len(l037E) - Len(l0388$) - Len(gc07E4))
        Select Case l0388$
            Case gc0860
                Call sub07E0(l037E, 0)
            Case gc0864
                Call sub07E0(l037E, 1)
            Case gc0868
                Call sub07E0(l037E, 2)
            Case gc0824
                Call sub08D3(l037E)
            Case l0390
                l0394% = 1
                Call sub079D("ViaTalk: " + l037E)
            Case Else
            End Select
        If Len(Text) > 30 And InStr(Left$(Text, 20), gc0804) > 0 Or InStr(Left$(Text, 20), gc0808) > 0 Or InStr(Left$(Text, 20), gc080C) > 0 Then
                l0380 = Mid$(Text, 20, 10)
                l0384& = Val(l0380) - (Len(gc07E8) - 1)
            Else
                l0384& = InStr(Text, gc07E8)
            End If
        Loop
End Sub

Private Sub IPPort2_Disconnected(StatusCode As Integer, Description As String)
    gv06C6% = 0: gv06C8% = 0
End Sub

Private Sub Label_Comp_Attackee_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = ""
End Sub

Private Sub Label_Comp_Attacker_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = ""
End Sub

Private Sub Label_Comp_Mode_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = ""
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Label1.Caption = ""
End Sub

Private Sub MenuFile_Click()
    If gv01F4% = 0 Then
            MenuFileSound.Checked = -1
        Else
            MenuFileSound.Checked = 0
        End If
    If gv01F6% = 0 Then
            MenuFileMusic.Checked = -1
        Else
            MenuFileMusic.Checked = 0
        End If
    If gv025C% And gv02D6(gv03A4%).M1F50 <> "c" Then
            MenuFileSave.Enabled = -1
        Else
            MenuFileSave.Enabled = 0
        End If
    If gv02D6(gv03A4%).M1F50 = gc088A Then
            MenuFileLoad.Enabled = 0
            MenuFileNew.Enabled = 0
            If IPPort1.Connected Then
                    MenuFileSetup.Enabled = 0
                Else
                    MenuFileSetup.Enabled = -1
                End If
        Else
            MenuFileLoad.Enabled = -1
            MenuFileNew.Enabled = -1
            If IPPort1.Connected Then
                    MenuFileSetup.Enabled = 0
                Else
                    MenuFileSetup.Enabled = -1
                End If
        End If
End Sub

Private Sub MenuFileExit_Click()
    Screen.MousePointer = 11
    If gv0202% = 0 Then gv0202% = 1: Call sub04F3
    ContMap.Refresh
    gv07DE% = 0
    Empire_Query.Label1.Caption = gv0214$ + "Exit the game?"
    Empire_Query.Com_True.Caption = "Yes"
    Empire_Query.Com_False.Caption = "Cancel"
    Empire_Query.Show
    Do
        DoEvents
        Loop Until gv07DE%
    If ContMap.Enabled Then ContMap.ComFocus.SetFocus
    If gv024E Then
        Unload ContMap
        End If
End Sub

Private Sub MenuFileLoad_Click()
Dim l03E0 As Integer
    Screen.MousePointer = 11
    If gv0202% = 0 Then gv0202% = 1: Call sub04F3
    If gv025C% Then
        Call sub0543
        If Not gv024E Then Exit Sub
        End If
    Screen.MousePointer = 11
    Call sub04F3
    Call sub02AB(0)
    Box_WhoseTurn.Picture = LoadPicture(""): Box_WhoseTurn.Visible = 0
    PicFlag.Picture = LoadPicture(""): PicFlag.Visible = 0
    Picture1.Picture = LoadPicture(AppResc$ + "\" + "cont7.bmp")
    Picture3.BackColor = QBColor(7)
    For l03E0% = 1 To gv02C6%
        gv0260(l03E0%).M1E9A = 0
        gv0260(l03E0%).M1ECC = 7
        Next
    gv025C% = 0: gv044C% = 1: Call sub0496(0)
    SaveForm.Show 1
    ComMode.Visible = -1
    Image_Help.Visible = -1
End Sub

Private Sub MenuFileMusic_Click()
    Screen.MousePointer = 11
    If gv01F6% = 0 Then
            gv01F6% = 1
            Call sub04F3
        Else
            gv01F6% = 0
        End If
    Screen.MousePointer = 0
End Sub

Private Sub MenuFileNew_Click()
    Call sub057B
    If gv025C% Then Exit Sub
    Get_New_Info.Show 1
End Sub

Private Sub MenuFileSave_Click()
   Screen.MousePointer = 11
   gv044C% = 0
   SaveForm.Show 1
End Sub

Private Sub MenuFileScores_Click()
    ContMap.MousePointer = 11
    gv0558% = 2
    If gv0714% Then
            ContMap.Enabled = 0
            TurnForm.Show
        Else
            TurnForm.Show 1
        End If
End Sub

Private Sub MenuFileSetup_Click()
Dim l03EE As Integer
Dim l03F4 As Integer
    Screen.MousePointer = 11
    l03EE% = gv0206%
    ConfigForm.Show 1
    If l03EE% <> gv0206% Then
        Screen.MousePointer = 11
        ContMap.Picture1.Picture = LoadPicture(AppResc$ + "\" + "cont7.bmp")
        ContMap.Refresh
        For l03F4% = 1 To gv02C6%
            Screen.MousePointer = 11
            If gv0260(l03F4%).M1E9A > 0 Then
                Call sub02F3(l03F4%, gv0260(l03F4%).M1ECC)
                ContMap.Refresh
                End If
            Next
        Screen.MousePointer = 0
        End If
End Sub

Private Sub MenuFileSound_Click()
    Screen.MousePointer = 11
    If gv01F4% = 0 Then
            gv01F4% = 1
        Else
            gv01F4% = 0
        End If
     Screen.MousePointer = 0
End Sub

Private Sub MenuHelp_Click()
    If IPPort1.Connected Then
            MenuHelpAbout.Enabled = 0
            MenuHelpOrder.Enabled = 0
            MenuHelpContact.Enabled = 0
        Else
            MenuHelpAbout.Enabled = -1
            MenuHelpOrder.Enabled = -1
            MenuHelpContact.Enabled = -1
        End If
End Sub

Private Sub MenuHelpAbout_Click()
    Screen.MousePointer = 11
    gv0558% = 0
    AAAForm.Show 1
End Sub

Private Sub MenuHelpBenefits_Click()
    Call sub089A(10)
End Sub

Private Sub MenuHelpContact_Click()
    On Error Resume Next
    Screen.MousePointer = 11
    InfoForm.Show 1
End Sub

Private Sub MenuHelpContents_Click()
    Call sub089A(1)
End Sub

Private Sub MenuHelpOrder_Click()
    If gv0202% = 0 Then gv0202% = 1: Call sub04F3
    Screen.MousePointer = 11
    OrderForm.Show 1
End Sub

Private Sub MenuInternet_Click()
    If IPPort1.Connected Or IPD1.Listening Then
            MenuInternetConnect.Caption = "&Disconnect"
            MenuInternetConnect.Enabled = 1
            MenuInternetHost.Enabled = 0
            MenuInternetStatus.Enabled = 0
        Else
            MenuInternetConnect.Enabled = -1
            MenuInternetHost.Enabled = -1
            MenuInternetStatus.Enabled = -1
        End If
End Sub

Private Sub MenuInternetConnect_Click()
    Call ComConnect_Click
End Sub

Private Sub MenuInternetHost_Click()
    Call ComHost_Click
End Sub

Private Sub MenuInternetStatus_Click()
    Screen.MousePointer = 11
    SetupForm.Show 1
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = ""
End Sub

Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim l0442 As Long
Dim l0444 As Long
Dim l0446 As Long
Dim l0448 As Long
Dim l044A As String
Dim l044C As Variant
Dim l0450 As Integer
Dim l0452 As Integer
Dim l0454 As Long
Dim l0456 As String
Dim l0458 As Integer
Dim l045A As String
Dim l045C As Integer
Dim l045E As Integer
Dim l0460 As Long
Dim l0462 As String
    If Shift <> 6 Or IPPort1.Connected Then Exit Sub
    Screen.MousePointer = 11
    gv0694% = 2
    InputForm.Show 1
    If gv0696$ <> "" Then
        If Len(gv0696$) < 10 Then
            MsgBox "Invalid Registration Code"
            Exit Sub
            End If
        l0442& = Val(Left$(gv07D2$, 5))
        l0444& = Asc(Mid$(gv07D2$, 12)) \ 2
        l0442& = l0442& * l0444&
        l0446& = Val(Mid$(gv07D2$, 7, 2))
        l0444& = Asc(Mid$(gv07D2$, 14)) * 2
        l0446& = l0446& * l0444&
        l0448& = Val(Mid$(gv07D2$, 9, 2))
        l0444& = Asc(Mid$(gv07D2$, 13)) \ 3
        l0448& = l0448& * l0444&
        l044A$ = Trim$(Str$(l0446&)) + Trim$(Str$(l0442&)) + Trim$(Str$(l0448&))
        If l044A$ = gv0696$ Then
                Randomize Timer
                l044C = Date
                For l0450% = 1 To Len(l044C)
                    l0452% = Asc(Mid$(l044C, l0450%, 1)) * 3
                    l044A$ = l044A$ + Format(l0452%, "000")
                    Next
                l0454& = Int(((Len(l044A$) - 4) - 1 + 1) * Rnd + 1)
                Mid$(l044A$, l0454&, 4) = "0101"
                l0456$ = String$(144, " ")
                l0458% = GetWindowsDirectory(l0456$, 144)
                l045A$ = Left$(Trim$(l0456$), Len(Trim$(l0456$)) - 1)
                If Right$(l045A$, 1) <> "\" Then
                    l045A$ = l045A$ + "\"
                    End If
                l045C% = FreeFile
                Open l045A$ + "winemcfg.sys" For Output As l045C%
                Print #l045C%, "[System Segment Address]"
                Print #l045C%, l044A$
                Close l045C%
                TrialDays$ = "1.5"
                l045E% = FreeFile
                Open AppData$ + "\empfiles\pictemp9.bmp" For Binary As l045E%
                l0460& = LOF(l045E%) - 100
                l0462$ = "C"
                Put #l045E%, l0460&, l0462$
                Close l045E%
                MsgBox "Thank you for registering!"
            Else
                MsgBox "Invalid Registration Code"
            End If
        End If
End Sub

Private Sub Picture1_Paint()
    ContMap.Refresh
End Sub

Private Sub Picture3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = "Flag Color And Picture Of The Current Player."
End Sub

Private Sub Picture8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Label1.Caption = ""
End Sub

Private Sub Picture9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Label1.Caption = ""
End Sub

Private Sub SaveGames_Click()
End Sub

Private Sub sub09C5()
    Frame_Info.Visible = 0
    Call sub02D4(0)
    If gv030A% = 1 Then Call sub0496(-1)
End Sub

Private Sub sub0A87()
Dim l01B4 As Integer
Dim l01BE As Integer
Dim l01C0 As Integer
Dim l01C2 As Integer
Dim l01C4 As Integer
Dim l01D0 As Integer
    gv0554% = 0: gv0556% = 0
    Screen.MousePointer = 11
    Screen.MousePointer = 0
    Do
        Call sub0500
        If gv02D6(gv03A4%).M1F50 = gc088A Or gv02D6(gv03A4%).M1F50 = gc088E Then
            If gv055A% = 0 And gv01F6% = 0 And l01B4% = 0 Then
                Screen.MousePointer = 11
                gv0252% = gv0252% + 1
                If gv0252% = 7 Then gv0252% = 1
                If gv01F6% = 0 Then Call sub02E3("cplay" + LTrim$(Str$(gv0252%)) + ".mid")
                Screen.MousePointer = 0
                End If
            l01B4% = 1
            End If
        If gv055A% Then
            Call sub0BC4
            End If
        If gv02D6(gv03A4%).M1F50 = gc088A Or gv02D6(gv03A4%).M1F50 = gc088E Then
            If gv0714% Then
                ComConnect.Enabled = 0
                ComMode.Enabled = 0
                End If
            Call sub02BB(0)
            Call sub02AB(0)
            MenuFileExit.Enabled = -1
            If gv055C% = 0 Then
                Call sub0290(1.5)
                End If
            Call sub09C5
            If gv02D6(gv03A4%).M1F50 = gc088A Then Call sub061F(l01BE%, l01C0%)
            If gv030A% > 8 Then
                l01C2% = 0
                For l01C4% = 1 To gv02C6%
                    If gv0260(l01C4%).M1E9A = gv03A4% Then l01C2% = l01C2% + 1
                    Next
                If l01C2% < 2 Then
                    gv0554% = gv03A4%
                    Do
                        l01D0% = Int(((8) - 1 + 1) * Rnd + 1)
                        If (gv02D6(l01D0%).M1F5D = m00BA And l01D0% <> gv03A4%) Then
                            gv0556% = l01D0%: Exit Do
                            End If
                        Loop
                    gv0520% = 0
                    Call sub03F4(gv0554%, gv0556%, 1)
                    gv02D6(gv03A4%).M1F5D = mc0162
                    End If
                End If
            End If
        Loop While gv02D6(gv03A4%).M1F50 = gc088A
End Sub

Private Sub sub0BC4()
Dim l027E As Integer
Dim l0280 As Integer
Dim l0288 As String
Dim l028A As String
Dim l028C As String
Dim l028E As String
Dim l0290 As String
    ContMap.Enabled = -1
    If gv07AE% Then Call sub03E1(0)
    Call sub0496(0)
    ContMap.Picture3.BackColor = gv02D6(gv03A4%).M1ECC
    If gv02D6(gv03A4%).M1F50 = gc088A Then l027E% = 3 Else l027E% = 0
    If gv0714% Then
            ContMap.Box_WhoseTurn.Picture = LoadPicture(AppData$ + "\empfiles\" + "pictemp" + LTrim$(Str$(gv055A%)) + ".bmp")
        Else
            ContMap.Box_WhoseTurn.Picture = LoadPicture(AppResc$ + "\" + "Genr" + LTrim$(Str$(gv055A% + l027E%)) + ".bmp")
        End If
    ContMap.PicFlag.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv055A%)) + ".bmp")
    ContMap.Box_WhoseTurn.Left = ((ContMap.Picture3.Width - ContMap.Box_WhoseTurn.Width) / 2)
    ContMap.Box_WhoseTurn.Top = ((ContMap.Picture3.Height - ContMap.Box_WhoseTurn.Height) / 2)
    Call sub03A5
    Call sub03B8
    For l0280% = 1 To gv02C6%
        If gv0260(l0280%).M1E9A <> gv055A% Then
            Call sub02F3(l0280%, gv02D6(gv055A%).M1ECC)
            End If
        Next
    ReDim gv0260(0) As T1E0F
    Call sub0290(3)
    gv0558% = 0
    TurnForm.Show 1
    gv07DE% = 0
    Empire_Query.Label1.Caption = "Thanks For Playing World Empire IV!"
    Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
    Empire_Query.Com_True.Caption = "Okay"
    Empire_Query.Com_False.Visible = 0
    Empire_Query.Show
    Do
        DoEvents
        Loop Until gv07DE%
    If ContMap.Enabled Then ContMap.ComFocus.SetFocus
    ContMap.Refresh
    gv025C% = 0
    Call sub057B
    Call sub0496(0)
    Call sub02AB(0)
    l0288$ = ""
    l028A$ = ""
    l028C$ = ""
    l028E$ = ""
    l0290$ = ""
    Call sub0253(l0288$, l028A$, l028C$, l028E$, l0290$)
    Call sub0446
End Sub

Private Sub sub0BF8()
    If gv071A% Then
        MsgBox "No Need To Update Photos On Host."
        Exit Sub
        End If
End Sub

Private Sub sub0C0A()
    Label1.Caption = "Downloads Other Players Photos From The Host"
End Sub

Private Sub sub100F()
    If Val(TrialDays$) = Int(Val(TrialDays$)) Then
        ContMap.Refresh
        gv07DE% = 0
        Empire_Query.Label1.Caption = "World Empire IV is ShareWare.  Please register soon!" + gv0214$ + gv0214$ + "Just call 1-800-854-4902 with your MasterCard or VISA number!"
        Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
        Empire_Query.Com_True.Caption = "Okay"
        Empire_Query.Com_False.Visible = 0
        Empire_Query.Show
        Do
            DoEvents
            Loop Until gv07DE%
        If ContMap.Enabled Then ContMap.ComFocus.SetFocus
        End If
End Sub

Private Sub Timer1_Timer()
Dim l047E As String
Dim l0480 As Integer
Dim l0482 As String
Dim l0484 As String
Dim l0488 As Long
Dim l048C As Integer
    l047E$ = "status midi mode"
    l0480% = 255
    l0482$ = String$(255, 0)
    l0484$ = String$(255, 0)
    l0488& = mciSendString(l047E$, l0482$, l0480%, ContMap.hwnd)
    l048C% = mciGetErrorString(l0488&, l0484$, l0480%)
    If InStr(l0482$, "stopped") Then
        gv0204 = True
    End If
End Sub

