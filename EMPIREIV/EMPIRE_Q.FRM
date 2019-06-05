VERSION 4.00
Begin VB.Form Empire_Query 
   Appearance      =   0  'Flat
   BackColor       =   &H00800000&
   Caption         =   "WEIV Dialog"
   ClientHeight    =   4395
   ClientLeft      =   2535
   ClientTop       =   2505
   ClientWidth     =   3525
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
   Height          =   4980
   Icon            =   "EMPIRE_Q.frx":0000
   Left            =   2415
   LinkMode        =   1  'Source
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4395
   ScaleWidth      =   3525
   Top             =   2040
   Width           =   3765
   Begin VB.CommandButton Com_False 
      Appearance      =   0  'Flat
      BackColor       =   &H00C00000&
      Cancel          =   -1  'True
      Default         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   1770
      TabIndex        =   1
      Top             =   3765
      Width           =   1335
   End
   Begin VB.CommandButton Com_True 
      Appearance      =   0  'Flat
      BackColor       =   &H00C00000&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   3780
      Width           =   1335
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      ForeColor       =   &H80000008&
      Height          =   1950
      Left            =   240
      ScaleHeight     =   1920
      ScaleWidth      =   2895
      TabIndex        =   0
      Top             =   240
      Width           =   2925
   End
   Begin VB.Line Line4 
      BorderWidth     =   2
      X1              =   3510
      X2              =   3510
      Y1              =   30
      Y2              =   4110
   End
   Begin VB.Line Line3 
      BorderWidth     =   2
      X1              =   3480
      X2              =   0
      Y1              =   4380
      Y2              =   4380
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FF0000&
      X1              =   0
      X2              =   0
      Y1              =   4380
      Y2              =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      X1              =   0
      X2              =   3510
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00800000&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   1425
      Left            =   120
      TabIndex        =   3
      Top             =   2280
      Width           =   3255
   End
End
Attribute VB_Name = "Empire_Query"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' EMPIRE_Q.FRM
Option Explicit
Const mc0036 = 1 ' &H1%

Private Sub Com_False_Click()
   gv024E = 0
    If gv07AE% Then
            CountMap.Enabled = -1
        Else
            ContMap.Enabled = -1
        End If
    gv07DE% = -1
   Unload Empire_Query
End Sub

Private Sub Com_True_Click()
   gv024E = -1
   Empire_Query.Hide
   Refresh
   If gv05A4& Then
       Empire_Query.Left = gv05A4&
       gv05A4& = 0
       End If
    If gv07AE% Then
            CountMap.Enabled = -1
        Else
            ContMap.Enabled = -1
        End If
    gv07DE% = -1
   Unload Empire_Query
End Sub

Private Sub Form_Activate()
Dim l0030 As Variant
' Const mc0036 = 1 ' &H1%
    l0030 = AppResc$ + "\c7.wav"
    If gv01F4% = 0 Then Call sndPlaySound(l0030, mc0036)
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    If (ContMap.Top + 1050 + Empire_Query.Height) < Screen.Height Then
        If (ContMap.Left + 2500 + Empire_Query.Width) < Screen.Width Then
            'Empire_Query.Top = ContMap.Top + 1450
            'Empire_Query.Left = ContMap.Left + 2500
            Empire_Query.Picture1.Picture = LoadPicture(AppResc$ + "\" + "tlogo.bmp")
            End If
        End If
     Picture1.Left = ((Empire_Query.Width - Picture1.Width) / 2) - 45
     If gv07AE% Then
            CountMap.Enabled = 0
         Else
            ContMap.Enabled = 0
         End If
     SetCenterOfForm ContMap, Empire_Query
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If gv07DE% = 0 Then
        Cancel = -1
        Exit Sub
        End If
End Sub

