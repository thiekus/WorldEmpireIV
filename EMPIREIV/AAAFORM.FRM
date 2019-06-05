VERSION 4.00
Begin VB.Form AAAForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4260
   ClientLeft      =   2250
   ClientTop       =   3150
   ClientWidth     =   4995
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
   Height          =   4845
   Icon            =   "AAAFORM.frx":0000
   Left            =   2130
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4260
   ScaleWidth      =   4995
   Top             =   2685
   Width           =   5235
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Okay"
      Height          =   330
      Left            =   3885
      TabIndex        =   1
      Top             =   3780
      Visible         =   0   'False
      Width           =   960
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Mod by Thiekus"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   600
      TabIndex        =   5
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Image Picture1 
      Appearance      =   0  'Flat
      Height          =   2610
      Left            =   450
      Picture         =   "AAAFORM.frx":030A
      Top             =   210
      Width           =   4170
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "All Rights Reserved"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   225
      Left            =   1155
      TabIndex        =   4
      Top             =   3750
      Visible         =   0   'False
      Width           =   2745
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Visit ""http://viablesoftware.com"" for the latest version."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   225
      Left            =   105
      TabIndex        =   3
      Top             =   3255
      Visible         =   0   'False
      Width           =   4740
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Version 3.01 For Windows"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   225
      Left            =   1140
      TabIndex        =   2
      Top             =   3045
      Visible         =   0   'False
      Width           =   2745
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Copyright © 1996 by Viable Software Alternatives"
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
      Height          =   225
      Left            =   255
      TabIndex        =   0
      Top             =   3510
      Width           =   4515
   End
End
Attribute VB_Name = "AAAForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' AAAFORM.FRM
Option Explicit
Const mc0026 = 1 ' &H1%

Private Sub Command1_Click()
    Unload AAAForm
End Sub

Private Sub Form_Activate()
Dim l0020 As Variant
' Const mc0026 = 1 ' &H1%
    Refresh
    l0020 = AppResc$ + "\c7.wav"
    If gv01F4% = 0 Then Call sndPlaySound(l0020, mc0026)
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    'AAAForm.Left = (Screen.Width - AAAForm.Width) / 2
    'AAAForm.Top = (Screen.Height - AAAForm.Height) / 2
    SetCenterOfForm ContMap, AAAForm
    Label1.Visible = -1
    Label2.Visible = -1
    Label4.Visible = -1
    Command1.Visible = -1
End Sub

