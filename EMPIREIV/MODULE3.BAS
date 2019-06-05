Attribute VB_Name = "MODULE3"
' Module3
Option Explicit
Const mc00C4 = 5 ' &H5%
Const mc00EA = 8913094  ' &H8800C6&
Const mc00F2 = 6684742  ' &H660046&

Function fn05F9() As Long
Dim l01E0 As Integer
Dim l01E2 As Integer
Dim l01E4 As Long
   l01E0% = gv0218&(98)
   l01E2% = gv0218&(99)
   l01E4& = gv0218&(l01E0%) - gv0218&(l01E2%)
   If l01E4& < 0 Then
      l01E4& = l01E4& + 1000000000
   End If
   gv0218&(l01E0%) = l01E4&
   If l01E0% > 1 Then
      gv0218&(98) = l01E0% - 1
   Else
      gv0218&(98) = 55
   End If
   If l01E2% > 1 Then
      gv0218&(99) = l01E2% - 1
   Else
      gv0218&(99) = 55
   End If
   l01E0% = gv0218&(100) Mod 42 + 56
   gv0218&(100) = gv0218&(l01E0%)
   gv0218&(l01E0%) = l01E4&
   fn05F9& = gv0218&(100)
End Function

Function fn0601(p01E8 As Integer, p01EA As Integer) As Integer
   Randomize Timer
   fn0601% = p01E8% + (fn05F9&() Mod (p01EA% - p01E8% + 1))
End Function

Sub sub0253(p025E As String, p0260 As String, p0262 As String, p0264 As String, p0266 As String)
    If p025E$ <> "XX" Then ContMap.Label_Comp_Mode.Caption = p025E$
    If p0260$ <> "XX" Then ContMap.Label_Comp_Attackee.Caption = p0260$
    If p0262$ <> "XX" Then ContMap.Label_Comp_Attacker.Caption = p0262$
    If p0264$ <> "XX" Then ContMap.Label_Attackee_Armies.Caption = p0264$
    If p0266$ <> "XX" Then ContMap.Label_Attacker_Armies.Caption = p0266$
End Sub

Sub sub0318(p000A() As Integer, p0010 As Integer, p0012 As Integer)
Dim l0014() As Integer
Dim l001A As Integer
Dim l001E As Integer
Dim l0020 As Integer
   ReDim l0014%(6)
   p0012% = 0
   l001A% = FreeFile
   Open AppResc$ + "\" + "tontBor.vbl" For Random As l001A% Len = 2
   l001E% = ((p0010% - 1) * 6)
   For l0020% = 1 To 6
      Get l001A%, l001E% + l0020%, l0014%(l0020%)
      If l0014%(l0020%) > 0 Then p0012% = p0012% + 1
      Next
   Close l001A%
   ReDim p000A%(p0012%)
   For l0020% = 1 To p0012%: p000A%(l0020%) = l0014%(l0020%): Next
End Sub

