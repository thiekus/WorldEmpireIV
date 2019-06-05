VERSION 4.00
Begin VB.Form InputForm 
   Appearance      =   0  'Flat
   BackColor       =   &H000000FF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Chip:"
   ClientHeight    =   1995
   ClientLeft      =   3420
   ClientTop       =   4920
   ClientWidth     =   3795
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
   Height          =   2400
   Icon            =   "INPUTFOR.frx":0000
   Left            =   3360
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1995
   ScaleWidth      =   3795
   Top             =   4575
   Width           =   3915
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Okay"
      Default         =   -1  'True
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   1
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   1455
      TabIndex        =   1
      Top             =   1380
      Width           =   1035
   End
   Begin VB.TextBox TextInput 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   300
      TabIndex        =   0
      Top             =   885
      Width           =   3195
   End
   Begin VB.Label LabelInput 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00808000&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H0000FFFF&
      Height          =   645
      Left            =   300
      TabIndex        =   2
      Top             =   180
      Width           =   3165
      WordWrap        =   -1  'True
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00000080&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H0000FFFF&
      Height          =   1875
      Left            =   60
      Top             =   60
      Width           =   3675
   End
End
Attribute VB_Name = "InputForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' INPUTFOR.FRM
Option Explicit

Private Sub ComOkay_Click()
    gv0696$ = Trim$(TextInput.Text)
    Unload InputForm
End Sub

Private Sub Form_Activate()
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    'InputForm.Left = (Screen.Width - InputForm.Width) / 2
    'InputForm.Top = (Screen.Height - InputForm.Height) / 2
    SetCenterOfForm ContMap, InputForm
    Select Case gv0694%
        Case 1
            LabelInput.Caption = "Please Enter A Path Where Empire Can Save Games (For Example, 'C:\EMPIRE'):"
            TextInput.MaxLength = 100
        Case 2
            InputForm.Caption = "Run Code #" + gv07D2$
            LabelInput.Caption = "Enter Your Registration Key"
            TextInput.MaxLength = 40
        Case Else
        End Select
End Sub

