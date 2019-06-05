VERSION 4.00
Begin VB.Form ShareForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Shareware Notice"
   ClientHeight    =   4785
   ClientLeft      =   2070
   ClientTop       =   2475
   ClientWidth     =   7365
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
   Height          =   5190
   Icon            =   "SHAREFOR.frx":0000
   Left            =   2010
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4785
   ScaleWidth      =   7365
   Top             =   2130
   Width           =   7485
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Order &Form"
      Height          =   315
      Left            =   3690
      TabIndex        =   0
      Top             =   4380
      Width           =   1155
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Okay"
      Default         =   -1  'True
      Height          =   315
      Left            =   2490
      TabIndex        =   6
      Top             =   4380
      Width           =   1095
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   3720
      TabIndex        =   8
      Top             =   3300
      Width           =   3435
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "CompuServe Users Can GO SWREG, Program #11128"
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   5040
      TabIndex        =   7
      Top             =   120
      Width           =   2295
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   480
      Left            =   480
      Picture         =   "SHAREFOR.frx":030A
      Top             =   120
      Width           =   480
   End
   Begin VB.Line Line8 
      BorderColor     =   &H00FFFFFF&
      X1              =   4800
      X2              =   4800
      Y1              =   180
      Y2              =   600
   End
   Begin VB.Line Line7 
      X1              =   1140
      X2              =   1140
      Y1              =   180
      Y2              =   600
   End
   Begin VB.Line Line6 
      BorderColor     =   &H00FFFFFF&
      X1              =   1140
      X2              =   4800
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Line Line5 
      X1              =   1140
      X2              =   4800
      Y1              =   180
      Y2              =   180
   End
   Begin VB.Line Line4 
      X1              =   480
      X2              =   6840
      Y1              =   2370
      Y2              =   2370
   End
   Begin VB.Line Line3 
      X1              =   465
      X2              =   6825
      Y1              =   870
      Y2              =   870
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   180
      TabIndex        =   5
      Top             =   3300
      Width           =   3435
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   $"SHAREFOR.frx":0614
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   180
      TabIndex        =   4
      Top             =   2580
      Width           =   6975
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   480
      X2              =   6840
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   435
      Left            =   480
      TabIndex        =   3
      Top             =   1140
      Width           =   6375
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   480
      X2              =   6840
      Y1              =   900
      Y2              =   900
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   $"SHAREFOR.frx":06F3
      ForeColor       =   &H80000008&
      Height          =   795
      Left            =   180
      TabIndex        =   2
      Top             =   1560
      Width           =   6975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "World Empire IV is NOT Freeware."
      ForeColor       =   &H80000008&
      Height          =   435
      Left            =   -180
      TabIndex        =   1
      Top             =   300
      Width           =   6375
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "ShareForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' SHAREFOR.FRM
Option Explicit

Private Sub Command1_Click()
    Unload ShareForm
End Sub

Private Sub Command2_Click()
    Screen.MousePointer = 11
    OrderForm.Show 1
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    ShareForm.Left = (Screen.Width - ShareForm.Width) / 2
    ShareForm.Top = (Screen.Height - ShareForm.Height) / 2
    Label3.Caption = "You are on day " + TrialDays$ + " of your 30-day evaluation period."
    Label5.Caption = "Order By Mail From:" + gv0214$ + "Viable Software Alternatives" + gv0214$ + "PO Box 98134" + gv0214$ + "Las Vegas, NV  89193-8134" + gv0214$ + "USA"
    Label7.Caption = "If You're In Europe:" + gv0214$ + "The Thompson Partnership" + gv0214$ + "Lion Buildings, Market Place" + gv0214$ + "Uttoxeter, Staffs  ST14 5DE" + gv0214$ + "United Kingdom"
End Sub

