VERSION 4.00
Begin VB.Form OrderForm 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Order Form"
   ClientHeight    =   6765
   ClientLeft      =   1335
   ClientTop       =   1560
   ClientWidth     =   9225
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
   Height          =   7350
   Icon            =   "PORDER.frx":0000
   Left            =   1215
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6765
   ScaleWidth      =   9225
   Top             =   1095
   Width           =   9465
   Begin VB.Frame Frame6 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Location:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   720
      Left            =   210
      TabIndex        =   46
      Top             =   840
      Width           =   4425
      Begin VB.OptionButton Option2 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Europe"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   2520
         TabIndex        =   45
         Top             =   285
         Width           =   1425
      End
      Begin VB.OptionButton Option1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "USA/Canada/Etc..."
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   360
         TabIndex        =   47
         Top             =   285
         Value           =   -1  'True
         Width           =   1905
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   435
      Left            =   9450
      ScaleHeight     =   0.281
      ScaleMode       =   5  'Inch
      ScaleWidth      =   0.26
      TabIndex        =   41
      Top             =   2280
      Width           =   405
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   60
         ScaleHeight     =   0.156
         ScaleMode       =   5  'Inch
         ScaleWidth      =   0.177
         TabIndex        =   42
         Top             =   90
         Width           =   285
      End
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Close"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   1530
      TabIndex        =   39
      Top             =   6150
      Width           =   3075
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "&Print Order Form"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   1530
      TabIndex        =   38
      Top             =   5580
      Width           =   3075
   End
   Begin VB.Frame Frame5 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Credit Card Information:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   975
      Left            =   180
      TabIndex        =   29
      Top             =   4530
      Visible         =   0   'False
      Width           =   4455
      Begin VB.TextBox TextCardNumber 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
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
         Left            =   1650
         TabIndex        =   13
         Top             =   240
         Width           =   2475
      End
      Begin VB.TextBox TextExpireDate 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
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
         Left            =   1650
         TabIndex        =   14
         Top             =   570
         Width           =   1335
      End
      Begin VB.Label Label8 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Credit Card Number:"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   60
         TabIndex        =   36
         Top             =   300
         Width           =   1545
      End
      Begin VB.Label Label7 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Expiration:"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   540
         TabIndex        =   37
         Top             =   630
         Width           =   1005
      End
   End
   Begin VB.Frame Frame4 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Viable Questionaire (optional):"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   5835
      Left            =   4740
      TabIndex        =   31
      Top             =   840
      Width           =   4305
      Begin VB.TextBox TextSuggestions 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1905
         Left            =   90
         MultiLine       =   -1  'True
         TabIndex        =   21
         Top             =   3810
         Width           =   4125
      End
      Begin VB.TextBox TextPrinter 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
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
         Left            =   780
         TabIndex        =   20
         Top             =   3150
         Width           =   2685
      End
      Begin VB.TextBox TextComputer 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
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
         Left            =   780
         TabIndex        =   19
         Top             =   2520
         Width           =   2685
      End
      Begin VB.TextBox TextSource 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1425
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   18
         Top             =   750
         Width           =   4095
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
         Caption         =   "(If packaged, please include Manufacturer;s address)"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   0
         TabIndex        =   43
         Top             =   480
         Width           =   4245
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Any Suggestions? (They're Welcome!)"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   330
         TabIndex        =   35
         Top             =   3540
         Width           =   3735
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Where did you get your shareware copy?"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   390
         TabIndex        =   34
         Top             =   270
         Width           =   3555
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "What kind of computer do you own?"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   510
         TabIndex        =   33
         Top             =   2250
         Width           =   3255
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "What brand and model of printer do you own?"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   150
         TabIndex        =   32
         Top             =   2880
         Width           =   4035
      End
   End
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Disk Size:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1185
      Left            =   180
      TabIndex        =   30
      Top             =   5490
      Width           =   1275
      Begin VB.OptionButton Option525hd 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "5.25 HD"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   240
         TabIndex        =   17
         Top             =   810
         Width           =   1005
      End
      Begin VB.OptionButton Option35dd 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "3.5 DD"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   240
         TabIndex        =   16
         Top             =   510
         Width           =   975
      End
      Begin VB.OptionButton Option35hd 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "3.5 HD"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   240
         TabIndex        =   15
         Top             =   240
         Value           =   -1  'True
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Credit Card:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   945
      Left            =   3180
      TabIndex        =   28
      Top             =   3570
      Visible         =   0   'False
      Width           =   1455
      Begin VB.OptionButton OptionVISA 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "VISA"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   90
         TabIndex        =   11
         Top             =   270
         Value           =   -1  'True
         Width           =   1155
      End
      Begin VB.OptionButton OptionMasterCard 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "MasterCard"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   90
         TabIndex        =   12
         Top             =   570
         Width           =   1305
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Method of Payment:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   945
      Left            =   180
      TabIndex        =   27
      Top             =   3570
      Width           =   2895
      Begin VB.OptionButton OptionMoneyOrder 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Money Order"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1560
         TabIndex        =   10
         Top             =   570
         Width           =   1305
      End
      Begin VB.OptionButton OptionCash 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Cash"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1560
         TabIndex        =   9
         Top             =   270
         Width           =   945
      End
      Begin VB.OptionButton OptionCreditCard 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Credit Card"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   180
         TabIndex        =   8
         Top             =   570
         Width           =   1245
      End
      Begin VB.OptionButton OptionCheck 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         Caption         =   "Check"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   180
         TabIndex        =   7
         Top             =   270
         Value           =   -1  'True
         Width           =   1065
      End
   End
   Begin VB.TextBox TextPhone 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   2520
      TabIndex        =   6
      Top             =   3270
      Width           =   2115
   End
   Begin VB.TextBox TextCountry 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1650
      TabIndex        =   4
      Top             =   2970
      Width           =   2985
   End
   Begin VB.TextBox TextCityState 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1650
      TabIndex        =   3
      Top             =   2670
      Width           =   2985
   End
   Begin VB.TextBox TextAdd2 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1650
      TabIndex        =   2
      Top             =   2370
      Width           =   2985
   End
   Begin VB.TextBox TextAdd1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1650
      TabIndex        =   1
      Top             =   2070
      Width           =   2985
   End
   Begin VB.TextBox TextName 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1650
      TabIndex        =   0
      Top             =   1770
      Width           =   2985
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "(Price Includes 5.24 Pounds VAT)"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   345
      Left            =   2880
      TabIndex        =   49
      Top             =   630
      Width           =   3615
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "CompuServe Users: ""GO SWREG"" and register program #11128"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1005
      Left            =   7560
      TabIndex        =   48
      Top             =   30
      Width           =   1515
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
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
      Height          =   375
      Left            =   1560
      TabIndex        =   44
      Top             =   315
      Width           =   6135
   End
   Begin VB.Line Line4 
      X1              =   9210
      X2              =   9210
      Y1              =   6750
      Y2              =   0
   End
   Begin VB.Line Line3 
      X1              =   0
      X2              =   9420
      Y1              =   6750
      Y2              =   6750
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   0
      Y1              =   6750
      Y2              =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   9420
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Viable Software Alternatives' Order Form"
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
      Height          =   375
      Left            =   1830
      TabIndex        =   40
      Top             =   30
      Width           =   5625
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Telephone (Optional):"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   420
      TabIndex        =   26
      Top             =   3300
      Width           =   2055
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Country:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   240
      TabIndex        =   25
      Top             =   3000
      Width           =   1365
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "City, State, Zip:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   240
      TabIndex        =   24
      Top             =   2700
      Width           =   1395
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Address Line 2:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   240
      TabIndex        =   23
      Top             =   2400
      Width           =   1395
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Address Line 1:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   240
      TabIndex        =   22
      Top             =   2100
      Width           =   1395
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      Caption         =   "Your Name:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   225
      Left            =   240
      TabIndex        =   5
      Top             =   1800
      Width           =   1155
   End
End
Attribute VB_Name = "OrderForm"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
' PORDER.FRM
Option Explicit
Dim m001A As String
Dim m001E As String
Const mc00E0 = 1 ' &H1%

Private Sub Command1_Click()
Dim l002A As Single
Dim l0032 As Single
Dim l00B2 As String
Dim l00C0 As Integer
Dim l00C2 As Integer
Dim l00C4 As Integer
Dim l00C6 As String
Dim l00C8 As String
Dim l00CA As Single
    On Error Resume Next
    Screen.MousePointer = 11
    Printer.FontName = "Arial"
    Printer.Print " ";
    Printer.ScaleMode = 5
    l002A! = Printer.FontSize
    Printer.FontSize = 12
    Printer.FontBold = -1
    If Option1.Value = -1 Then
            Printer.Print Tab(5); "Viable Software Alternatives";
            l0032! = (Printer.ScaleWidth - Printer.TextWidth("Orders (800) 854-4902")) - 0.3
            Printer.CurrentX = l0032!
            Printer.Print "Orders (800) 854-4902"
            Printer.Print Tab(5); "P.O. Box 98134";
            l0032! = (Printer.ScaleWidth - Printer.TextWidth("Phone (618) 549-5227")) - 0.3
            Printer.CurrentX = l0032!
            Printer.Print "Phone (618) 549-5227"
            Printer.Print Tab(5); "Las Vegas, NV   89193-8134"
            Printer.Print
        ElseIf Option2.Value = -1 Then
            Printer.Print Tab(5); "The Thompson Partnership";
            l0032! = (Printer.ScaleWidth - Printer.TextWidth("Orders +44 (0) 889 564601")) - 0.3
            Printer.CurrentX = l0032!
            Printer.Print "Orders +44 (0) 889 564601"
            Printer.Print Tab(5); "Church Croft"
            Printer.Print Tab(5); "Bramshall"
            Printer.Print Tab(5); "Uttoxeter, Staffs  ST14 5DE"
            Printer.Print Tab(5); "England"
            Printer.Print
        Else
        End If
    Printer.FontItalic = -1
    Printer.FontSize = 24
    l0032! = (Printer.ScaleWidth - Printer.TextWidth(m001E$)) / 2
    Printer.CurrentX = l0032!
    Printer.FontUnderline = -1
    Printer.Print m001E$
    Printer.FontUnderline = 0
    Printer.FontSize = l002A!
    Printer.FontBold = 0
    Printer.FontItalic = 0
    Printer.Print
    Printer.Print
    Printer.Print Tab(5); "Please send me 1 Copy of the above program."
    Printer.Print Tab(5); "(Call VSA at 1-800-854-4902 for prices on multiple copies and site licenses.)"
    Printer.Print
    Printer.FontBold = 0
    Printer.Print Tab(5); "Send My Program To:"
    Printer.Print
    Printer.FontBold = -1
    If RTrim$(TextName.Text) <> "" Then Printer.Print Tab(8); TextName.Text
    If RTrim$(TextAdd1.Text) <> "" Then Printer.Print Tab(8); TextAdd1.Text
    If RTrim$(TextAdd2.Text) <> "" Then Printer.Print Tab(8); TextAdd2.Text
    If RTrim$(TextCityState.Text) <> "" Then Printer.Print Tab(8); TextCityState.Text
    If RTrim$(TextCountry.Text) <> "" Then Printer.Print Tab(8); TextCountry.Text
    Printer.Print
    Printer.FontBold = 0
    Printer.Print Tab(5); "I'm paying " + m001A$ + " by ";
    Printer.FontBold = -1
    If OptionCheck.Value = -1 Then
            Printer.Print "Check"; "."
         ElseIf OptionCreditCard.Value = -1 Then
            Printer.Print "Credit Card"; "."
            Printer.Print
            Printer.FontBold = 0
            Printer.Print Tab(5); "Bill the amount to my ";
            Printer.FontBold = -1
            If OptionVISA.Value = -1 Then
                    Printer.Print "VISA Card";
                 ElseIf OptionMasterCard.Value = -1 Then
                    Printer.Print "MasterCard";
                 End If
            Printer.FontBold = 0
            Printer.Print " number: ";
            Printer.FontBold = -1
            Printer.Print TextCardNumber.Text; "."
            Printer.FontBold = 0
            Printer.Print Tab(5); "My card expires: ";
            Printer.FontBold = -1
            Printer.Print TextExpireDate.Text; "."
            Printer.Print
            Printer.FontBold = 0
            Printer.Print Tab(5); "My Signature: ___________________________________________"
         ElseIf OptionCash.Value = -1 Then
            Printer.Print "Cash"; "."
         ElseIf OptionMoneyOrder.Value = -1 Then
            Printer.Print "Money Order"; "."
         End If
    Printer.Print
    Printer.FontBold = 0
    Printer.Print Tab(5); "Please send my program on a ";
    Printer.FontBold = -1
    If Option35hd.Value = -1 Then
            Printer.Print "3.5 High Density";
         ElseIf Option35dd.Value = -1 Then
            Printer.Print "3.5 Double Density";
         ElseIf Option525hd.Value = -1 Then
            Printer.Print "5.25 High Density";
         End If
    Printer.FontBold = 0
    Printer.Print " disk."
    Printer.Print
    If RTrim$(TextPhone.Text) <> "" Then
        Printer.Print Tab(5); "My phone number is ";
        Printer.FontBold = -1
        Printer.Print TextPhone.Text; "."
        Printer.FontBold = 0
        End If
    Printer.FontBold = 0
    Printer.FontItalic = 0
    If RTrim$(TextComputer.Text) <> "" Then
        Printer.Print
        Printer.Print Tab(5); "My Computer is a ";
        Printer.FontBold = -1
        Printer.Print TextComputer.Text; "."
        Printer.FontBold = 0
        End If
    If RTrim$(TextPrinter.Text) <> "" Then
        Printer.Print
        Printer.Print Tab(5); "My Printer is a ";
        Printer.FontBold = -1
        Printer.Print TextPrinter.Text; "."
        Printer.FontBold = 0
        End If
    If RTrim$(TextSource.Text) <> "" Then
        Printer.Print
        Printer.Print Tab(5); "I acquired my shareware version from: "
        Printer.Print
        Printer.FontBold = -1
        l00B2$ = TextSource.Text
        GoSub L29458
        Printer.FontBold = 0
        End If
    If RTrim$(TextSuggestions.Text) <> "" Then
        Printer.Print
        Printer.Print Tab(5); "Suggestion(s): "
        Printer.Print
        Printer.FontBold = -1
        l00B2$ = TextSuggestions.Text
        GoSub L29458
        Printer.FontBold = 0
        End If
    Printer.Print
    Printer.Print Tab(5); "Thank You For Ordering!"
    Printer.EndDoc
    Screen.MousePointer = 0
    Exit Sub

L29458:
    Picture2.FontName = Printer.FontName
    Picture2.FontBold = Printer.FontBold
    Picture2.FontItalic = Printer.FontItalic
    Picture2.FontSize = Printer.FontSize
    l00C0% = 1: l00C2% = 0: l00C4% = 0: l00C6$ = ""
    Do While l00C4% < Len(l00B2$)
        l00C4% = l00C4% + 1
        l00C8$ = Mid$(l00B2$, l00C4%, 1)
        If l00C8$ = Chr$(32) Then
            l00C0% = l00C4%
            End If
        If l00C8$ = Chr$(13) Then
                l00C0% = l00C4% - 1: l00C4% = l00C4% + 1
                Printer.Print Tab(8); Mid$(l00B2$, l00C2% + 1, l00C0% - (l00C2% + 1) + 1)
                l00C2% = l00C4%: l00C6$ = ""
            Else
                l00C6$ = l00C6$ + l00C8$
            End If
        l00CA! = Printer.ScaleWidth - 2
        If (Picture2.TextWidth(Mid$(l00B2$, l00C2% + 1, l00C4% - (l00C2%))) > (l00CA!) And (l00C0% >= (l00C2% + 1))) Or l00C4% = Len(l00B2$) Then
            If l00C4% = Len(l00B2$) Then l00C0% = Len(l00B2$) + 1
            Printer.Print Tab(8); Mid$(l00B2$, l00C2% + 1, l00C0% - (l00C2% + 1))
            l00C2% = l00C0%: l00C6$ = ""
            End If
        Loop
    Return
End Sub

Private Sub Command2_Click()
Dim l00CC As Integer
Dim l00D0 As String
Dim l00D2 As Integer
    l00CC% = FreeFile
    Open AppData$ + "\Ordinfo.vbl" For Output As l00CC%
    Print #l00CC%, TextName.Text
    Print #l00CC%, TextAdd1.Text
    Print #l00CC%, TextAdd2.Text
    Print #l00CC%, TextCityState.Text
    Print #l00CC%, TextCountry.Text
    Print #l00CC%, TextPhone.Text
    Print #l00CC%, TextCardNumber.Text
    Print #l00CC%, TextExpireDate.Text
    If Option1.Value = -1 Then
            Print #l00CC%, "1"
         ElseIf Option2.Value = -1 Then
            Print #l00CC%, "2"
         Else
            Print #l00CC%, "3"
         End If
    If OptionCheck.Value = -1 Then
            Print #l00CC%, "1"
         ElseIf OptionCreditCard.Value = -1 Then
            Print #l00CC%, "2"
         ElseIf OptionCash.Value = -1 Then
            Print #l00CC%, "3"
         ElseIf OptionMoneyOrder.Value = -1 Then
            Print #l00CC%, "4"
         End If
    If OptionVISA.Value = -1 Then
            Print #l00CC%, "1"
         ElseIf OptionMasterCard.Value = -1 Then
            Print #l00CC%, "2"
         End If
    If Option35hd.Value = -1 Then
            Print #l00CC%, "1"
         ElseIf Option35dd.Value = -1 Then
            Print #l00CC%, "2"
         ElseIf Option525hd.Value = -1 Then
            Print #l00CC%, "3"
         End If
    Print #l00CC%, TextComputer.Text
    Print #l00CC%, TextPrinter.Text
    l00D0$ = TextSource.Text
    If InStr(l00D0$, Chr$(13)) > 0 Then
        l00D2% = 0
        Do
            l00D2% = InStr(l00D2% + 1, l00D0$, Chr$(13))
            If l00D2% > 0 Then Mid$(l00D0$, l00D2%) = Chr$(246)
            Loop While l00D2%
        l00D2% = 0
        Do
            l00D2% = InStr(l00D2% + 1, l00D0$, Chr$(10))
            If l00D2% > 0 Then Mid$(l00D0$, l00D2%) = Chr$(247)
            Loop While l00D2%
        End If
    Print #l00CC%, l00D0$
    l00D0$ = TextSuggestions.Text
    If InStr(l00D0$, Chr$(13)) > 0 Then
        l00D2% = 0
        Do
            l00D2% = InStr(l00D2% + 1, l00D0$, Chr$(13))
            If l00D2% > 0 Then Mid$(l00D0$, l00D2%) = Chr$(246)
            Loop While l00D2%
        l00D2% = 0
        Do
            l00D2% = InStr(l00D2% + 1, l00D0$, Chr$(10))
            If l00D2% > 0 Then Mid$(l00D0$, l00D2%) = Chr$(247)
            Loop While l00D2%
        End If
    Print #l00CC%, l00D0$
    Close l00CC%
    Unload OrderForm
End Sub

Private Sub Form_Activate()
Dim l00DA As Variant
' Const mc00E0 = 1 ' &H1%
    l00DA = AppResc$ + "\c7.wav"
    If gv01F4% = 0 Then Call sndPlaySound(l00DA, mc00E0)
    Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
Dim l00E2 As Integer
Dim l00E4 As String
Dim l00F2 As Integer
    On Error Resume Next
    'OrderForm.Left = (Screen.Width - OrderForm.Width) / 2
    'OrderForm.Top = (Screen.Height - OrderForm.Height) / 2
    SetCenterOfForm ContMap, OrderForm
    m001E$ = "World Empire IV"
    OrderForm.Caption = "World Empire IV Order Form"
    l00E2% = FreeFile
    Open AppData$ + "\Ordinfo.vbl" For Append As l00E2%
    If LOF(l00E2%) > 0 Then
        Close l00E2%
        l00E2% = FreeFile
        Open AppData$ + "\Ordinfo.vbl" For Input As l00E2%
        Line Input #l00E2%, l00E4$
        TextName.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextAdd1.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextAdd2.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextCityState.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextCountry.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextPhone.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextCardNumber.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextExpireDate.Text = l00E4$
        Line Input #l00E2%, l00E4$
        Select Case l00E4$
            Case "1":
                Option1.Value = -1
                m001A$ = "$49.95"
                m001E$ = "World Empire IV"
                Label17.Visible = 0
                Label13.Caption = "Viable Software Alternatives' Order Form"
            Case "2":
                Option2.Value = -1
                m001A$ = "Pounds: 35.19"
                Label17.Visible = -1
                m001E$ = "World Empire IV"
                Label13.Caption = "The Thompson Partnership Order Form"
            Case Else
                Option1.Value = -1
                m001A$ = "$49.95"
                m001E$ = "World Empire IV"
                Label17.Visible = 0
                Label13.Caption = "Viable Software Alternatives' Order Form"
            End Select
        OrderForm.Caption = m001E$
        Line Input #l00E2%, l00E4$
        Select Case l00E4$
            Case "1": OptionCheck.Value = -1
            Case "2": OptionCreditCard.Value = -1
            Case "3": OptionCash.Value = -1
            Case "4":  OptionMoneyOrder.Value = -1
            Case Else
            End Select
        Line Input #l00E2%, l00E4$
        Select Case l00E4$
            Case "1": OptionVISA.Value = -1
            Case "2": OptionMasterCard.Value = -1
            Case Else
            End Select
        Line Input #l00E2%, l00E4$
        Select Case l00E4$
            Case "1":  Option35hd.Value = -1
            Case "2":  Option35dd.Value = -1
            Case "3":  Option525hd.Value = -1
            Case Else
            End Select
        Line Input #l00E2%, l00E4$
        TextComputer.Text = l00E4$
        Line Input #l00E2%, l00E4$
        TextPrinter.Text = l00E4$
        Line Input #l00E2%, l00E4$
        If InStr(l00E4$, Chr$(246)) > 0 Then
            l00F2% = 0
            Do
                l00F2% = InStr(l00F2% + 1, l00E4$, Chr$(246))
                If l00F2% > 0 Then Mid$(l00E4$, l00F2%) = Chr$(13)
                Loop While l00F2%
            l00F2% = 0
            Do
                l00F2% = InStr(l00F2% + 1, l00E4$, Chr$(247))
                If l00F2% > 0 Then Mid$(l00E4$, l00F2%) = Chr$(10)
                Loop While l00F2%
            End If
        TextSource.Text = l00E4$
        Line Input #l00E2%, l00E4$
        If InStr(l00E4$, Chr$(246)) > 0 Then
            l00F2% = 0
            Do
                l00F2% = InStr(l00F2% + 1, l00E4$, Chr$(246))
                If l00F2% > 0 Then Mid$(l00E4$, l00F2%) = Chr$(13)
                Loop While l00F2%
            l00F2% = 0
            Do
                l00F2% = InStr(l00F2% + 1, l00E4$, Chr$(247))
                If l00F2% > 0 Then Mid$(l00E4$, l00F2%) = Chr$(10)
                Loop While l00F2%
            End If
        TextSuggestions.Text = l00E4$
        End If
    Close l00E2%
    Label15.Caption = m001E$ + "   " + m001A$
End Sub

Private Sub Option1_Click()
    Label4.Caption = "City, Stat, Zip:"
    Label5.Caption = "Country:"
    Label13.Caption = "Viable Software Alternatives' Order Form"
    m001A$ = "$49.95"
    Label17.Visible = 0
    Label15.Caption = m001E$ + "   " + m001A$
End Sub

Private Sub Option2_Click()
    Label4.Caption = "Address Line 3:"
    Label5.Caption = "Address Line 4:"
    Label13.Caption = "The Thompson Partnership Order Form"
    m001A$ = "Pounds: 35.19"
    Label17.Visible = -1
    Label15.Caption = m001E$ + "   " + m001A$
End Sub

Private Sub Option3_Click()
    Label4.Caption = "Address Line 3:"
    Label5.Caption = "Address Line 4:"
    Label13.Caption = "BudgetWare Order Form"
    m001A$ = "49.95"
    Label15.Caption = m001E$ + "   " + m001A$
End Sub

Private Sub OptionCash_Click()
    Frame2.Visible = 0
    Frame5.Visible = 0
End Sub

Private Sub OptionCheck_Click()
    Frame2.Visible = 0
    Frame5.Visible = 0
End Sub

Private Sub OptionCreditCard_Click()
    Frame2.Visible = -1
    Frame5.Visible = -1
End Sub

Private Sub OptionMoneyOrder_Click()
    Frame2.Visible = 0
    Frame5.Visible = 0
End Sub

Private Sub TextAdd1_GotFocus()
Dim l0112 As Variant
    l0112 = TextAdd1.Text
    If Len(TextAdd1.Text) > 0 Then
        TextAdd1.SelStart = 0
        TextAdd1.SelLength = Len(TextAdd1.Text)
        End If
End Sub

Private Sub TextAdd2_GotFocus()
Dim l0116 As Variant
    l0116 = TextAdd2.Text
    If Len(TextAdd2.Text) > 0 Then
        TextAdd2.SelStart = 0
        TextAdd2.SelLength = Len(TextAdd2.Text)
        End If
End Sub

Private Sub TextCardNumber_GotFocus()
Dim l011A As Variant
    l011A = TextCardNumber.Text
    If Len(TextCardNumber.Text) > 0 Then
        TextCardNumber.SelStart = 0
        TextCardNumber.SelLength = Len(TextCardNumber.Text)
        End If
End Sub

Private Sub TextCityState_GotFocus()
Dim l011E As Variant
    l011E = TextCityState.Text
    If Len(TextCityState.Text) > 0 Then
        TextCityState.SelStart = 0
        TextCityState.SelLength = Len(TextCityState.Text)
        End If
End Sub

Private Sub TextComputer_GotFocus()
Dim l0122 As Variant
    l0122 = TextComputer.Text
    If Len(TextComputer.Text) > 0 Then
        TextComputer.SelStart = 0
        TextComputer.SelLength = Len(TextComputer.Text)
        End If
End Sub

Private Sub TextCountry_GotFocus()
Dim l0126 As Variant
    l0126 = TextCountry.Text
    If Len(TextCountry.Text) > 0 Then
        TextCountry.SelStart = 0
        TextCountry.SelLength = Len(TextCountry.Text)
        End If
End Sub

Private Sub TextExpireDate_GotFocus()
Dim l012A As Variant
    l012A = TextExpireDate.Text
    If Len(TextExpireDate.Text) > 0 Then
        TextExpireDate.SelStart = 0
        TextExpireDate.SelLength = Len(TextExpireDate.Text)
        End If
End Sub

Private Sub TextName_GotFocus()
Dim l012E As Variant
    l012E = TextName.Text
    If Len(TextName.Text) > 0 Then
        TextName.SelStart = 0
        TextName.SelLength = Len(TextName.Text)
        End If
End Sub

Private Sub TextPhone_GotFocus()
Dim l0132 As Variant
    l0132 = TextPhone.Text
    If Len(TextPhone.Text) > 0 Then
        TextPhone.SelStart = 0
        TextPhone.SelLength = Len(TextPhone.Text)
        End If
End Sub

Private Sub TextPrinter_GotFocus()
Dim l0136 As Variant
    l0136 = TextPrinter.Text
    If Len(TextPrinter.Text) > 0 Then
        TextPrinter.SelStart = 0
        TextPrinter.SelLength = Len(TextPrinter.Text)
        End If
End Sub

Private Sub TextSource_GotFocus()
Dim l013A As Variant
    l013A = TextSource.Text
    If Len(TextSource.Text) > 0 Then
        TextSource.SelStart = 0
        TextSource.SelLength = Len(TextSource.Text)
        End If
End Sub

Private Sub TextSuggestions_GotFocus()
Dim l013E As Variant
    l013E = TextSuggestions.Text
    If Len(TextSuggestions.Text) > 0 Then
        TextSuggestions.SelStart = 0
        TextSuggestions.SelLength = Len(TextSuggestions.Text)
        End If
End Sub