Sub sub032A(p0224 As Integer, p0226() As Integer, p022C() As Integer, p0232() As Integer, p0238 As Integer)
Dim l023A() As Integer
Dim l0240() As Integer
Dim l0246() As Integer
Dim l024C As Integer
Dim l024E As Integer
Dim l0250 As Integer
Dim l0252 As Integer
Dim l0254 As Integer
Dim l0256 As Integer
Dim l0258 As Integer
Dim l025A As Integer
Dim l025C As Integer
   ReDim l023A%(1), l0240%(1), l0246%(1)
   p0238% = 0
   For l024C% = 1 To p0224%
      l024E% = gv0260(gv0294(p0226%(l024C%)).M1EFF).M1E25
      Call sub0318(l023A%(), l024E%, l0250%)
      For l0252% = 1 To l0250%
         If gv0260(l023A%(l0252%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
            Call sub0391(l0240%(), l023A%(l0252%), l0254%)
            For l0256% = 1 To l0254%
               If gv0260(l0240%(l0256%)).M1E9A <> 0 And gv0260(l0240%(l0256%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
                     p022C%(l024C%, l0252%) = l023A%(l0252%)
                     p0232%(l024C%, l0252%) = gv0260(l0240%(l0256%)).M1EC2
                     p0238% = 1
                  Else
                     Call sub0391(l0246%(), l0240%(l0256%), l0258%)
                     For l025A% = 1 To l0258%
                        If gv0260(l0246%(l025A%)).M1E9A <> 0 And gv0260(l0246%(l025A%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
                           p022C%(l024C%, l0252%) = l023A%(l0252%)
                           p0232%(l024C%, l0252%) = gv0260(l0246%(l025A%)).M1EC2
                           p0238% = 1
                           End If
                        Next
                  End If
               Next
            End If
         l025C% = DoEvents()
         Next
      Next
End Sub

Sub sub0363(p1 As Integer, p020C() As Integer, p0212 As Integer)
' called (p1%, p2 As array, p3%)
Dim l0214() As Integer
Dim l021A As Integer
Dim l021C As Integer
Dim l021E As Integer
Dim l0220 As Integer
Dim l0222 As Integer
   ReDim l0214%(6)
   p0212% = 0
   For l021A% = 1 To 6
      l021C% = 1
      For l021E% = gv0294(l021A%).M1EFF To gv0294(l021A%).M1F0B
         If gv0260(l021E%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
            l021C% = 0: Exit For
            End If
         Next
      l0220% = DoEvents()
      If l021C% Then l0214%(l021A%) = l021A%: p0212% = p0212% + 1
      Next
   If p0212% > 0 Then
      ReDim p020C%(p0212%)
      For l021A% = 1 To 6
         If l0214%(l021A%) > 0 Then l0222% = l0222% + 1: p020C%(l0222%) = l0214%(l021A%)
         Next
      End If
End Sub

Sub sub0391(p0022() As Integer, p0028 As Integer, p002A As Integer)
Dim l002C() As Integer
Dim l0032 As Integer
Dim l0034 As Integer
Dim l0036 As Integer
   ReDim l002C%(12)
   p002A% = 0
   l0032% = FreeFile
   Open AppResc$ + "\" + "tountBor.vbl" For Random As l0032% Len = 2
   l0034% = ((p0028% - 1) * 12)
   For l0036% = 1 To 12
      Get l0032%, l0034% + l0036%, l002C%(l0036%)
      If l002C%(l0036%) > 0 Then p002A% = p002A% + 1
      Next
   Close l0032%
   ReDim p0022%(p002A%)
   For l0036% = 1 To p002A%: p0022%(l0036%) = l002C%(l0036%): Next
End Sub

Sub sub0589()
Dim l01DA As Integer
Dim l01DC As Integer
    ReDim gv05DE$(8)
    gv05DE$(1) = "Player 1"
    gv05DE$(2) = "'Chip' Silicon"
    gv05DE$(3) = "Peril L. Port"
    gv05DE$(4) = "Data Buss"
    gv05DE$(5) = "Floppy Dreiv"
    gv05DE$(6) = "Baad Sektor"
    gv05DE$(7) = "'Cap' Slock"
    gv05DE$(8) = "Sherry Ware"
    gv0214$ = Chr$(13) + Chr$(10)
    ReDim gv0218&(100)
    gv04E8& = QBColor(12)
    gv04EC& = QBColor(10)
    gv04F0& = QBColor(1)
    gv04F4& = QBColor(6)
    gv04F8& = QBColor(7)
    gv04FC& = QBColor(3)
    gv0500& = QBColor(4)
    gv0504& = QBColor(13)
    gv02C6% = 139: gv02C8% = 6
    ReDim gv0260(gv02C6%) As T1E0F
    ReDim gv0294(gv02C8%) As T1EEE
    ReDim gv03AE%(8), gv04B6%(-1 To 6, 2)
    ReDim gv02D6(8) As T1F42, gv0522%(12)
    ReDim gv030E%(8), gv0340%(8), gv0372%(8)
    ReDim gv044E%(6, 8), gv0484%(8), gv03E6$(8)
    gv03E6(1) = "Populist"
    gv03E6(2) = "Militarist"
    gv03E6(3) = "Socialist"
    gv03E6(4) = "Realist"
    gv03E6(5) = "Pacifist"
    gv03E6(6) = "Optimist"
    gv03E6(7) = "Pessimist"
    gv03E6(8) = "Feminist"
    l01DA% = FreeFile
    Open AppResc$ + "\" + "tountdat.vbl" For Random As l01DA% Len = Len(gv0260(0))
    For l01DC% = 1 To gv02C6%
        Get l01DA%, l01DC%, gv0260(l01DC%)
        Next
    Close l01DA%
    l01DA% = FreeFile
    Open AppResc$ + "\" + "tontdata.vbl" For Random As l01DA% Len = Len(gv0294(0))
    For l01DC% = 1 To gv02C8%
        Get l01DA%, l01DC%, gv0294(l01DC%)
        Next
    Close l01DA%
End Sub

Sub sub05D6(p01F6 As Integer, p01F8 As Integer)
Dim l01FA() As Integer
Dim l0200 As Integer
Dim l0202 As Integer
Dim l0204 As Integer
Dim l0206 As Integer
Dim l0208 As Integer
   ReDim l01FA%(6, 8)
   l0200% = 0
   For l0202% = 1 To 6
      l0204% = 1
      For l0206% = gv0294(l0202%).M1EFF To gv0294(l0202%).M1F0B
         If gv0260(l0206%).M1E9A <> gv02D6(p01F6%).M1EA3 Then
            l0204% = 0: Exit For
            End If
         Next
      l0208% = DoEvents()
      If l0204% Then l01FA%(l0202%, p01F6%) = l0202%: l0200% = l0200% + 1
      Next
   If l0200% > 0 Then
      For l0202% = 1 To 6
         If l01FA%(l0202%, p01F6%) < gv044E%(l0202%, p01F6%) Then
            p01F8% = gv044E%(l0202%, p01F6%): Exit For
            End If
         Next
      For l0202% = 1 To 6
         gv044E%(l0202%, p01F6%) = l01FA%(l0202%, p01F6%)
         Next
      End If
End Sub

Sub sub05EC(p0186 As Integer)
Dim l018A() As T1FB8
Dim l0190 As Integer
Dim l0194 As Integer
Dim l0196 As Integer
   ReDim l018A(10) As T1FB8
   l0190% = FreeFile: Open AppData$ + "\" + "emperors.hof" For Random As l0190% Len = Len(l018A(0))
   If LOF(l0190%) < 1 Then
         For l0194% = 1 To 10
            l018A(l0194%).M1E1E = "Casey"
            Put l0190%, l0194%, l018A(l0194%)
            Next
      Else
         For l0194% = 1 To 10
            Get l0190%, l0194%, l018A(l0194%)
            Next
      End If
   Close l0190%
   If p0186% = 0 Then
      If gv02D6(gv03A4%).M1F50 = "d" Then
         Else
            For l0194% = 10 To 1 Step -1
               If (gv02D6(gv03A4%).M1F8B <= l018A(l0194%).M1F8B) Or (l018A(l0194%).M1F8B < 1) Then
                  l0196% = l0194%
                  End If
               Next
            If l0196% > 0 Then
               For l0194% = 9 To l0196% Step -1
                  l018A(0) = l018A(l0194%): l018A(l0194%) = l018A(l0194% + 1)
                  l018A(l0194% + 1) = l018A(0)
                  Next
               End If
            l018A(l0196%).M1E1E = gv02D6(gv03A4%).M1E1E
            l018A(l0196%).M1FA8 = gv02D6(gv03A4%).M1FA8
            l018A(l0196%).M1F8B = gv02D6(gv03A4%).M1F8B
            l018A(l0196%).M1F99 = gv02D6(gv03A4%).M1F99
         End If
      End If
   TurnForm.ImageWin.BackColor = QBColor(4)
   TurnForm.ImageWin.Cls
   TurnForm.ImageWin.Print
   TurnForm.ImageWin.Print
   TurnForm.ImageWin.ForeColor = QBColor(15)
   TurnForm.ImageWin.FontSize = 8.25
   TurnForm.ImageWin.Print Tab(25); "Emperors Of Note"
   TurnForm.ImageWin.ForeColor = QBColor(14)
   TurnForm.ImageWin.Print
   TurnForm.ImageWin.Print Tab(7); "     Name               Recruited  Casualties  Liquidated"
   TurnForm.ImageWin.Print
   For l0194% = 1 To 10
      If l0194% = l0196% Then
            TurnForm.ImageWin.ForeColor = QBColor(15)
         Else
            TurnForm.ImageWin.ForeColor = QBColor(14)
         End If
      TurnForm.ImageWin.Print Tab(9); "Gen. " + RTrim$(l018A(l0194%).M1E1E);
      TurnForm.ImageWin.Print Tab(32); Str$(l018A(l0194%).M1F99);
      TurnForm.ImageWin.Print Tab(42); Str$(l018A(l0194%).M1F8B);
      TurnForm.ImageWin.Print Tab(52); Str$(l018A(l0194%).M1FA8)
      Next
   l0190% = FreeFile: Open AppData$ + "\" + "emperors.hof" For Random As l0190% Len = Len(l018A(0))
   For l0194% = 1 To 10
      Put l0190%, l0194%, l018A(l0194%)
      Next
   Close l0190%
End Sub

Sub sub0610(ByVal p01EC As String)
Dim l01EE As String
Dim l01F0 As Integer
Dim l01F2 As Integer
Dim l01F4 As Integer
   l01EE$ = Left$("Abracadabra" + p01EC$ + Space$(86), 97)
   For l01F0% = 1 To 97
      gv0218&(l01F0%) = Asc(Mid$(l01EE$, l01F0%, 1)) * 8171717 + l01F0% * 997&
   Next l01F0%
   l01EE$ = ""
   l01F0% = 97
   l01F2% = 12
   For l01F4% = 1 To 997
      gv0218&(l01F0%) = gv0218&(l01F0%) - gv0218&(l01F2%)
      If gv0218&(l01F0%) < 0 Then
         gv0218&(l01F0%) = gv0218&(l01F0%) + 1000000000
      End If
      If l01F0% > 1 Then
         l01F0% = l01F0% - 1
      Else
         l01F0% = 97
      End If
      If l01F2% > 1 Then
         l01F2% = l01F2% - 1
      Else
         l01F2% = 97
      End If
   Next l01F4%
   gv0218&(98) = 55
   gv0218&(99) = 24
   gv0218&(100) = 77
End Sub

Sub sub061F(p0038 As Integer, p003A As Integer)
Dim l004A As String
Dim l004C As String
Dim l004E As String
Dim l0050 As String
Dim l0052 As String
Dim l0054() As Integer
Dim l005A() As Integer
Dim l0060() As Integer
Dim l0066() As Integer
Dim l006C() As Integer
Dim l0072() As Integer
Dim l0078() As Integer
Dim l007E() As Integer
Dim l0084 As Integer
Dim l0090 As Integer
Dim l0092 As Integer
Dim l00A8 As Integer
Dim l00AA As Integer
Dim l00AC As Integer
Dim l00AE As Integer
Dim l00B0 As Integer
Dim l00B2 As Integer
Dim l00B4 As Integer
' Const mc00C4 = 5 ' &H5%
Dim l00CE As String
Dim l00D4 As Single
Dim l00D6 As Integer
Dim l00DA As Integer
Dim l00DE As Integer
Dim l00E0 As Integer
Dim l00E2 As Integer
Dim l00E4 As Integer
Dim l00E6 As Integer
Dim l00E8 As Integer
' Const mc00EA = 8913094& ' &H8800C6&
Dim l00F0 As Integer
' Const mc00F2 = 6684742& ' &H660046&
Dim l00F6 As Integer
Dim l00F8 As Integer
Dim l0102 As Integer
Dim l0104 As Integer
Dim l0106 As Integer
Dim l0108 As Integer
Dim l010A() As Integer
Dim l0110 As Integer
Dim l0112 As Integer
Dim l0114 As Integer
Dim l0116 As Integer
Dim l0118 As Integer
Dim l011A As Integer
Dim l011C As Integer
Dim l011E As Integer
Dim l0120 As Integer
Dim l0122 As Integer
Dim l0124 As Integer
Dim l0126 As Integer
Dim l0128 As Integer
Dim l012A As Integer
Dim l012C As Integer
Dim l012E As Integer
Dim l0136 As Integer
Dim l0138 As Integer
Dim l013A As Integer
Dim l013C As Integer
Dim l013E As Integer
Dim l0140() As Integer
Dim l0146() As Integer
Dim l014C As Integer
Dim l014E As Integer
Dim l0150 As Integer
Dim l0152() As Integer
Dim l0158 As Integer
Dim l015A As Integer
Dim l015C As Integer
Dim l015E As Integer
Dim l0160 As Integer
Dim l0162 As Integer
Dim l0164 As Integer
Dim l0166 As Integer
Dim l0168 As Integer
Dim l016A As Integer
Dim l016C() As Integer
Dim l0172 As Integer
Dim l0174 As Integer
Dim l0176 As Integer
Dim l0178 As Integer
Dim l0182 As Integer
Dim l0184 As Integer
   If gv0714% = 0 Then
       If gv055C% Then
                l004A$ = "General " + RTrim$(gv02D6(gv03A4%).M1E1E) + "'s turn"
                l004C$ = ""
                l004E$ = ""
                l0050$ = ""
                l0052$ = ""
                Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
            Else
                l004A$ = "Thinking..."
                l004C$ = ""
                l004E$ = ""
                l0050$ = ""
                l0052$ = ""
                Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
            End If
       End If
   ReDim l0054%(40), l005A%(1), l0060%(40)
   ReDim l0066%(1), l006C%(1), l0072%(1), l0078%(1), l007E%(1)
   l0084% = 5
   If gv030C% > 15 Then l0084% = 7
   If gv030C% > 25 Then l0084% = 9
   If gv0598% And gv0340%(gv03A4%) > 0 Then
        l0090% = gv030C%
        Call sub023E(gv0340%(gv03A4%), l0092%, 3, l0090%)
        If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Sub
        End If
   GoSub LC0BC
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Sub
   If (gv0260(gv0372%(gv03A4%)).M1E9A <> gv02D6(gv03A4%).M1EA3) Or (gv0518% > 4) Then
      If gv0340%(gv03A4%) = 0 Then
         GoSub LE7AE
         End If
      End If
   If gv0340%(gv03A4%) = 0 Then
      GoSub LCB08
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Sub
      If l00A8% = 0 And gv0714% = 0 Then
         l004A$ = ""
         l004C$ = ""
         l004E$ = ""
         l0050$ = ""
         l0052$ = ""
         Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
         Exit Sub
         End If
      End If
   GoSub LABDA
   If gv0714% And ContMap.IPPort1.Connected = 0 Then
       Exit Sub
       End If
   If p0038% = 0 And p003A% = 0 Then
      Call sub05D6(gv03A4%, l00AA%)
      Call sub0303(gv03A4%)
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Sub
      End If
   If gv0714% = 0 Then
        l004A$ = ""
        l004C$ = ""
        l004E$ = ""
        l0050$ = ""
        l0052$ = ""
        Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
        End If
   Exit Sub

LABDA:
   Do
      If gv0340%(gv03A4%) = 0 Then
         l00AC% = l00AC% + 1
         gv0340%(gv03A4%) = l0054%(l00AC%)
         If gv0340%(gv03A4%) = 0 And l00AE% = 0 Then
            GoSub LC72E: l00AE% = 1
            l00AC% = l00AC% + 1
            gv0340%(gv03A4%) = l0054%(l00AC%)
            End If
         If gv0340%(gv03A4%) = 0 Then
            Exit Do
            End If
         End If
      GoSub LC180
      If l0092% = 0 Then
         l00B0% = gv0340%(gv03A4%)
         Call sub037A(gv0340%(gv03A4%), l0092%)
         If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
         If gv0340%(gv03A4%) = l00B0% Then
            gv0340%(gv03A4%) = 0
            End If
         End If
      If gv0340%(gv03A4%) > 0 And l0092% > 0 Then
            GoSub LC360
            If l00B2% Then
                  l00B4% = 0
                  If gv0714% Then gv0738% = gv0260(gv0340%(gv03A4%)).M1EC2
                  GoSub LB4CA
                  If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
                  gv0518% = gv0518% + 1
                  gv04B6%(gv0518%, 1) = l0092%
                  gv04B6%(gv0518%, 2) = gv0340%(gv03A4%)
                  If gv04B6%(gv0518%, 1) <> gv04B6%(gv0518% - 1, 1) Or gv04B6%(gv0518%, 2) <> gv04B6%(gv0518% - 1, 2) Then
                     If gv0518% > 1 Then
                        gv0518% = 0
                        End If
                     End If
                  If gv0520% > 0 Then
                        If gv0714% = 0 Then
                            Call sub03F4(gv0554%, gv0556%, 1)
                            gv02D6(gv0554%).M1F5D = mc00C4
                            gv0554% = 0: gv0556% = 0
                            gv0520% = 0
                          Else
                            l00CE$ = gc07EC + gc0870 + gc07E4 + Trim$(Str$(gv0554%)) + gc07E4 + Trim$(Str$(gv0556%)) + gc07E4 + gc07E8
                            sub0264 "Surrendering...", "Chip:"
                            gv0734% = 0
                            Call sub0273(l00CE$)
                            l00D4! = Timer + (gv0692%)
                            Do Until gv0734% Or Timer > l00D4!
                                DoEvents
                                Loop
                            If gv0734% = 0 Then
                                Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                                Return
                                End If
                            sub0264 "Okay.", "Host:"
                            ContMap.MousePointer = 0
                            gv0520% = 0
                          End If
                     End If
                  If l00B4% = 1 Then
                        gv0518% = 0
                        If gv0714% = 0 Then
                                If gv0260(l0092%).M1EAC <> gv02D6(gv03A4%).M1EA3 Then
                                      l00D6% = 1:
                                      Call sub02F3(l0092%, gv0260(l0092%).M1ECC)
                                   Else
                                      l00D6% = 0:
                                      Call sub02F3(l0092%, gv0260(l0092%).M1ECC)
                                   End If
                            Else
                                gv0738% = gv0738% - gv0260(gv0340%(gv03A4%)).M1EC2
                                l00CE$ = gc07EC + gc0848 + gc07E4 + Str$(l0092%) + gc07E4 + Str$(gv0340%(gv03A4%)) + gc07E4 + Str$(gv0260(l0092%).M1EC2) + gc07E4 + Str$(gv0260(gv0340%(gv03A4%)).M1EC2) + gc07E4 + Str$(gv0738%) + gc07E4 + gc07E8
                                sub0264 "Sending Notice Of Success...", "Chip:"
                                gv0734% = 0
                                Call sub0273(l00CE$)
                                gv0738% = 0
                                l00D4! = Timer + (gv0692%)
                                Do Until gv0734% Or Timer > l00D4!
                                    DoEvents
                                    Loop
                                If gv0734% = 0 Then
                                        sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                                        Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                                        Return
                                    Else
                                        sub0264 "Okay.", "Host:"
                                    End If
                                Call sub0290(1.5)
                            End If
                        GoSub LC45A
                        Call sub023E(gv0340%(gv03A4%), l0092%, 2, l0090%)
                        If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
                        If l00DA% > 0 Then
                           gv0340%(gv03A4%) = l00DA%
                           If gv0340%(gv03A4%) > 0 Then gv0372%(gv03A4%) = gv0340%(gv03A4%)
                           End If
                        GoSub LCACA: GoSub LC0BC
                     Else
                        If gv0340%(gv03A4%) > 0 Then gv0372%(gv03A4%) = gv0340%(gv03A4%)
                        gv0340%(gv03A4%) = 0
                     End If
               Else
                  If gv0340%(gv03A4%) > 0 Then gv0372%(gv03A4%) = gv0340%(gv03A4%)
                  gv0340%(gv03A4%) = 0
               End If
         Else
            If gv0340%(gv03A4%) > 0 Then gv0372%(gv03A4%) = gv0340%(gv03A4%)
            gv0340%(gv03A4%) = 0
         End If
      Loop
   Return

LB4CA:
    If gv055C% = 0 Then
        If gv0714% = 0 Then
                l004A$ = "Attacking:"
                l004C$ = RTrim$(gv0260(l0092%).M1E1E)
                l004E$ = "From " + RTrim$(gv0260(gv0340%(gv03A4%)).M1E1E)
                l0050$ = ""
                l0052$ = ""
                Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
            Else
                gv0738% = gv0260(gv0340%(gv03A4%)).M1EC2
                l00CE$ = gc07EC + gc0844 + gc07E4 + Str$(l0092%) + gc07E4 + Str$(gv0340%(gv03A4%)) + gc07E4 + gc07E8
                sub0264 "Sending Notice Of Attack...", "Chip:"
                gv0734% = 0
                Call sub0273(l00CE$)
                l00D4! = Timer + (gv0692%)
                Do Until gv0734% Or Timer > l00D4!
                    DoEvents
                    Loop
                If gv0734% = 0 Then
                        sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                        Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                        Return
                    Else
                        sub0264 "Okay.", "Host:"
                    End If
            End If
        End If
    If gv0714% = 0 Then
        l00DE% = FreeFile
        Open AppResc$ + "\" + "tontxy2.vbl" For Random As l00DE% Len = 2
        l00E0% = gv0260(gv0340%(gv03A4%)).M1E65
        Get l00DE%, l00E0%, l00E2%
        Get l00DE%, l00E0% + 1, l00E4%
        l00E0% = gv0260(l0092%).M1E65
        Get l00DE%, l00E0%, l00E6%
        Get l00DE%, l00E0% + 1, l00E8%
        Close l00DE%
        ContMap.Refresh
        If l00E6% >= l00E2% Then
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6% - 2, l00E8% - 5, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6% - 2, l00E8% - 5, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.LArrowShad.hdc, 0, 0, mc00F2&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6%, l00E8% - 10, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6%, l00E8% - 10, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.Picture2.hdc, 0, 0, mc00F2&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2% - 22, l00E4% - 5, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2% - 22, l00E4% - 5, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.RArrowShad.hdc, 0, 0, mc00F2&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2% - 20, l00E4% - 10, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2% - 20, l00E4% - 10, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.Picture5.hdc, 0, 0, mc00F2&)
            Else
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2% - 2, l00E4% - 5, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2% - 2, l00E4% - 5, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.LArrowShad.hdc, 0, 0, mc00F2&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2%, l00E4% - 10, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E2%, l00E4% - 10, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.Picture2.hdc, 0, 0, mc00F2&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6% - 22, l00E8% - 5, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6% - 22, l00E8% - 5, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.RArrowShad.hdc, 0, 0, mc00F2&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6% - 20, l00E8% - 10, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc00EA&)
                l00F0% = BitBlt(ContMap.Picture1.hdc, l00E6% - 20, l00E8% - 10, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.Picture5.hdc, 0, 0, mc00F2&)
            End If
        End If
    Do
        Call sub020F(l0092%, gv0340%(gv03A4%), l00B4%, gv0520%)
        l00F6% = DoEvents()
        If gv055C% = 0 And gv0714% = 0 Then
            l004A$ = "XX"
            l004C$ = "XX"
            l004E$ = "XX"
            l0050$ = Str$(gv0260(l0092%).M1EC2)
            l0052$ = Str$(gv0260(gv0340%(gv03A4%)).M1EC2)
            Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
            End If
        ContMap.Refresh
        GoSub LC360
        l00F6% = DoEvents()
        Loop While (l00B2% And l00B4% = 0)
    If gv0714% Then
    Call sub0290(1.5)
        Else
            Call sub0290(0.6)
        End If
    If gv055C% = 0 And gv0714% = 0 Then
        Call sub0290(1)
        l004A$ = "Thinking..."
        l004C$ = ""
        l004E$ = ""
        l0050$ = ""
        l0052$ = ""
        Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
        End If
    ContMap.Picture1.Refresh
    Return

LC0BC:
   l00F8% = 1
   l0102% = gv0294(gv0260(gv0372%(gv03A4%)).M1E25).M1EFF
   l0104% = gv0294(gv0260(gv0372%(gv03A4%)).M1E25).M1F0B
   For l0106% = l0102% To l0104%
      If gv0260(l0106%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then l00F8% = 0: Exit For
      Next
   If l00F8% = 1 Then
      GoSub LEAE2
      End If
   Return

LC180:
   l0092% = 0
   Call sub0391(l0066%(), gv0340%(gv03A4%), l0108%)
   ReDim l010A%(l0108%)
   For l0110% = 1 To l0108%
      If gv0260(l0066%(l0110%)).M1E9A > 0 And gv0260(l0066%(l0110%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
         If gv0260(l0066%(l0110%)).M1E25 = gv0260(gv0340%(gv03A4%)).M1E25 Or gv03A4% = 4 Then
            l010A%(l0110%) = gv0260(l0066%(l0110%)).M1EC2
            l0112% = 1
            End If
         End If
      Next
   If l0112% Then
       l0114% = 99
       l0116% = 0
       For l0110% = 1 To l0108%
           If l010A%(l0110%) < l0114% And l010A%(l0110%) <> 0 Then
               l0114% = l010A%(l0110%)
               l0116% = l0110%
               End If
           Next
       If l0116% > 0 Then l0092% = l0066%(l0116%)
       End If
   If l0092% = 0 Then Call sub034F(l0066%(), l0108%, l0092%)
   Return

LC34C:
   l0118% = 1
   Return

LC360:
   l011A% = gv0260(gv0340%(gv03A4%)).M1EC2
   If gv0260(gv0340%(gv03A4%)).M1EAC = gv02D6(gv03A4%).M1EA3 Then
         l011C% = 1
      Else
         l011C% = gv0260(gv0340%(gv03A4%)).M1EB8
      End If
   If gv0260(l0092%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
         l0090% = 1
      Else
         l0090% = gv0260(l0092%).M1EB8
      End If
   l011E% = l0090% + l011C%
   If l011A% > l011E% + 1 Then l00B2% = 1 Else l00B2% = 0
   Return

LC45A:
   l00DA% = 0
   Call sub0391(l0066%(), l0092%, l0108%)
   For l0120% = 1 To l0108%
      If gv0260(l0066%(l0120%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
         If gv0260(l0066%(l0120%)).M1E25 = gv0260(l0092%).M1E25 Then
            l00DA% = l0092%
            End If
         End If
      Next
   If l00DA% > 0 Then
         GoSub LC9D4
         If gv0260(gv0340%(gv03A4%)).M1EAC = gv02D6(gv03A4%).M1EA3 Then
               If gv0260(l0092%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                     l0090% = 1
                  Else
                     l0090% = gv0260(l0092%).M1EB8
                  End If
               l0122% = (gv0260(gv0340%(gv03A4%)).M1EC2 - 1) - l0090%
               If l0124% > l0122% Then
                     l0124% = l0122%: l0122% = 0
                  Else
                     l0122% = l0122% - l0124%
                  End If
               l0090% = l0090% + l0122%
            Else
               If gv0260(l0092%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                     l0090% = 1
                  Else
                     l0090% = gv0260(l0092%).M1EB8
                  End If
               l0122% = (gv0260(gv0340%(gv03A4%)).M1EC2 - gv0260(gv0340%(gv03A4%)).M1EB8) - l0090%
               If l0124% > l0122% Then
                     l0124% = l0122%: l0122% = 0
                  Else
                     l0122% = l0122% - l0124%
                  End If
               l0090% = l0090% + l0122%
            End If
      Else
         If gv0260(l0092%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
               l0090% = 1
            Else
               l0090% = gv0260(l0092%).M1EB8
            End If
      End If
   Return

LC72E:
   l00A8% = 1: l00AC% = 0
   For l0110% = 1 To 6
      If l0110% <> gv0260(gv0340%(gv03A4%)).M1E25 Then
         l0102% = gv0294(l0110%).M1EFF
         l0104% = gv0294(l0110%).M1F0B
         For l0106% = l0102% To l0104%
            If gv0260(l0106%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
               Call sub0391(l006C%(), l0106%, l0126%)
               l00F6% = DoEvents()
               For l0128% = 1 To l0126%
                  If gv0260(l006C%(l0128%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
                     If gv0260(l006C%(l0128%)).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                           l012A% = 1
                        Else
                           l012A% = gv0260(l006C%(l0128%)).M1EB8
                        End If
                     If gv0260(l006C%(l0128%)).M1EC2 > l012A% + 4 Then
                        If gv0260(l006C%(l0128%)).M1E25 = gv0260(l0106%).M1E25 Then
                           l012C% = 0
                           For l0120% = 1 To l00A8%
                              If l0054%(l0120%) = l006C%(l0128%) Then l012C% = 1
                              If l0060%(l0120%) = l0106% Then l012C% = 1
                              Next
                           If l012C% = 0 Then
                              l00A8% = l00A8% + 1
                              l0054%(l00A8%) = l006C%(l0128%)
                              l0060%(l00A8%) = l0106%
                              End If
                           End If
                        End If
                     End If
                  Next
               End If
            Next
         End If
      Next
   Return

LC9D4:
   l0124% = 0
   Call sub0391(l006C%(), gv0340%(gv03A4%), l0126%)
   For l0106% = 1 To l0126%
      If gv0260(l006C%(l0106%)).M1E9A <> gv02D6(gv03A4%).M1EA3 And gv0260(l006C%(l0106%)).M1E9A <> 0 Then
         If gv0260(l006C%(l0106%)).M1EC2 > l0124% Then
            l0124% = gv0260(l006C%(l0106%)).M1EC2
            End If
         End If
      Next
   l0124% = l0124% - 2: If l0124% < 1 Then l0124% = 0
   Return

LCACA:
   Call sub0391(l0066%(), gv0340%(gv03A4%), l0108%)
   Call sub034F(l0066%(), l0108%, l012E%)
   Return

LCB08:
   If gv030C% < 1 Then Return
   If gv0594% < 2 And gv0596% = 0 Then
      If gv055C% = 0 And gv0714% = 0 Then
          l004A$ = "Checking Occupation Armies..."
          l004C$ = ""
          l004E$ = ""
          l0050$ = ""
          l0052$ = ""
          Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
         End If
      Call sub0290(0.8)
      For l0110% = 1 To gv02C6%
         l00F6% = DoEvents()
         If gv0260(l0110%).M1E9A = gv02D6(gv03A4%).M1EA3 Then
             If gv0260(l0110%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                Else
                    If gv0260(l0110%).M1EC2 < gv0260(l0110%).M1EB8 Then
                        If gv030C% > 7 Then
                            l0136% = gv0260(l0110%).M1EB8 - gv0260(l0110%).M1EC2
                            gv0260(l0110%).M1EC2 = gv0260(l0110%).M1EC2 + l0136%
                            gv030C% = gv030C% - l0136%
                            End If
                        End If
                End If
             End If
          Next
        If gv055C% = 0 And gv0714% = 0 Then
            l004A$ = "Thinking..."
            l004C$ = ""
            l004E$ = ""
            l0050$ = ""
            l0052$ = ""
            Call sub0253(l004A$, l004C$, l004E$, l0050$, l0052$)
            End If
        If gv030C% < 1 Then Return
        End If
   l00AA% = 0
   Call sub05D6(gv03A4%, l00AA%)
   If l00AA% > 0 Then
      l0102% = gv0294(l00AA%).M1EFF
      l0104% = gv0294(l00AA%).M1F0B
      For l0110% = l0102% To l0104%
               l00F6% = DoEvents()
         If gv0260(l0110%).M1E9A <> gv02D6(gv03A4%).M1EA3 And gv0260(l0110%).M1E9A <> 0 Then
            Call sub0391(l006C%(), l0110%, l0126%)
            For l0106% = 1 To l0126%
               If gv0260(l006C%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
                  If gv0260(l006C%(l0106%)).M1E25 = gv0260(l0110%).M1E25 Then
                     l012C% = 0
                     For l0120% = 1 To l00A8%
                        If l0054%(l0120%) = l006C%(l0106%) Then l012C% = 1
                        If l0060%(l0120%) = l0110% Then l012C% = 1
                        Next
                     If l012C% = 0 Then
                        l0090% = gv030C
                        If l0090% > gv030C% Then
                           l0090% = gv030C%
                           End If
                        l00A8% = l00A8% + 1
                        l0054%(l00A8%) = l006C%(l0106%):
                        l0060%(l00A8%) = l0110%
                        gv0372%(gv03A4%) = l006C%(l0106%)
                        Call sub023E(l006C%(l0106%), l0092%, 3, l0090%)
                        If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Sub
                        l0138% = 1
                        End If
                     l013A% = 1:
                     End If
                  End If
               Next
            If l0138% = 0 Then
               For l0128% = 1 To l0126%
                  Call sub0391(l0072%(), l006C%(l0128%), l013C%)
                  For l0106% = 1 To l013C%
                     If gv0260(l0072%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
                        If gv0260(l0072%(l0106%)).M1E25 = gv0260(l006C%(l0128%)).M1E25 Then
                           l012C% = 0
                           For l0120% = 1 To l00A8%
                              If l0054%(l0120%) = l0072%(l0106%) Then l012C% = 1
                              If l0060%(l0120%) = l006C%(l0128%) Then l012C% = 1
                              Next
                           If l012C% = 0 Then
                              l0090% = gv030C%
                              If l0090% > gv030C% Then
                                 l0090% = gv030C%
                                 End If
                              l00A8% = l00A8% + 1
                              l0054%(l00A8%) = l0072%(l0106%)
                              l0060%(l00A8%) = l006C%(l0128%)
                              gv0372%(gv03A4%) = l0072%(l0106%)
                              Call sub023E(l0072%(l0106%), l0092%, 3, l0090%)
                              If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                              l0138% = 0
                              End If
                           l013A% = 1:
                           End If
                        End If
                     Next
                  If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                  Next
               End If
            End If
         If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
         Next
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
      End If
   If gv030C% < 1 Then Return
               l00F6% = DoEvents()
   Call sub0363(gv03A4%, l005A%(), l013E%)
   If l013E% > 0 Then
      ReDim l0140%(l013E%, 6), l0146%(l013E%, 6)
      Call sub032A(l013E%, l005A%(), l0140%(), l0146%(), l014C%)
      Call sub0303(gv03A4%)
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
      If l014C% = 1 Then
         For l0110% = 1 To UBound(l0140%, 1)
            For l0106% = 1 To UBound(l0140%, 2)
               If l0140%(l0110%, l0106%) > 0 Then
                  If gv0260(l0140%(l0110%, l0106%)).M1EC2 < l0146%(l0110%, l0106%) Then
                     l0090% = (l0146%(l0110%, l0106%)) - gv0260(l0140%(l0110%, l0106%)).M1EC2
                     If l0090% > gv030C% Then l0090% = gv030C%
                     Call sub023E(l0140%(l0110%, l0106%), l0092%, 3, l0090%)
                     If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                     End If
                  End If
               If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
               If gv030C% < 1 Then Exit For
               Next
            If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
            If gv030C% < 1 Then Exit For
            Next
         End If
      End If
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   If gv030C% < 1 Then Return
   l0102% = gv0294(gv0260(gv0372%(gv03A4%)).M1E25).M1EFF
   l0104% = gv0294(gv0260(gv0372%(gv03A4%)).M1E25).M1F0B
   l0138% = 0
   For l0110% = l0102% To l0104%
               l00F6% = DoEvents()
      If gv0260(l0110%).M1E9A <> gv02D6(gv03A4%).M1EA3 And gv0260(l0110%).M1E9A <> 0 Then
         Call sub0391(l006C%(), l0110%, l0126%)
         For l0106% = 1 To l0126%
            If gv0260(l006C%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
               If gv0260(l006C%(l0106%)).M1E25 = gv0260(l0110%).M1E25 Then
                  l012C% = 0
                  For l0120% = 1 To l00A8%
                     If l0054%(l0120%) = l006C%(l0106%) Then l012C% = 1
                     If l0060%(l0120%) = l0110% Then l012C% = 1
                     Next
                  If l012C% = 0 Then
                     l0090% = gv030C%
                     If l0090% > gv030C% Then
                        l0090% = gv030C%
                        End If
                     l00A8% = l00A8% + 1:
                     l0054%(l00A8%) = l006C%(l0106%)
                     l0060%(l00A8%) = l0110%
                     gv0372%(gv03A4%) = l006C%(l0106%)
                     Call sub023E(l006C%(l0106%), l0092%, 3, l0090%)
                     If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                     l0138% = 1
                     End If
                  l013A% = 1:
                  End If
               End If
            Next
         If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
         If l0138% = 0 Then
            For l0128% = 1 To l0126%
               Call sub0391(l0072%(), l006C%(l0128%), l013C%)
               For l0106% = 1 To l013C%
                  If gv0260(l0072%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
                     If gv0260(l0072%(l0106%)).M1E25 = gv0260(l0110%).M1E25 Then
                        l0090% = gv030C%
                        If l0090% > gv030C% Then
                           l0090% = gv030C%
                           End If
                        l00A8% = l00A8% + 1:
                        l0054%(l00A8%) = l0072%(l0106%):
                        gv0372%(gv03A4%) = l0072%(l0106%)
                        Call sub023E(l0072%(l0106%), l0092%, 3, l0090%)
                        l013A% = 1: l0138% = 1
                        End If
                     End If
                  Next
               If l0138% = 0 Then
                  For l014E% = 1 To l013C%
                     Call sub0391(l0078%(), l0072%(l014E%), l0150%)
                     For l0120% = 1 To l0150%
                        If gv0260(l0078%(l0120%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
                           If gv0260(l0078%(l0120%)).M1E25 = gv0260(l0110%).M1E25 Then
                              l0090% = gv030C%
                              If l0090% > gv030C% Then
                                 l0090% = gv030C%
                                 End If
                              l00A8% = l00A8% + 1:
                              l0054%(l00A8%) = l0078%(l0120%):
                              gv0372%(gv03A4%) = l0078%(l0120%)
                              Call sub023E(l0078%(l0120%), l0092%, 3, l0090%)
                              If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                              l013A% = 1: l0138% = 1
                              End If
                           End If
                        Next
                     If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                     Next
                  End If
               If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
               Next
            End If
         End If
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
      Next
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   If gv030C% < 1 Then Return
   If gv030C% > 3 Then
      ReDim l0140%(1, 6), l0146%(1, 6), l0152%(1)
      l013E% = 1: l0152%(1) = gv0260(gv0372%(gv03A4%)).M1E25
      Call sub032A(l013E%, l0152%(), l0140%(), l0146%(), l014C%)
      If l014C% = 1 Then
         For l0110% = 1 To UBound(l0140%, 1)
            For l0106% = 1 To UBound(l0140%, 2)
               If l0140%(l0110%, l0106%) > 0 Then
                  If gv0260(l0140%(l0110%, l0106%)).M1EC2 < l0146%(l0110%, l0106%) Then
                     l0090% = (l0146%(l0110%, l0106%)) - gv0260(l0140%(l0110%, l0106%)).M1EC2
                     If l0090% > gv030C% Then l0090% = gv030C% \ 2
                     Call sub023E(l0140%(l0110%, l0106%), l0092%, 3, l0090%)
                     If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                     End If
                  End If
               If gv030C% < 1 Then Exit For
               If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
               Next
            If gv030C% < 1 Then Exit For
            If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
            Next
            End If
      End If
   If gv030C% < 1 Then Return
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   Call sub0391(l0066%(), gv0372%(gv03A4%), l0108%)
   Call sub034F(l0066%(), l0108%, l0158%)
   If l0158% > 0 Then
      l0090% = gv030C%
      If l0090% > gv030C% Then
            l0090% = gv030C%
         Else
         End If
      l013A% = 1
      l00A8% = l00A8% + 1
      l0054%(l00A8%) = gv0372%(gv03A4%)
      Call sub023E(gv0372%(gv03A4%), l0158%, 3, l0090%)
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
      End If
   For l0110% = l0102% To l0104%
      If gv0260(l0110%).M1E9A <> gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
         Call sub0391(l006C%(), l0110%, l0126%)
         For l0106% = 1 To l0126%
            If gv0260(l006C%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv030C% > 0 Then
               l0090% = gv030C%
               If l0090% > gv030C% Then
                  l0090% = gv030C%
                  End If
               If (l0090% + gv0260(l006C%(l0106%)).M1EC2) >= (gv0260(l0110%).M1EC2 * 2) Then
                  l00A8% = l00A8% + 1
                  l0054%(l00A8%) = l006C%(l0106%)
                  End If
               Call sub023E(l006C%(l0106%), l0092%, 3, l0090%)
               If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
               l013A% = 1
               End If
            Next
         End If
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
      Next
   If gv030C% < 1 Then Return
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   Call sub0318(l007E%(), gv0260(gv0372%(gv03A4%)).M1E25, l015A%)
   l015C% = 0
   For l0110% = 1 To l015A%
      If gv0260(l007E%(l0110%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
         l015C% = l015C% + 1
         End If
      Next
   If l015C% > 0 Then
      l015E% = gv030C% \ l015C%: l0160% = l015E% Mod l015C%
      For l0110% = 1 To l015A%
         If gv0260(l007E%(l0110%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
            If (l015E% + gv0260(l007E%(l0110%)).M1EC2 + l0160%) > 99 Then
                  l0090% = 99 - gv0260(l007E%(l0110%)).M1EC2
               Else
                  l0090% = l015E% + l0160%: l0160% = 0
               End If
            If l0090% > 0 Then
               Call sub023E(l007E%(l0110%), l0092%, 3, l0090%)
               If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
               End If
            End If
         Next
      End If
   If gv030C% < 1 Then Return
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   For l0120% = 1 To 6
      If l0120% <> gv0260(gv0372%(gv03A4%)).M1E25 Then
         Call sub0318(l007E%(), l0120%, l015A%)
         l015C% = 0
         For l0110% = 1 To l015A%
            If gv0260(l007E%(l0110%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
               l015C% = l015C% + 1
               End If
            Next
         If l015C% > 0 Then
            l015E% = gv030C% \ l015C%: l0160% = l015E% Mod l015C%
            For l0110% = 1 To l015A%
               If gv0260(l007E%(l0110%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
                  If (l015E% + gv0260(l007E%(l0110%)).M1EC2) > 99 Then
                        l0090% = 99 - gv0260(l007E%(l0110%)).M1EC2
                     Else
                        l0090% = l015E%
                     End If
                  If l0090% > 0 Then
                     Call sub023E(l007E%(l0110%), l0092%, 3, l0090%)
                     If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
                     End If
                  End If
               Next
            End If
         End If
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
      Next
   If gv030C% < 1 Then Return
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   For l0110% = 1 To UBound(l0054%, 1)
      If l0054%(l0110%) > 0 Then l0162% = l0162% + 1
      Next
   If l0162% > 0 Then
      l015E% = gv030C% \ l0162%: l0160% = l015E% Mod l0162%
      For l0110% = 1 To l0162%
         If (l015E% + gv0260(l0054%(l0110%)).M1EC2) > 99 Then
               l0090% = 99 - gv0260(l0054%(l0110%)).M1EC2
            Else
               l0090% = l015E%
            End If
         If l0090% > 0 Then
            Call sub023E(l0054%(l0110%), l0092%, 3, l0090%)
            If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
            End If
         Next
      End If
   If gv030C% < 1 Then Return
   If gv0714% And ContMap.IPPort1.Connected = 0 Then Return
   For l0110% = 1 To gv02C6%
      If gv0260(l0110%).M1E9A = gv02D6(gv03A4%).M1EA3 Then
         If (gv030C% + gv0260(l0110%).M1EC2) > 99 Then
               l0090% = 99 - gv0260(l0110%).M1EC2
            Else
               l0090% = gv030C%
            End If
         Call sub023E(l0110%, l0092%, 3, l0090%)
         If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
         If gv030C% < 1 Then Exit For
         End If
      Next
   gv030C% = 0
   Return

LE7AE:
   gv0372%(gv03A4%) = 0: gv0518% = 0: l0164% = 0
   Do
      l0166% = Int((gv02C6% - 1 + 1) * Rnd + 1)
      For l0168% = l0166% To gv0294(gv0260(l0166%).M1E25).M1F0B
         If gv0260(l0168%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
               l00F6% = DoEvents()
            Call sub0391(l006C%(), l0168%, l0126%)
            For l0106% = 1 To l0126%
               If gv0260(l006C%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
                  l0090% = gv0260(l0168%).M1EC2 * 2.5
                  If l0090% > gv030C% Then
                     l0090% = gv030C%
                     End If
                  l00A8% = 1: l00AC% = 0
                  l0054%(1) = l006C%(l0106%)
                  gv0372%(gv03A4%) = l006C%(l0106%)
                  l0164% = l006C%(l0106%)
                  Exit For
                  End If
               Next
            End If
         If l0164% Then Exit For
         Next
      l016A% = l016A% + 1
      Loop While (l0164% = 0) And l016A% < 300
   If l0164% = 0 Then
      For l0168% = 1 To gv02C6%
         If gv0260(l0168%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
               l00F6% = DoEvents()
            Call sub0391(l006C%(), l0168%, l0126%)
            For l0106% = 1 To l0126%
               If gv0260(l006C%(l0106%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
                  l0090% = gv0260(l0168%).M1EC2 * 2.5
                  If l0090% > gv030C% Then
                     l0090% = gv030C%
                     End If
                  l00A8% = 1: l00AC% = 0
                  l0054%(1) = l006C%(l0106%)
                  gv0372%(gv03A4%) = l006C%(l0106%)
                  l0164% = l006C%(l0106%)
                  Exit For
                  End If
               Next
            End If
         Next
      End If
   Return

LEAE2:
   If gv030C% < 1 Then Return
   ReDim l016C%(6, 6, 2)
   For l0172% = 1 To 6
      l00F8% = 1
      l0102% = gv0294(l0172%).M1EFF
      l0104% = gv0294(l0172%).M1F0B
      For l0106% = l0102% To l0104%
         If gv0260(l0106%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then l00F8% = 0: Exit For
         Next
      If l00F8% = 1 Then
         Call sub0318(l007E%(), gv0260(gv0372%(gv03A4%)).M1E25, l015A%)
         For l0110% = 1 To l015A%
               l00F6% = DoEvents()
            l016C%(l0172%, l0110%, 1) = l007E%(l0110%)
            Call sub0391(l006C%(), l007E%(l0110%), l0126%)
            For l0106% = 1 To l0126%
               If gv0260(l006C%(l0106%)).M1E25 <> gv0260(gv0372%(gv03A4%)).M1E25 Then
                  If gv0260(l006C%(l0106%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
                     l0102% = gv0294(gv0260(l006C%(l0106%)).M1E25).M1EFF
                     l0104% = gv0294(gv0260(l006C%(l0106%)).M1E25).M1F0B
                     l0174% = 0
                     For l0128% = l0102% To l0104%
                        If gv0260(l0128%).M1EAC = gv02D6(gv03A4%).M1EA3 Then
                           l0174% = l0174% + 1
                           End If
                        Next
                     l0176% = l0104% - l0102%
                     l016C%(l0172%, l0110%, 2) = (l0174% * 100) / l0176%
                     l0178% = 0
                     For l014E% = 1 To gv02CA%
                        If l014E% <> gv03A4% Then
                           For l0128% = l0102% To l0104%
                              If gv0260(l0128%).M1E9A = l014E% Then
                                 l0178% = l0178% + gv0484%(l014E%)
                                 Exit For
                                 End If
                              Next
                           End If
                        Next
                     l016C%(l0172%, l0110%, 2) = l016C%(l0172%, l0110%, 2) + 300 - l0178%
                     Exit For
                     End If
                  End If
               Next
            Next
         End If
      Next
   l0182% = 0: l0184% = 0
   For l0106% = 1 To 6
      For l0110% = 1 To 6
         If l016C%(l0106%, l0110%, 2) > l0182% Then l0182% = l016C%(l0106%, l0110%, 2): l0184% = l016C%(l0106%, l0110%, 1)
         Next
      Next
   If l0184% > 0 Then
         l0090% = gv030C%
         l00A8% = 1: l00AC% = 0
         l0054%(1) = l0184%
         gv0372%(gv03A4%) = l0184%
         Call sub023E(l0184%, l0166%, 3, l0090%)
         l013A% = 1
      Else
         gv0372%(gv03A4%) = 0
      End If
   Return
End Sub

