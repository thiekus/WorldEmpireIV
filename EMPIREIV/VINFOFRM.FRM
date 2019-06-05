VERSION 4.00
Begin VB.Form InfoForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Contacting Viable Software Alternatives"
   ClientHeight    =   5325
   ClientLeft      =   1530
   ClientTop       =   1920
   ClientWidth     =   7335
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
   Height          =   5910
   Icon            =   "VINFOFRM.frx":0000
   Left            =   1410
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5325
   ScaleWidth      =   7335
   Top             =   1455
   Width           =   7575
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Default         =   -1  'True
      Height          =   435
      Left            =   5925
      TabIndex        =   9
      Top             =   4725
      Width           =   1170
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Mod by Thiekus"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   540
      Left            =   4290
      TabIndex        =   21
      Top             =   735
      Width           =   2850
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "World Empire IV"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   540
      Left            =   4020
      TabIndex        =   20
      Top             =   315
      Width           =   3270
   End
   Begin VB.Label Label19 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   $"VINFOFRM.frx":030A
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
      Height          =   1170
      Left            =   3990
      TabIndex        =   19
      Top             =   3900
      Width           =   3060
   End
   Begin VB.Label Label18 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "support@viablesoftware.com"
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   4200
      TabIndex        =   18
      Top             =   3600
      Width           =   3165
   End
   Begin VB.Label Label17 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- Registered Owner support is also available via e-mail. Send queries to :"
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
      Height          =   435
      Left            =   3990
      TabIndex        =   17
      Top             =   3150
      Width           =   3165
   End
   Begin VB.Label Label16 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "(Be sure to identify the software you are ordering and the size of the diskette you'd like it sent on.)"
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
      Height          =   750
      Left            =   210
      TabIndex        =   16
      Top             =   4260
      Width           =   3585
   End
   Begin VB.Label Label15 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Las Vegas, NV 89193-8134"
      ForeColor       =   &H0000FF00&
      Height          =   330
      Left            =   420
      TabIndex        =   15
      Top             =   4020
      Width           =   2955
   End
   Begin VB.Label Label14 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "P.O Box 98134"
      ForeColor       =   &H0000FF00&
      Height          =   330
      Left            =   420
      TabIndex        =   14
      Top             =   3780
      Width           =   2955
   End
   Begin VB.Label Label13 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Viable Software Alternatives"
      ForeColor       =   &H0000FF00&
      Height          =   330
      Left            =   420
      TabIndex        =   13
      Top             =   3540
      Width           =   2955
   End
   Begin VB.Label Label12 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- Or send a check or money order (US Funds) to:"
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
      Height          =   435
      Left            =   210
      TabIndex        =   12
      Top             =   3255
      Width           =   3690
   End
   Begin VB.Label Label11 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "http://viablesoftware.com/order"
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   420
      TabIndex        =   11
      Top             =   3000
      Width           =   3165
   End
   Begin VB.Label Label10 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- Order Securely On-Line at:"
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
      Height          =   435
      Left            =   210
      TabIndex        =   10
      Top             =   2730
      Width           =   3060
   End
   Begin VB.Label Label9 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "(Orders ONLY, Please)"
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
      Height          =   435
      Left            =   1920
      TabIndex        =   8
      Top             =   2415
      Width           =   2115
   End
   Begin VB.Label Label8 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "1-800-854-4902"
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   420
      TabIndex        =   7
      Top             =   2460
      Width           =   2430
   End
   Begin VB.Label Label7 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- To Order, call Toll Free:"
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
      Height          =   435
      Left            =   210
      TabIndex        =   6
      Top             =   2205
      Width           =   2745
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "1-702-261-0820"
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   4200
      TabIndex        =   5
      Top             =   2835
      Width           =   2115
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- For additional support, Registered owners may also call (be sure to read the help file first):"
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
      Height          =   645
      Left            =   3990
      TabIndex        =   4
      Top             =   2205
      Width           =   3165
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "http://viablesoftware.com/forum"
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   4200
      TabIndex        =   3
      Top             =   1920
      Width           =   3165
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- For technical support, visit our forum."
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
      Height          =   435
      Left            =   3990
      TabIndex        =   2
      Top             =   1680
      Width           =   3270
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "http://viablesoftware.com"
      ForeColor       =   &H0000FF00&
      Height          =   435
      Left            =   420
      TabIndex        =   1
      Top             =   1920
      Width           =   2955
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "- Viable Software is on the Web at:"
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
      Height          =   435
      Left            =   210
      TabIndex        =   0
      Top             =   1680
      Width           =   3270
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   1875
      Left            =   1920
      Picture         =   "VINFOFRM.frx":0399
      Top             =   210
      Width           =   3435
   End
End
Attribute VB_Name = "InfoForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' VINFOFRM.FRM
Option Explicit
Const mc0026 = 1 ' &H1%

Private Sub Command1_Click()
    Unload InfoForm
End Sub

Private Sub Form_Activate()
Dim l0020 As Variant
' Const mc0026 = 1 ' &H1%
    l0020 = AppResc$ + "\c7.wav"
    If gv01F4% = 0 Then Call sndPlaySound(l0020, mc0026)
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    'InfoForm.Left = (Screen.Width - InfoForm.Width) / 2
    'InfoForm.Top = (Screen.Height - InfoForm.Height) / 2
    SetCenterOfForm ContMap, InfoForm
End Sub

