VERSION 4.00
Begin VB.Form NoticeForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   Caption         =   "World Empire III"
   ClientHeight    =   3480
   ClientLeft      =   2700
   ClientTop       =   2235
   ClientWidth     =   3810
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
   Height          =   4065
   Icon            =   "NOTCFORM.frx":0000
   Left            =   2580
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3480
   ScaleWidth      =   3810
   Top             =   1770
   Width           =   4050
   Begin VB.CommandButton ComOkay 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "&Okay"
      Default         =   -1  'True
      Height          =   345
      Left            =   1260
      TabIndex        =   0
      Top             =   3000
      Width           =   1275
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   2340
      Left            =   420
      Picture         =   "NOTCFORM.frx":030A
      Top             =   840
      Width           =   2910
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H00FFFFFF&
      Height          =   3045
      Left            =   255
      TabIndex        =   1
      Top             =   225
      Visible         =   0   'False
      Width           =   3285
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "NoticeForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' NOTCFORM.FRM
Option Explicit
Dim m001A As Integer

Private Sub ComOkay_Click()
    gv07C8% = 0
    m001A% = 0
    Unload NoticeForm
    If gv01F6% = 0 And gv03A4% <> gv07A8% Then
        Call sub02E3("cplay" + LTrim$(Str$(gv0252%)) + ".mid")
        End If
End Sub

Private Sub Form_Activate()
    NoticeForm.Refresh
    If m001A% = 0 Then
        If gv01F6% = 0 Then Call sub02E3("surrend.mid")
        m001A% = 1
        End If
End Sub

Private Sub Form_Load()
    'NoticeForm.Left = ContMap.Left
    'NoticeForm.Top = ContMap.Top
    SetCenterOfForm ContMap, NoticeForm
    Image1.Picture = LoadPicture(AppResc$ + "\tfishing.bmp")
End Sub

