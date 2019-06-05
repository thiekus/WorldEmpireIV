Attribute VB_Name = "MODULE2"
' Module2
Option Explicit
Const mc0098 = 5 ' &H5%
Const m00AA = 0 ' &H0%
Const mc00FC = 1 ' &H1%
Const mc028E = 5 ' &H5%
Const mc0364 = 1 ' &H1%

Sub sub020F(p0006 As Integer, p0008 As Integer, p000A As Integer, p000C As Integer)
Dim l0010 As Long
Dim l0012 As Long
Dim l0014 As Long
Dim l0016 As Integer
Dim l0018 As Integer
Dim l001A As Integer
Dim l001C As Integer
Dim l001E As Integer
Dim l0020 As Integer
Dim l002A As Integer
Dim l0044 As Long
Dim l0046 As Long
   If gv0596% Then
            Call sub0223(0, p0008%, l0010&, l0012&, l0014&, l0016%)
            l0018% = l0010& + l0014&
            Call sub0223(0, p0006%, l0010&, l0012&, l0014&, l0016%)
            l001A% = l0010& + l0014&
            l001C% = Abs(l0018% - l001A%)
            If l001C% = 0 Then l001E% = 6 Else l001E% = 3
            Randomize Timer
            l0018% = Int((((l0018% \ 2) + 1 + l001C% + l001E%) - 0 + 1) * Rnd + 0)
            l001A% = Int((((l0018% \ 2) + 1 + l001C% + l001E%) - 0 + 1) * Rnd + 0)
        Else
           Randomize Timer
           l0018% = Int((6 - 0 + 1) * Rnd + 0)
           l001A% = Int((6 - 0 + 1) * Rnd + 0)
        End If
    l0020% = l0018% - l001A%
    Select Case l0020%
        Case Is > 0
            GoSub LE68
        Case Is < 0
            GoSub L110C
        Case 0
            If gv0596% Then
                    GoSub LE68
                Else
                    If gv0260(p0008%).M1EA3 = gv0260(p0006%).M1EAC Then
                            GoSub LE68
                        Else
                            GoSub L110C
                        End If
                End If
        Case Else
        End Select
    If p000A% = 1 Then
        p000C% = 1
        For l002A% = 1 To gv02C6%
            If (gv0260(l002A%).M1E9A = gv0260(p0006%).M1E9A And (l002A% <> p0006%)) Or (gv0260(p0006%).M1E9A = 0) Then
                p000C% = 0: Exit For
                End If
            Next
        End If
    If p000C% Then
        gv0554% = gv0260(p0006%).M1E9A: gv0556% = gv03A4%
        End If
    If gv0260(p0006%).M1EC2 = 0 Then
        gv0260(p0006%).M1E9A = gv02D6(gv03A4%).M1EA3
        gv0260(p0006%).M1EA3 = gv02D6(gv03A4%).M1EA3
        gv0260(p0006%).M1ECC = gv02D6(gv03A4).M1ECC
        End If
    Exit Sub

LE68:
    gv0260(p0006%).M1EC2 = gv0260(p0006%).M1EC2 - 1
    If gv0260(p0006%).M1EC2 = 0 Then p000A% = 1
    gv02D6(gv03A4%).M1FA8 = gv02D6(gv03A4%).M1FA8 + 1
    gv02D6(gv0260(p0006%).M1E9A).M1F8B = gv02D6(gv0260(p0006%).M1E9A).M1F8B + 1
    If gv02D6(gv03A4%).M1F50 = gc088A Then
        Else
            If gv0594% = 1 Then
                    If gv0260(p0006%).M1EAC = gv03A4% Then
                            CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(p0006%).M1EC2) + "  (1)"
                        Else
                            CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(p0006%).M1EC2) + "  (" + LTrim$(Str$(gv0260(p0006%).M1EB8)) + ")"
                        End If
                Else
                    CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(p0006%).M1EC2)
                End If
            CountMap.Box_Attackee_Status.Line (100, 30)-(250, 170), gv0260(p0006%).M1ECC, BF
            CountMap.Box_Attackee_Status.Line (300, 30)-(450, 170), gv02D6(gv0260(p0006%).M1EAC).M1ECC, BF
            l0044& = CountMap.Label_Attackee_Name.Top + CountMap.Label_Attackee_Name.Height
            l0046& = CountMap.Label_Attackee_Name.Left
            Call sub0232(l0044&, l0046&)
        End If
    Return

L110C:
    gv0260(p0008%).M1EC2 = gv0260(p0008%).M1EC2 - 1
    If gv0260(p0008%).M1EC2 = 1 Then p000A% = 2
    gv02D6(gv03A4%).M1F8B = gv02D6(gv03A4%).M1F8B + 1
    gv02D6(gv0260(p0006%).M1E9A).M1FA8 = gv02D6(gv0260(p0006%).M1E9A).M1FA8 + 1
    If gv02D6(gv03A4%).M1F50 = gc088A Then
        Else
            If gv0594% = 1 Then
                    If gv0260(p0008%).M1EAC = gv03A4% Then
                            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(p0008%).M1EC2) + "  (1)"
                        Else
                            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(p0008%).M1EC2) + "  (" + LTrim$(Str$(gv0260(p0008%).M1EB8)) + ")"
                        End If
                Else
                    CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(p0008%).M1EC2)
                End If
            l0044& = CountMap.Label_Attacker_Name.Top + CountMap.Label_Attacker_Name.Height
            l0046& = CountMap.Label_Attacker_Name.Left
            Call sub0232(l0044&, l0046&)
        End If
    Return
End Sub

Sub sub0223(p1 As Integer, p022C As Integer, p022E As Long, p0230 As Long, p0232 As Long, p0234 As Integer)
' called (p1%, p2%, p3&, p4&, p5&, p6%)
Dim l0236 As Integer
Dim l0238 As Integer
Dim l023A As Integer
Dim l023C As Integer
Dim l023E As Integer
    For l0236% = 1 To gv02C6%
        If gv0260(l0236%).M1E9A > 0 Then
            If gv0260(l0236%).M1E9A = gv0260(p022C%).M1E9A Then
                l0238% = l0238% + 1
                l023A% = l023A% + gv0260(l0236%).M1E5E
                l023C% = l023C% + gv0260(l0236%).M1E7F
                l023E% = l023E% + gv0260(l0236%).M1E78
                End If
            End If
        Next
    If l0238% = 0 Then
        l0238% = l0238% + 1
        l023A% = l023A% + gv0260(p022C%).M1E5E
        l023C% = l023C% + gv0260(p022C%).M1E7F
        l023E% = l023E% + gv0260(p022C%).M1E78
        End If
    l023A% = (l023A% \ l0238%)
    l023C% = (l023C% \ l0238%)
    l023E% = (l023E% \ l0238%)
    p022E& = l023A% - (l023C% * 0.1)
    If l023C% < 5 Then p022E& = p022E& \ 2
    p022E& = 10 * (p022E& / 100)
    p0232& = (p022E& * 0.3) * (l023E% / 100)
    If p0232& < 1 Then p0232& = 1
    p0230& = 10 - p022E&
    If p0230& < 1 Then p0230& = 1
    p022E& = p022E& - p0232&
    If p022E& < 1 Then p022E& = 1
    p0234% = p0232& + p0230& + p022E&
End Sub

Sub sub0232(p0084 As Long, p0086 As Long)
Dim l008A As Integer
Dim l008C As Integer
Dim l008E As Single
Dim l0090 As Integer
' Const mc0098 = 5 ' &H5%
    CountMap.Box_Blast.Top = p0084&
    CountMap.Box_Blast.Left = p0086& + 200
    CountMap.Box_Blast.Visible = -1
    If gv05DC% = 1 Then
            l008A% = 3: l008C% = 3: l008E! = 0.03
        Else
            l008A% = 1: l008C% = 4: l008E! = 0.06
        End If
    For l0090% = l008A% To l008C%
        CountMap.Box_Blast.Picture = LoadPicture(AppResc$ + "\" + "tb" + LTrim$(Str$(l0090%)) + ".bmp")
        Call sub0290(l008E!)
        Next
    If gv01F4% = 0 Then Call sndPlaySound(gv01EC, mc0098)
    CountMap.Box_Blast.Visible = 0
End Sub

Sub sub023E(p0048 As Integer, p004A As Integer, p004C As Integer, p004E As Integer)
Dim l0054 As String
Dim l0056 As String
Dim l0058 As String
Dim l005A As String
Dim l005C As String
Dim l0060 As String
Dim l0066 As Integer
Dim l006A As Integer
Dim l0070 As Integer
Dim l007C As String
Dim l0082 As Single
    Select Case p004C%
        Case 2
            If gv0260(p004A%).M1EC2 > 98 Then Exit Sub
            If gv0714% = 0 Then
                    If gv055C% = 0 Then
                        l0054$ = "Transferring To:"
                        l0056$ = RTrim$(gv0260(p004A%).M1E1E)
                        l0058$ = "From " + RTrim$(gv0260(p0048%).M1E1E)
                        l005A$ = ""
                        l005C$ = ""
                        Call sub0253(l0054$, l0056$, l0058$, l005A$, l005C$)
                        End If
                 Else
                     l0060$ = gc0854
                 End If
        Case 3
            If gv0260(p0048%).M1EC2 > 98 Then Exit Sub
            If gv0714% = 0 Then
                    If gv055C% = 0 Then
                        l0054$ = "Assigning To:"
                        l0056$ = RTrim$(gv0260(p0048%).M1E1E)
                        l0058$ = "From New Recruit Bank"
                        l005A$ = ""
                        l005C$ = ""
                        Call sub0253(l0054$, l0056$, l0058$, l005A$, l005C$)
                        End If
                Else
                    l0060$ = gc0858
                End If
        Case 5
            If gv0260(p004A%).M1EC2 > 98 Then Exit Sub
            If gv0714% = 0 Then
                    If gv055C% = 0 Then
                        l0054$ = "Transferring To:"
                        l0056$ = RTrim$(gv0260(p004A%).M1E1E)
                        l0058$ = "From " + RTrim$(gv0260(p0048%).M1E1E)
                        l005A$ = ""
                        l005C$ = ""
                        Call sub0253(l0054$, l0056$, l0058$, l005A$, l005C$)
                        End If
                 Else
                     l0060$ = gc0850
                 End If
        Case Else
        End Select
    If gv0714% = 0 Then
            For l0066% = 1 To p004E%
                If p004C% = 3 Then
                        gv030C% = gv030C% - 1
                        gv0260(p0048%).M1EC2 = gv0260(p0048%).M1EC2 + 1
                        If gv055C% = 0 Then
                            l0054$ = "XX"
                            l0056$ = "XX"
                            l0058$ = "XX"
                            l005A$ = Str$(gv0260(p0048%).M1EC2)
                            l005C$ = Str$(gv030C%)
                            Call sub0253(l0054$, l0056$, l0058$, l005A$, l005C$)
                            End If
                        If gv030C% = 0 Or gv0260(p0048%).M1EC2 > 98 Then Exit For
                    Else
                        gv0260(p0048%).M1EC2 = gv0260(p0048%).M1EC2 - 1
                        gv0260(p004A%).M1EC2 = gv0260(p004A%).M1EC2 + 1
                        If gv055C% = 0 Then
                            l0054$ = "XX"
                            l0056$ = "XX"
                            l0058$ = "XX"
                            l005A$ = Str$(gv0260(p004A%).M1EC2)
                            l005C$ = Str$(gv0260(p0048%).M1EC2)
                            Call sub0253(l0054$, l0056$, l0058$, l005A$, l005C$)
                            End If
                        If gv0260(p004A%).M1EC2 > 98 Then Exit For
                    End If
                l006A% = DoEvents()
                Next
         Else
            If p004C% = 3 Then
                    gv030C% = gv030C% - p004E%
                    gv0260(p0048%).M1EC2 = gv0260(p0048%).M1EC2 + p004E%
                    gv02CE% = p0048%
                Else
                    gv0260(p0048%).M1EC2 = gv0260(p0048%).M1EC2 - p004E%
                    gv0260(p004A%).M1EC2 = gv0260(p004A%).M1EC2 + p004E%
                    gv02CC% = p0048%
                    gv02CE% = p004A%
                End If
            l0070% = p004E%
            ContMap.MousePointer = 11
            If ContMap.IPPort1.Connected = 0 Then Exit Sub
            l007C$ = gc07EC + l0060$ + gc07E4 + Str$(gv02CE%) + gc07E4 + Str$(gv02CC%) + gc07E4 + Str$(gv0260(gv02CE%).M1EC2) + gc07E4 + Str$(gv0260(gv02CC%).M1EC2) + gc07E4 + Str$(l0070%) + gc07E4 + gc07E8
            sub0264 "Sending Notice Of Transfer...", "Chip:"
            gv0734% = 0
            Call sub0273(l007C$)
            l0082! = Timer + (gv0692%)
            Do Until gv0734% Or Timer > l0082!
                DoEvents
                Loop
            If gv0734% = 0 Then
                    sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                    Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                Else
                    sub0264 "Okay.", "Host:"
                    Call sub0290(1.5)
                End If
         End If
    If gv0714% = 0 Then
        If gv055C% = 0 Then
            Call sub0290(0.6)
            l0054$ = "Thinking..."
            l0056$ = ""
            l0058$ = ""
            l005A$ = ""
            l005C$ = ""
            Call sub0253(l0054$, l0056$, l0058$, l005A$, l005C$)
            End If
        End If
End Sub

Sub sub0290(p0212 As Single)
Dim l0214 As Single
Dim l0216 As Integer
    l0214! = Timer + p0212!
    Do
        l0216% = DoEvents()
        If l0214! - Timer > 20000 Then Exit Do
        Loop While Timer < l0214!
End Sub

Sub sub029D()
Dim l00A6 As Integer
' Const m00AA = 0 ' &H0%
Dim l00AC As Integer
Dim l00B0 As Integer
Dim l00B4 As Integer
Dim l00B6() As Integer
Dim l00BC As Integer
Dim l00C6 As Integer
Dim l00C8 As Integer
Dim l00CA As Integer
Dim l00CC As Integer
Dim l00CE As Integer
Dim l00D0 As Integer
Dim l00D2 As Integer
Dim l00D4 As String
Dim l00DE As String
Dim l00E0 As String
Dim l00E2 As String
Dim l00EC As Integer
Dim l00EE As Integer
Dim l00F6 As Integer
Dim l00F8 As Variant
' Const mc00FC = 1 ' &H1%
Dim l00FE As String
Dim l0100 As Integer
Dim l0102 As Integer
Dim l0104 As Integer
    Screen.MousePointer = 11
    Call sub02AB(0)
    Call sub02BB(0)
    If gv0594% <> 2 Then
        Do
            GoSub L26C6
            Loop While gv051C%
        If gv03AE%(gv03A4%) = 0 Then
            For l00A6% = 1 To gv02CA%
                If gv02D6(l00A6%).M1F5D = m00AA Then l00AC% = l00AC% + 1
                Next
            gv03AE%(gv03A4%) = gv030A% + Int(((3 * l00AC%) - 1 + 1) * Rnd + 1)
            End If
        End If
    Screen.MousePointer = 11
    ContMap.Picture3.BackColor = gv02D6(gv03A4%).M1ECC
    If gv02D6(gv03A4%).M1F50 = gc088A Then l00B0% = 3 Else l00B0% = 0
    If gv0714% Then
            ContMap.Box_WhoseTurn.Picture = LoadPicture(AppData$ + "\empfiles\" + "pictemp" + LTrim$(Str$(gv03A4%)) + ".bmp")
        Else
            ContMap.Box_WhoseTurn.Picture = LoadPicture(AppResc$ + "\" + "Genr" + LTrim$(Str$(gv03A4% + l00B0%)) + ".bmp")
        End If
    ContMap.PicFlag.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv03A4%)) + ".bmp")
    ContMap.Box_WhoseTurn.Left = ((ContMap.Picture3.Width - ContMap.Box_WhoseTurn.Width) / 2)
    ContMap.Box_WhoseTurn.Top = ((ContMap.Picture3.Height - ContMap.Box_WhoseTurn.Height) / 2)
    ContMap.Refresh
    l00B4% = 1
    ReDim l00B6%(6)
    l00BC% = 0
    For l00B4% = 1 To 6
        l00C6% = gv0294(l00B4%).M1EFF
        l00C8% = gv0294(l00B4%).M1F0B
        l00CA% = 1
        For l00A6% = l00C6% To l00C8%
            If (gv0260(l00A6%).M1E9A <> gv02D6(gv03A4%).M1EA3) Or gv0596% Then
            l00CA% = 0
            End If
            If gv0260(l00A6%).M1E9A = gv02D6(gv03A4%).M1EA3 Then
            l00BC% = l00BC% + 1
            If gv0596% Then
                l00CC% = l00CC% + (gv0260(l00A6%).M1E57)
                End If
            End If
            l00CE% = DoEvents()
            Next
        If l00CA% = 1 And gv0596% = 0 Then l00B6%(l00B4%) = 1 Else l00B6%(l00B4%) = 0
        Next
    If gv0596% Then
            gv030C% = l00CC%
        Else
            gv030C% = l00BC% \ 2
        End If
    For l00A6% = 1 To 6
        If l00B6%(l00A6%) = 1 Then
        l00D0% = l00D0% + gv0294(l00A6%).M1F35
        l00D2% = l00D2% + 1
        End If
        Next
    If gv0714% Or (gv055C% And gv02D6(gv03A4%).M1F50 = gc088A) Then
        GoSub L2674: Screen.MousePointer = 0
        Exit Sub
        End If
    ContMap.Frame_Info.Caption = ""
    ContMap.Frame_Info.Visible = -1
    Call sub02D4(-1)
    If gv02D6(gv03A4%).M1F50 = gc088A Then
        Else
            ContMap.Command14.Visible = -1
            ContMap.Command14.SetFocus
        End If
    l00D4$ = "General " + RTrim$(gv02D6(gv03A4%).M1E1E)
    ContMap.Label7.Caption = "Your turn, " + l00D4$ + "."
    If gv030A% <= gv024A% Then
            ContMap.Label7.Caption = ContMap.Label7.Caption + "  You begin in " + RTrim$(gv0260(gv030E%(gv03A4%)).M1E1E) + "."
            End If
    l00DE$ = Str$(l00BC%)
    l00E0$ = Str$(gv030C%)
    If gv030C% > 0 Then
        ContMap.Label13.Caption = "Armies"
        ContMap.Label8.Caption = "Countries"
        ContMap.Label9.Caption = l00DE$
        ContMap.Label10.Caption = l00E0$
        l00B4% = 0
        For l00A6% = 1 To 6
            If l00B6%(l00A6%) = 1 Then
                l00B4% = l00B4% + 1
                ContMap.Label11(l00B4% - 1).Caption = (gv0294(l00A6%).M1E1E)
                l00E2$ = Str$(gv0294(l00A6%).M1F35)
                ContMap.Label12(l00B4% - 1).Caption = (l00E2$)
                End If
            Next
        GoSub L2674
        ContMap.Label11(l00B4%).Caption = String$(25, "-")
        ContMap.Label12(l00B4%).Caption = String$(6, "-")
        ContMap.Label11(l00B4% + 1).Caption = "Total armies raised"
        l00E2$ = Str$(gv030C%)
        ContMap.Label12(l00B4% + 1).Caption = l00E2$
        End If
    If gv02D6(gv03A4%).M1F50 = gc088A Then
        Else
            If gv01F6% = 0 Then Call sub02E3("Start.mid")
        End If
    Screen.MousePointer = 0
Exit Sub

L2674:
    gv030C% = gv030C% + l00D0%
    gv0484%(gv03A4%) = gv030C%
    gv02D6(gv03A4%).M1F99 = gv02D6(gv03A4%).M1F99 + gv030C%
    Return

L26C6:
    gv051C% = 0
    If gv03AE%(gv03A4%) <= gv030A% Then
        gv03AE%(gv03A4%) = 0
        For l00A6% = 1 To gv02C6%
            l00CE% = DoEvents()
            l00EC% = 0
            For l00EE% = 1 To gv02C6%
                If gv0260(l00EE%).M1E9A = gv02D6(gv03A4%).M1EA3 Then l00EC% = l00EC% + 1
                Next
            If gv0260(l00A6%).M1E9A = gv02D6(gv03A4%).M1EA3 And l00EC% > 1 Then
                If gv0260(l00A6%).M1EAC > 0 And (gv0260(l00A6%).M1EAC <> gv02D6(gv03A4%).M1EA3) Then
                    If gv0260(l00A6%).M1EC2 < gv0260(l00A6%).M1EB8 Then
                        ContMap.Frame_Info.Visible = -1
                        ContMap.Box_Revolt.Picture = LoadPicture(AppResc$ + "\" + "trevolt.bmp")
                        ContMap.Box_Revolt.Left = (ContMap.Frame_Info.Width - ContMap.Box_Revolt.Width) / 2
                        ContMap.Box_Revolt.Visible = -1
                        ContMap.Label_Revolt.Visible = -1
                        ContMap.Label_Revolt.Caption = "Eureka, General " + RTrim$(gv02D6(gv03A4%).M1E1E) + "! The "
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + gv03E6$(gv0260(l00A6%).M1EAC)
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + "s of "
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + RTrim$(gv0260(l00A6%).M1E1E)
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + " have found your rule so revolting that they have revolted! "
                        For l00B4% = 1 To gv02CA%
                            If l00B4% = gv0260(l00A6%).M1EAC Then
                                l00F6% = l00B4%: Exit For
                                End If
                            Next
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + RTrim$(gv0260(l00A6%).M1E1E)
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + " has called in "
                        ContMap.Label_Revolt.Caption = ContMap.Label_Revolt.Caption + "general " + RTrim$(gv02D6(l00F6%).M1E1E) + "."
                        l00F8 = AppResc$ + "\c3.wav"
                        If gv01F4% = 0 Then Call sndPlaySound(l00F8, mc00FC)
                        ContMap.Refresh
                        l00FE$ = ""
                        Call sub0290(4.5)
                        ContMap.Frame_Info.Visible = 0
                        ContMap.Box_Revolt.Picture = LoadPicture()
                        ContMap.Box_Revolt.Visible = 0
                        ContMap.Label_Revolt.Visible = 0
                        gv051C% = l00A6%: GoSub L2C0C: l0100% = -1
                        End If
                    End If
                End If
            Next
        End If
    Return

L2C0C:
    For l00B4% = 1 To gv02CA%
        If l00B4% = gv0260(gv051C%).M1EAC Then
            l00F6% = l00B4%: Exit For
            End If
        Next
    For l0102% = 1 To gv02C6%
        If gv0260(l0102%).M1E9A = gv02D6(l00F6%).M1EA3 Then l0104% = l0102%: Exit For
        Next
    gv0260(gv051C%).M1E9A = gv0260(l0104%).M1E9A
    gv0260(gv051C%).M1ECC = gv0260(l0104%).M1ECC
    gv0260(gv051C%).M1EA3 = gv0260(l0104%).M1EA3
    gv0260(gv051C%).M1EC2 = 5
    Call sub02F3(gv051C%, gv0260(gv051C%).M1ECC)
    gv02D6(l00F6%).M1F99 = gv02D6(l00F6%).M1F99 + 5
    Return
End Sub

Sub sub02AB(p01EA As Integer)
    ContMap.Command1.Visible = p01EA%
    If ContMap.Command1.Caption = "Force Pass" Then ContMap.Command1.Caption = "Pass"
    ContMap.Command2.Enabled = p01EA%
    ContMap.Command3.Enabled = p01EA%
    ContMap.Command4.Enabled = p01EA%
    ContMap.Command5.Enabled = p01EA%
    ContMap.Command6.Enabled = p01EA%
    ContMap.Command7.Enabled = p01EA%
    If gv0714% = 0 Then
            ContMap.Button_Blitz.Visible = p01EA%
        Else
            ContMap.Button_Blitz.Visible = 0
        End If
    ContMap.Image_Surrend.Visible = p01EA%
    ContMap.Image_Help.Visible = p01EA%
    ContMap.ComMode.Visible = p01EA%
    ContMap.Refresh
End Sub

Sub sub02BB(p037C As Integer)
    ContMap.Command2.Visible = p037C%
    ContMap.Command3.Visible = p037C%
    ContMap.Command4.Visible = p037C%
    ContMap.Command5.Visible = p037C%
    ContMap.Command6.Visible = p037C%
    ContMap.Command7.Visible = p037C%
End Sub

Sub sub02D4(p020E As Integer)
Dim l0210 As Integer
   ContMap.Label7.Caption = ""
   ContMap.Label8.Caption = ""
   ContMap.Label9.Caption = ""
   ContMap.Label10.Caption = ""
   ContMap.Label7.Visible = p020E%
   ContMap.Label8.Visible = p020E%
   ContMap.Label9.Visible = p020E%
   ContMap.Label10.Visible = p020E%
   For l0210% = 0 To 8
      ContMap.Label11(l0210%).Caption = ""
      ContMap.Label11(l0210%).Visible = p020E%
      Next
   For l0210% = 0 To 8
      ContMap.Label12(l0210%).Caption = ""
      ContMap.Label12(l0210%).Visible = p020E%
      Next
   ContMap.Label13.Caption = ""
   ContMap.Label13.Visible = p020E%
End Sub

Sub sub02E3(ByVal p0270 As String)
Dim l0272 As String
Dim l0274 As String
Dim l0276 As String
    l0272$ = "close all"
    Call sub04E9(l0272$)
    l0274$ = "Open " + AppResc$ + "\" + p0270$ + " alias midi"
    Call sub04E9(l0274$)
    l0276$ = "Play midi from 0"
    Call sub04E9(l0276$)
 End Sub

Sub sub02F3(p0350 As Integer, p0352 As Long)
Dim l0354 As Integer
Dim l0358 As Integer
Dim l035A As Integer
Dim l035C As Integer
Dim l035E As Integer
Dim l0360 As Integer
Dim l0362 As Long
' Const mc0364 = 1 ' &H1%
Dim l0368 As Integer
    For l0354% = gv0260(p0350%).M1E65 To gv0260(p0350%).M1E6F Step 2
        GoSub L9DE8
        If gv0206% = 2 Or gv0206% = 3 Then Exit Sub
        Next
    Exit Sub

L9DE8:
    l0358% = FreeFile
    Open AppResc$ + "\" + "tontxy2.vbl" For Random As l0358% Len = 2
    l035A% = l0354%
    Get l0358%, l035A%, l035C%
    Get l0358%, l035A% + 1, l035E%
    Close l0358%
    ContMap.Picture1.FillStyle = 0
    ContMap.Picture1.FillColor = p0352&
    If gv0714% = 0 Then l0360% = DoEvents()
    ContMap.Picture1.AutoRedraw = -1
    ContMap.Picture1.ScaleMode = 3
    If gv0206% = 0 Then
            l0362 = ContMap.Picture1.Point(l035C%, l035E%)
            l0362 = l0362 And &H2000000
            l0368% = ExtFloodFill(ContMap.Picture1.hdc, l035C%, l035E%, l0362, mc0364%)
        ElseIf gv0206% = 1 Then
            l0368% = FloodFill(ContMap.Picture1.hdc, l035C%, l035E%, mc0364%)
        ElseIf l0354% = gv0260(p0350%).M1E65 And gv0206% = 2 Then
            ContMap.Picture1.FillStyle = 0
            ContMap.Picture1.FillColor = 0
            ContMap.Picture1.Circle (l035C% - 3, l035E% + 3), 4, 0
            ContMap.Picture1.FillColor = QBColor(15)
            ContMap.Picture1.Circle (l035C%, l035E%), 4, QBColor(15)
            ContMap.Picture1.FillColor = p0352&
            ContMap.Picture1.Circle (l035C%, l035E%), 3, p0352&
        ElseIf l0354% = gv0260(p0350%).M1E65 And gv0206% = 3 Then
            ContMap.Picture1.FillStyle = 0
            ContMap.Picture1.FillColor = 0
            ContMap.Picture1.Circle (l035C% - 3, l035E% + 3), 6, 0
            ContMap.Picture1.FillColor = QBColor(15)
            ContMap.Picture1.Circle (l035C%, l035E%), 6, QBColor(15)
            ContMap.Picture1.FillColor = p0352&
            ContMap.Picture1.Circle (l035C%, l035E%), 5, p0352&
        End If
    ContMap.Picture1.AutoRedraw = 0
    ContMap.Picture1.Refresh
    If gv0714% = 0 Then l0360% = DoEvents()
    ContMap.Picture1.ScaleMode = 0
    Return
End Sub

Sub sub0303(p1 As Integer)
' called (p1%)
Dim l0108 As Integer
Dim l010A As Integer
Dim l010C As Integer
Dim l010E As Integer
Dim l0110 As Integer
Dim l0112 As Integer
Dim l0114() As Integer
Dim l011A() As Integer
Dim l0120() As Integer
Dim l0126 As Integer
Dim l0128 As Integer
Dim l012A As Integer
Dim l012C() As Integer
Dim l0132() As Integer
Dim l0138() As Integer
Dim l013E As Integer
Dim l0140 As Integer
Dim l0142 As Integer
Dim l0144 As Integer
Dim l0146 As Integer
Dim l0148 As Integer
Dim l014A As Integer
Dim l014C As Integer
Dim l014E As Integer
Dim l0150() As Integer
Dim l0156 As Integer
Dim l0158 As Integer
Dim l015A() As Integer
Dim l0160 As Integer
Dim l0162 As Integer
   For l0108% = 1 To 6
      l010A% = gv0294(l0108%).M1EFF
      l010C% = gv0294(l0108%).M1F0B
      l010E% = 1
      For l0110% = l010A% To l010C%
         If gv0260(l0110%).M1E9A <> gv02D6(gv03A4%).M1EA3 Then l010E% = 0
         Next
      l0112% = DoEvents()
      If l010E% Then
         For l0110% = l010A% To l010C%
               If gv0260(l0110%).M1EC2 > gv0260(l0110%).M1EB8 Then
                  ReDim l0114%(1), l011A%(1), l0120%(1)
                  Call sub0318(l0120%(), gv0260(l0110%).M1E25, l0126%)
                  l0128% = 0
                  For l012A% = 1 To l0126%
                     If l0120%(l012A%) = l0110% Then l0128% = 1
                     Next
                  If l0128% = 0 Then
                     ReDim l012C%(1, 6), l0132%(1, 6), l0138%(1)
                     l0138%(1) = l0108%: l013E% = 0: l0140% = 0
                     Call sub032A(1, l0138%(), l012C%(), l0132%(), l013E%)
                     If l013E% Then
                           l0142% = 0
                           For l012A% = 1 To 6
                              If l0132%(1, l012A%) > l0142% Then l0142% = l0132%(1, l012A%): l0144% = l012C%(1, l012A%)
                              Next
                           If gv0260(l0144%).M1EC2 < 99 And gv0260(l0144%).M1EC2 < (l0142%) Then
                              l0140% = l0144%
                              If l0142% < (gv0260(l0110%).M1EC2 - gv0260(l0110%).M1EB8) Then
                                    l0146% = l0142%
                                 Else
                                    l0146% = gv0260(l0110%).M1EC2 - gv0260(l0110%).M1EB8
                                 End If
                              End If
                        Else
                        End If
                     If l0140% > 0 And l0146% > 0 Then
                        For l012A% = 1 To l0126%
                           If l0120%(l012A%) = l0140% Then l0148% = l012A%
                           Next
                        l014A% = l0110%
                        l014C% = l0146%
                        Do
                           l014E% = FreeFile: Open AppResc$ + "\" + "cransfer.vbl" For Random As l014E% Len = 2
                           ReDim l0150%(6)
                           l0156% = ((l014A% - 1) * 6): l0158% = 0
                           For l012A% = 1 To 6
                              Get l014E%, l0156% + l012A%, l0150%(l012A%)
                              If l0150%(l012A%) > 0 Then l0158% = l0158% + 1
                              Next
                           Close l014E%
                           ReDim l015A%(l0158%)
                           For l012A% = 1 To l0158%: l015A%(l012A%) = l0150%(l012A%): Next
                           If gv0260(l015A%(l0148%)).M1E9A = gv02D6(gv03A4%).M1EA3 And gv0260(l015A%(l0148%)).M1EC2 < 99 Then
                                 If gv0260(l015A%(l0148%)).M1EC2 + l014C% > 99 Then
                                    l014C% = 99 - gv0260(l015A%(l0148%)).M1EC2
                                    End If
                                 If l014C% > 0 Then
                                    Call sub023E(l014A%, l015A%(l0148%), 5, l014C%)
                                    If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Do
                                    End If
                                 l014A% = l015A%(l0148%)
                              Else
                                 Exit Do
                              End If
                           Loop Until l015A%(l0148%) = l0140%
                        End If
                     End If
                  End If
               If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
               Next
         End If
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
      Next
   Exit Sub

L33B0:
   ReDim l0150%(l0126%)
   l0160% = 0
   For l012A% = 1 To l0126%
      If gv0260(l0120%(l012A%)).M1E9A = gv02D6(gv03A4%).M1EA3 Then
          l0150%(l012A%) = l0120%(l012A%): l0160% = l0160% + 1
          End If
      Next
   l0162% = Int((l0160% - 1 + 1) * Rnd + 1): l0140% = l0150%(l0162%)
   l0146% = Int((((gv0260(l0110%).M1EC2 - gv0260(l0110%).M1EB8) \ 3) - 1 + 1) * Rnd + 1)
   Return
End Sub

Sub sub0341()
End Sub

Sub sub034F(p0168() As Integer, p016E As Integer, p0170 As Integer)
Dim l0172() As Integer
Dim l0178() As Integer
Dim l017E() As Integer
Dim l0184 As Integer
Dim l0186 As Integer
Dim l0188 As Integer
Dim l0190 As Integer
Dim l0192 As Integer
Dim l0194 As Integer
Dim l0196 As Integer
Dim l0198 As Integer
Dim l019A As Long
Dim l019C As Long
Dim l019E As Long
Dim l01A0 As Integer
Dim l01A2 As Integer
Dim l01A4 As Integer
Dim l01A6 As Integer
Dim l01A8 As Integer
   ReDim l0172%(p016E%), l0178%(p016E%), l017E%(1)
   For l0184% = 1 To p016E%
      If gv0260(p0168%(l0184%)).M1EAC = gv02D6(gv03A4%).M1EA3 Then
         If gv0260(p0168%(l0184%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
            If gv0596% = 0 Then
                Call sub0363(gv03A4%, l017E%(), l0186%)
                For l0188% = 1 To l0186%
                   If l017E%(l0188%) = gv0260(gv0340%(gv03A4%)).M1E25 Then
                      l0190% = 1
                      End If
                   Next
                End If
            If gv0260(p0168%(l0184%)).M1E25 = gv0260(gv0340%(gv03A4%)).M1E25 Or l0190% = 1 Then
               l0192% = l0192% + 1: l0172%(l0192%) = p0168%(l0184%)
               End If
            End If
         End If
      Next
   For l0184% = 1 To p016E%
      If gv0260(p0168%(l0184%)).M1EAC <> gv02D6(gv03A4%).M1EA3 Then
         If gv0260(p0168%(l0184%)).M1E9A <> gv02D6(gv03A4%).M1EA3 Then
            l0190% = 0
            If gv0596% = 0 Then
                Call sub0363(gv03A4%, l017E%(), l0186%)
                For l0188% = 1 To l0186%
                   If l017E%(l0188%) = gv0260(gv0340%(gv03A4%)).M1E25 Then
                      l0190% = 1
                      End If
                   Next
                End If
            If gv0260(p0168%(l0184%)).M1E25 = gv0260(gv0340%(gv03A4%)).M1E25 Or l0190% = 1 Then
               l0194% = l0194% + 1: l0178%(l0194%) = p0168%(l0184%)
               End If
            End If
         End If
      Next
   If l0192% = 0 And l0194% = 0 Then p0170% = 0: Exit Sub
    If gv0596% Then
           l0196% = 0
           For l0198% = 1 To l0192%
              Call sub0223(0, l0172%(l0198%), l019A&, l019C&, l019E&, l01A0%)
              If l019A& + l019E& > l0196% Then
                 l01A2% = l019A& + l019E&
                 l01A4% = l0172%(l0198%)
                 l0196% = l01A2%
                 End If
              Next
        Else
           l0196% = 100
           For l0198% = 1 To l0192%
              If gv0260(l0172%(l0198%)).M1EC2 < l0196% Then
                 l01A2% = gv0260(l0172%(l0198%)).M1EC2
                 l01A4% = l0172%(l0198%)
                 l0196% = l01A2%
                 End If
              Next
        End If
    If gv0596% Then
           l0196% = 0
           For l0198% = 1 To l0194%
              Call sub0223(0, l0178%(l0198%), l019A&, l019C&, l019E&, l01A0%)
              If l019A& + l019E& > l0196% Then
                 l01A6% = l019A& + l019E&
                 l01A8% = l0178%(l0198%)
                 l0196% = l01A6%
                 End If
              Next
       Else
           l0196% = 100
           For l0198% = 1 To l0194%
              If (gv0260(l0178%(l0198%)).M1EC2 + gv0260(l0178%(l0198%)).M1EB8) < l0196% Then
                 l01A6% = gv0260(l0178%(l0198%)).M1EC2 + gv0260(l0178%(l0198%)).M1EB8
                 l01A8% = l0178%(l0198%)
                 l0196% = l01A6%
                 End If
              Next
       End If
   If l01A2% = 0 Then
            p0170% = l01A8%
        ElseIf l01A6% = 0 Then
            p0170% = l01A4%
        End If
   If gv0596% Then
           If p0170% = 0 Then
                If l01A2% > l01A6% Then
                    p0170% = l01A4%
                Else
                    p0170% = l01A8%
                End If
              End If
      Else
           If p0170% = 0 Then
                If l01A2% <= l01A6% Then
                    p0170% = l01A4%
                Else
                    p0170% = l01A8%
                End If
              End If
       End If
End Sub

Sub sub037A(p01AA As Integer, p01AC As Integer)
Dim l01AE() As Integer
Dim l01B4 As Integer
Dim l01B6 As Integer
Dim l01B8 As Integer
Dim l01BA As Integer
Dim l01BC As Integer
Dim l01BE As Integer
Dim l01C0 As Integer
Dim l01C2 As Integer
Dim l01C4 As Integer
Dim l01C6() As Integer
Dim l01CC As Integer
Dim l01CE As Integer
Dim l01D0 As Integer
Dim l01D2 As Integer
Dim l01D4 As Integer
Dim l01D6 As Integer
Dim l01D8() As Integer
Dim l01DE As Integer
Dim l01E0 As Integer
   ReDim l01AE%(0)
   l01B4% = gv0294(gv0260(p01AA%).M1E25).M1EFF
   l01B6% = gv0294(gv0260(p01AA%).M1E25).M1F0B
   l01B8% = p01AA%
   l01BA% = FreeFile: Open AppResc$ + "\" + "cransfer.vbl" For Random As l01BA% Len = 2
   l01BC% = ((l01B8% - 1) * 6): l01BE% = 0
   For l01C0% = 1 To 6
      Get l01BA%, l01BC% + l01C0%, l01C2%
      If l01C2% > 0 Then l01BE% = l01BE% + 1
      Next
   Close l01BA%
   For l01C4% = 1 To l01BE%
      ReDim l01C6%(30): l01CC% = 0
      l01B8% = p01AA%
      Do
         Call sub0391(l01AE%(), l01B8%, l01CE%)
         For l01D0% = 1 To l01CE%
            If gv0260(l01AE%(l01D0%)).M1E9A <> gv0260(l01B8%).M1EA3 Then
               If l01B8% = 78 And l01AE%(l01D0%) = 31 Then
                    Else
                          l01D2% = l01B8%: l01D4% = 1:
                          p01AC% = l01AE%(l01D0%): Exit For
                    End If
               End If
            Next
     l01D6% = DoEvents()
         If l01D4% = 1 Then Exit Do
         l01CC% = l01CC% + 1: l01C6%(l01CC%) = l01B8%
         l01BA% = FreeFile: Open AppResc$ + "\" + "cransfer.vbl" For Random As l01BA% Len = 2
         ReDim l01D8%(6)
         l01BC% = ((l01B8% - 1) * 6): l01DE% = 0
         Get l01BA%, l01BC% + l01C4%, l01B8%
         Close l01BA%
         Loop Until l01B8% = l01C6%(l01CC%)
      If l01D4% = 1 Then Exit For
      Next
   If l01D4% = 1 And l01D2% <> p01AA% Then
      p01AA% = l01D2%
      For l01C4% = 1 To l01CC% - 1
         If gv0260(l01C6%(l01C4%)).M1EAC = gv02D6(gv03A4%).M1EA3 Then
               l01E0% = gv0260(l01C6%(l01C4%)).M1EC2 - 1
            Else
               l01E0% = gv0260(l01C6%(l01C4%)).M1EC2 - gv0260(l01C6%(l01C4%)).M1EB8
            End If
         If l01E0% > 0 Then Call sub023E(l01C6%(l01C4%), l01C6%(l01C4% + 1), 5, l01E0%)
         If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit For
         Next
      If gv0714% And ContMap.IPPort1.Connected = 0 Then Exit Sub
      If gv0260(l01C6%(l01CC%)).M1EAC = gv02D6(gv03A4%).M1EA3 Then
            l01E0% = gv0260(l01C6%(l01CC%)).M1EC2 - 1
         Else
            l01E0% = gv0260(l01C6%(l01CC%)).M1EC2 - gv0260(l01C6%(l01CC%)).M1EB8
         End If
      If l01E0% > 0 Then Call sub023E(l01C6%(l01CC%), p01AA%, 5, l01E0%)
      End If
End Sub

Sub sub03A5()
    ContMap.Refresh
    gv07DE% = 0
    Empire_Query.Label1.Caption = "CONGRATULATIONS, Emperor " + RTrim$(gv02D6(gv055A%).M1E1E) + "!"
    Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
    Empire_Query.Com_True.Caption = "Thanks"
    Empire_Query.Com_False.Visible = 0
    Empire_Query.Show
    Do
        DoEvents
        Loop Until gv07DE%
    If ContMap.Enabled Then ContMap.ComFocus.SetFocus
End Sub

Sub sub03B8()
    ContMap.Refresh
    Screen.MousePointer = 11
    If gv01F6% = 0 Then Call sub02E3("Empire2.mid")
    gv07DE% = 0
    Empire_Query.Label1.Caption = "With no further opposition, EMPIRE!"
    Empire_Query.Com_True.Left = Empire_Query.Com_True.Left + 700
    Empire_Query.Com_True.Caption = "Hey!"
    Empire_Query.Com_False.Visible = 0
    Screen.MousePointer = 0
    Empire_Query.Show
    Do
        DoEvents
        Loop Until gv07DE%
    If ContMap.Enabled Then ContMap.ComFocus.SetFocus
End Sub

Sub sub03CC()
Dim l01EE As Integer
    Call sub03E1(0)
    Call sub02AB(0)
    Call sub02BB(0)
    gv0520% = 0:
    Call sub03F4(gv0554%, gv0556%, l01EE%)
End Sub

Sub sub03E1(p0200 As Integer)
Dim l0204 As Integer
    Screen.MousePointer = 11:
    If p0200% = 0 Then CountMap.Hide: gv07AE% = 0
    For l0204% = gv02D2% To 1 Step -1
        Unload CountMap.Box_Attackables(l0204%)
        Next
    CountMap.Box_Attackables(0).Cls
    CountMap.Box_Attackables(0).Visible = 0
    Call sub042E: Call sub0454
    CountMap.Picture1.Picture = LoadPicture()
    CountMap.Label_Inform.Visible = 0
    CountMap.Refresh
    gv02D2% = 0
    For l0204% = 1 To gv0254%
        Unload CountMap.CountryButton(l0204%)
        Next
    Screen.MousePointer = 0
    gv02CC% = 0: gv02CE% = 0: gv03AC% = 1
    If p0200% = 0 Then
        ContMap.Enabled = -1
        gv07AE% = 0
        If gv07C4% = 0 Then
                gv07D8% = 1
                Unload CountMap
            Else
                gv07C4% = 0
            End If
        ContMap.Refresh
        End If
End Sub

Sub sub03F4(p021C As Integer, p021E As Integer, p0220 As Integer)
Dim l0222 As Integer
Dim l0224 As Integer
   Screen.MousePointer = 11
   GoSub L4F34
   Screen.MousePointer = 0
   Exit Sub

L4F34:
   For l0222% = 1 To gv02C6%
      If gv0260(l0222%).M1E9A = p021C% Then
            gv0260(l0222%).M1E9A = p021E%
            gv0260(l0222%).M1ECC = gv02D6(p021E%).M1ECC
            If gv0260(l0222%).M1EAC = p021C% Then
               gv0260(l0222%).M1EAC = gv02D6(p021E%).M1EA3
               End If
            gv0260(l0222%).M1EA3 = gv02D6(p021E%).M1EA3
            Call sub02F3(l0222%, gv0260(l0222%).M1ECC)
         ElseIf gv0260(l0222%).M1EAC = p021C% Then
            gv0260(l0222%).M1EAC = gv02D6(p021E%).M1EA3
         End If
      If l0222% Mod 10 = 0 Then l0224% = DoEvents()
      Next
   gv02D6(p021C%).M1EA3 = gv02D6(p021E%).M1EA3
   ContMap.Refresh
    ContMap.Frame_Info.Visible = -1
    ContMap.Box_Revolt.Picture = LoadPicture(AppResc$ + "\" + "tfishing.bmp")
    ContMap.Box_Revolt.Left = (ContMap.Frame_Info.Width - ContMap.Box_Revolt.Width) / 2
    ContMap.Box_Revolt.Visible = -1
    ContMap.Label_Revolt.Visible = -1
    ContMap.Label_Revolt.Caption = gv0214$ + "General " + RTrim$(gv02D6(p021C%).M1E1E) + ", Your Disappointed followers have found just the place for you."
    ContMap.Refresh
    Screen.MousePointer = 11
    If gv02D6(p021C%).M1F50 <> "c" Then
        If gv01F6% = 0 Then Call sub02E3("surrend.mid")
        Call sub0290(1)
        End If
    If p0220% = 0 Then ContMap.Command8.Visible = -1
    Call sub046C(3)
    Screen.MousePointer = 0
    If p0220% = 1 Then
        ContMap.Frame_Info.Visible = 0
        ContMap.Box_Revolt.Picture = LoadPicture()
        ContMap.Box_Revolt.Visible = 0
        ContMap.Label_Revolt.Visible = 0
        ContMap.Label_Revolt.Caption = "": Return
        End If
   gv051E% = 1
   Return
End Sub

Sub sub0405(p01F0 As Integer)
Dim l01F2 As Integer
Dim l01F6 As Integer
Dim l01F8 As Integer
    Call sub0417(p01F0%)
    Call sub042E
    If gv030C% > 0 And gv0260(p01F0%).M1E9A = gv03A4% Then
        CountMap.Com_Assign.Visible = -1
        End If
    CountMap.Label_Inform.Visible = -1
    CountMap.Label_Inform.Caption = "Shares Borders With:"
    For l01F2% = gv02D2% To 1 Step -1
        Unload CountMap.Box_Attackables(l01F2%)
        Next
    CountMap.Box_Attackables(0).Cls
    CountMap.Refresh
    l01F6% = FreeFile
    Open AppResc$ + "\" + "tountbor.vbl" For Random As l01F6% Len = 2
    gv02D2% = 0
    For l01F2% = 1 To 12
        Get l01F6%, ((((p01F0%) - 1) * 12) + l01F2%), l01F8%
        If l01F8% > 0 Then
            If l01F2% > 1 Then
                Load CountMap.Box_Attackables(l01F2% - 1)
                CountMap.Box_Attackables(l01F2% - 1).TabIndex = CountMap.Box_Attackables(0).TabIndex + (l01F2% - 1)
                gv02D2% = gv02D2% + 1
                End If
            gv0522%(l01F2% - 1) = l01F8%
            CountMap.Box_Attackables(l01F2% - 1).Top = CountMap.Box_Attackables(0).Top + ((l01F2% - 1) * 195)
            CountMap.Box_Attackables(l01F2% - 1).Visible = -1
            CountMap.Box_Attackables(l01F2% - 1).ForeColor = QBColor(15)
            CountMap.Box_Attackables(l01F2% - 1).Print RTrim$(gv0260(l01F8%).M1E1E);
            CountMap.Box_Attackables(l01F2% - 1).Print Tab(21); gv0260(l01F8%).M1EC2;
            CountMap.Box_Attackables(l01F2% - 1).Line (2200, 0)-(2350, 140), gv0260(l01F8%).M1ECC, BF
            CountMap.Box_Attackables(l01F2% - 1).Line (2400, 0)-(2550, 140), gv02D6(gv0260(l01F8%).M1EAC).M1ECC, BF
            End If
        Next
    Close l01F6%
End Sub

Sub sub0417(p02D4 As Integer)
Dim l02D6 As Long
Dim l02D8 As Long
Dim l02DA As Long
Dim l02DC As Integer
    Call sub0454
    If RTrim$(gv0260(p02D4%).M1E1E) = "Dominican Republic" Then
            CountMap.Label_Attacker_Name.Caption = Left$(RTrim$(gv0260(p02D4%).M1E1E), 15) + "."
        Else
            CountMap.Label_Attacker_Name.Caption = RTrim$(gv0260(p02D4%).M1E1E)
        End If
    If gv0594% = 1 Then
            If gv0260(p02D4%).M1EAC = gv03A4% Then
                    CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(p02D4%).M1EC2) + "  (1)"
                Else
                    CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(p02D4%).M1EC2) + "  (" + LTrim$(Str$(gv0260(p02D4%).M1EB8)) + ")"
                End If
        Else
            CountMap.Label_Attacker_Armies.Caption = "Armies    :" + Str$(gv0260(p02D4%).M1EC2)
        End If
    CountMap.Label_Attacker_Capitol.Caption = "Capitol     : " + gv0260(p02D4%).M1E40
    CountMap.Label_Attacker_Pop.Caption = "Population: " + gv0260(p02D4%).M1E4B
    If gv0596% Then
        Call sub0223(0, p02D4%, l02D6&, l02D8&, l02DA&, l02DC%)
        CountMap.Label2.Width = (l02D6& * 2300) / l02DC%
        CountMap.Label3.Left = CountMap.Label2.Left + CountMap.Label2.Width
        CountMap.Label3.Width = (l02D8& * 2300) / l02DC%
        CountMap.Label4.Left = CountMap.Label3.Left + CountMap.Label3.Width
        CountMap.Label4.Width = (l02DA& * 2300) / l02DC%
        CountMap.Frame1.Visible = -1
        End If
    CountMap.Box_Attacker_Status.Line (100, 30)-(250, 170), gv0260(p02D4%).M1ECC, BF
    CountMap.Box_Attacker_Status.Line (300, 30)-(450, 170), gv02D6(gv0260(p02D4%).M1EAC).M1ECC, BF
    CountMap.Refresh
    CountMap.Box_Attacker_Flag2.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv0260(p02D4%).M1E9A)) + ".bmp")
End Sub

Sub sub042E()
    CountMap.Frame2.Visible = 0
    CountMap.Com_Attack.Visible = 0
    CountMap.ComBlitz.Visible = 0
    CountMap.Command9.Visible = 0
    CountMap.Com_Transfer.Visible = 0
    CountMap.ComTranCancel.Visible = 0
    CountMap.Com_Assign.Visible = 0
    CountMap.Label_Attackee_Name.Caption = ""
    CountMap.Box_Attackee_Flag2.Picture = LoadPicture()
    CountMap.Box_Attackee_Status.Cls
    CountMap.Label_Attackee_Armies.Caption = ""
    CountMap.Label_Attackee_Capitol.Caption = ""
    CountMap.Label_Attackee_Pop.Caption = ""
    CountMap.Label_Attackee_Name.Visible = 0
    CountMap.Box_Attackee_Flag2.Visible = 0
    CountMap.Box_Attackee_Status.Visible = 0
    CountMap.Label_Attackee_Armies.Visible = 0
    CountMap.Label_Attackee_Capitol.Visible = 0
    CountMap.Label_Attackee_Pop.Visible = 0
End Sub

Sub sub0446()
    ContMap.MenuFileExit.Enabled = -1
    ContMap.MenuFileLoad.Enabled = -1
    ContMap.MenuFileMusic.Enabled = -1
    ContMap.MenuFileSound.Enabled = -1
    ContMap.MenuFileNew.Enabled = -1
    ContMap.MenuFileSetup.Enabled = -1
    ContMap.Image_Help.Visible = -1
    ContMap.ComMode.Visible = -1
End Sub

Sub sub0454()
    CountMap.Label_Attacker_Name.Caption = ""
    CountMap.Box_Attacker_Flag2.Picture = LoadPicture()
    CountMap.Box_Attacker_Status.Cls
    CountMap.Label_Attacker_Armies.Caption = ""
    CountMap.Label_Attacker_Capitol.Caption = ""
    CountMap.Label_Attacker_Pop.Caption = ""
    CountMap.Frame1.Visible = 0
End Sub

Sub sub046C(p0218 As Single)
Dim l021A As Single
    l021A! = Timer + p0218!
    Do
        If l021A! - Timer > 20000 Then Exit Do
        Loop While Timer < l021A!
End Sub

Sub sub047A(p0240 As Integer)
Dim l0242 As Integer
Dim l0244 As Integer
      Screen.MousePointer = 11
      If p0240% <> 100 Then
              If gv0714% Then
                      l0242% = FreeFile
                      Open AppData$ + "\" + "Savegamr.00" + LTrim$(Str$(p0240%)) For Binary As l0242%
                  Else
                      l0242% = FreeFile
                      Open AppData$ + "\" + "Savegam4.00" + LTrim$(Str$(p0240%)) For Binary As l0242%
                  End If
          Else
              l0242% = FreeFile
              Open AppData$ + "\empfiles\tempgame.vbl" For Binary As l0242%
          End If
      For l0244% = 1 To gv02C6%
         Get l0242%, , gv0260(l0244%).M1E9A
         Get l0242%, , gv0260(l0244%).M1EA3
         Get l0242%, , gv0260(l0244%).M1EAC
         Get l0242%, , gv0260(l0244%).M1EB8
         Get l0242%, , gv0260(l0244%).M1EC2
         Get l0242%, , gv0260(l0244%).M1ECC
         Next
      Get l0242%, , gv02CA%
      Get l0242%, , gv0594%
      Get l0242%, , gv0596%
      Get l0242%, , gv0598%
      Get l0242%, , gv059A%
      Get l0242%, , gv03A4%
      If p0240% <> 100 Then gv07DA% = gv03A4%
      Get l0242%, , gv030C%
      Get l0242%, , gv030A%
      For l0244% = 1 To gv02CA%
         Get l0242%, , gv0340%(l0244%)
         Next
      For l0244% = 1 To gv02CA%
         Get l0242%, , gv0372%(l0244%)
         Next
      Get l0242%, , gv0308%
      For l0244% = 1 To gv02CA%
         Get l0242%, , gv02D6(l0244%)
         Next
      For l0244% = 1 To gv02CA%
         Get l0242%, , gv03AE%(l0244%)
         Next
      Close l0242%
      If gv0714% = 0 Then
          Call sub0484
          Call sub0496(-1)
          End If
      Screen.MousePointer = 0
End Sub

Sub sub0484()
Dim l0338 As Integer
Dim l033A As Integer
    Screen.MousePointer = 11
    ContMap.Picture1.Visible = 0
    ContMap.Picture1.Picture = LoadPicture(AppResc$ + "\" + "cont7.bmp")
    For l0338% = 1 To gv02C6%
        If gv0260(l0338%).M1E9A > 0 Then
            Call sub02F3(l0338%, gv02D6(gv0260(l0338%).M1E9A).M1ECC)
            End If
        Next
    If gv03A4% = 0 Then l033A% = 1 Else l033A% = gv03A4%
    ContMap.Picture1.Visible = -1
   If gv0714% Then
            ContMap.Picture3.BackColor = QBColor(7)
            ContMap.Box_WhoseTurn.Picture = LoadPicture("")
            ContMap.PicFlag.Picture = LoadPicture("")
            ContMap.Box_WhoseTurn.BackColor = QBColor(7)
            ContMap.Box_WhoseTurn.Left = ((ContMap.Picture3.Width - ContMap.Box_WhoseTurn.Width) / 2)
            ContMap.Box_WhoseTurn.Top = ((ContMap.Picture3.Height - ContMap.Box_WhoseTurn.Height) / 2)
        Else
            ContMap.Picture3.BackColor = gv02D6(gv03A4%).M1ECC
            ContMap.Box_WhoseTurn.Picture = LoadPicture(AppResc$ + "\" + "Genr" + LTrim$(Str$(l033A%)) + ".bmp")
            ContMap.PicFlag.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(l033A%)) + ".bmp")
            ContMap.Box_WhoseTurn.Left = ((ContMap.Picture3.Width - ContMap.Box_WhoseTurn.Width) / 2)
            ContMap.Box_WhoseTurn.Top = ((ContMap.Picture3.Height - ContMap.Box_WhoseTurn.Height) / 2)
        End If
    ContMap.Box_WhoseTurn.Visible = -1
    ContMap.PicFlag.Visible = -1
    ContMap.Refresh
    Screen.MousePointer = 0
End Sub

Sub sub0496(p02EE As Integer)
    ContMap.Image_Surrend.Visible = p02EE
    ContMap.ComMode.Visible = p02EE
    ContMap.Image_Help.Visible = p02EE
    ContMap.Command1.Visible = p02EE
    If ContMap.Command1.Caption = "Force Pass" Then ContMap.Command1.Caption = "Pass"
    If gv0714% = 0 Then
            ContMap.Button_Blitz.Visible = p02EE
        Else
            ContMap.Button_Blitz.Visible = 0
        End If
    Call sub02BB(p02EE)
    ContMap.Refresh
End Sub

Sub sub04AB(ByVal p0254 As String, ByVal p0256 As String, p0258 As Integer)
    Screen.MousePointer = 11
    If gv0714% Then
        Call sub04C1("In " + p0254$)
        If ContMap.IPPort1.Connected = 0 Then Exit Sub
        End If
    CountMap.Caption = p0254$
    CountMap.Picture1.Picture = LoadPicture(AppResc$ + "\" + p0256$)
    CountMap.Picture1.Left = (CountMap.Picture4.Left - CountMap.Picture1.Width) / 2
    CountMap.Picture1.Top = (CountMap.Picture2.Top - CountMap.Picture1.Height) / 2
    Call sub04D1
    gv03AC% = -1
    Select Case p0254$
        Case "Africa"
            CountMap.Image1.Left = 1080
            CountMap.Image1.Top = 180
            CountMap.Image1.Width = 735
            CountMap.Image1.Height = 515
            CountMap.Image2.Left = 3780
            CountMap.Image2.Top = 540
            CountMap.Image2.Width = 975
            CountMap.Image2.Height = 435
            CountMap.Image3.Left = 600
            CountMap.Image3.Top = 2640
            CountMap.Image3.Width = 875
            CountMap.Image3.Height = 555
            CountMap.Image4.Left = 900
            CountMap.Image4.Top = 5400
            CountMap.Image4.Width = 435
            CountMap.Image4.Height = 735
        Case "Asia"
            CountMap.Image1.Left = 600
            CountMap.Image1.Top = 1200
            CountMap.Image1.Width = 735
            CountMap.Image1.Height = 375
            CountMap.Image2.Left = 5460
            CountMap.Image2.Top = 1260
            CountMap.Image2.Width = 735
            CountMap.Image2.Height = 435
            CountMap.Image3.Left = 3780
            CountMap.Image3.Top = 4320
            CountMap.Image3.Width = 375
            CountMap.Image3.Height = 1155
            CountMap.Image4.Left = 360
            CountMap.Image4.Top = 4560
            CountMap.Image4.Width = 795
            CountMap.Image4.Height = 795
        Case "North America"
            CountMap.Image1.Left = 660
            CountMap.Image1.Top = 2940
            CountMap.Image1.Width = 1035
            CountMap.Image1.Height = 555
            CountMap.Image2.Left = 5040
            CountMap.Image2.Top = 1840
            CountMap.Image2.Width = 795
            CountMap.Image2.Height = 375
            CountMap.Image3.Left = 3120
            CountMap.Image3.Top = 4920
            CountMap.Image3.Width = 435
            CountMap.Image3.Height = 555
            CountMap.Image4.Left = 900
            CountMap.Image4.Top = 5400
            CountMap.Image4.Width = 435
            CountMap.Image4.Height = 735
        Case "South America"
            CountMap.Image1.Left = 2100
            CountMap.Image1.Top = 360
            CountMap.Image1.Width = 435
            CountMap.Image1.Height = 560
            CountMap.Image2.Left = 4200
            CountMap.Image2.Top = 1500
            CountMap.Image2.Width = 975
            CountMap.Image2.Height = 435
            CountMap.Image3.Left = 1560
            CountMap.Image3.Top = 3960
            CountMap.Image3.Width = 915
            CountMap.Image3.Height = 555
            CountMap.Image4.Left = 900
            CountMap.Image4.Top = 5400
            CountMap.Image4.Width = 435
            CountMap.Image4.Height = 735
        Case "Europe"
            CountMap.Image1.Left = 780
            CountMap.Image1.Top = 2340
            CountMap.Image1.Width = 615
            CountMap.Image1.Height = 555
            CountMap.Image2.Left = 4380
            CountMap.Image2.Top = 3660
            CountMap.Image2.Width = 1275
            CountMap.Image2.Height = 795
            CountMap.Image3.Left = 1320
            CountMap.Image3.Top = 4380
            CountMap.Image3.Width = 435
            CountMap.Image3.Height = 735
            CountMap.Image4.Left = 900
            CountMap.Image4.Top = 5400
            CountMap.Image4.Width = 435
            CountMap.Image4.Height = 735
        Case "Australia"
            CountMap.Image1.Left = 2700
            CountMap.Image1.Top = 1080
            CountMap.Image1.Width = 495
            CountMap.Image1.Height = 915
            CountMap.Image2.Left = 4440
            CountMap.Image2.Top = 3180
            CountMap.Image2.Width = 1035
            CountMap.Image2.Height = 555
            CountMap.Image3.Left = 900
            CountMap.Image3.Top = 5400
            CountMap.Image3.Width = 435
            CountMap.Image3.Height = 735
            CountMap.Image4.Left = 900
            CountMap.Image4.Top = 5400
            CountMap.Image4.Width = 435
            CountMap.Image4.Height = 735
        Case Else
        End Select
    If p0258% = 0 Then
        ContMap.Enabled = 0
        If ContMap.IPPort1.Connected Then
                'CountMap.ComHotLine.Visible = -1
                CountMap.ComHotLine.Enabled = True
                CountMap.TextWindow.Visible = -1
                CountMap.LabelUpdate.Visible = -1
            Else
                'CountMap.ComHotLine.Visible = 0
                CountMap.ComHotLine.Enabled = False
                CountMap.TextWindow.Visible = 0
                CountMap.LabelUpdate.Visible = 0
            End If
        gv07AE% = -1
        CountMap.Show
        End If
End Sub

Sub sub04D1()
Dim l025C As Integer
Dim l025E As Integer
Dim l0260 As Single
Dim l0262 As Integer
Dim l0264 As Integer
Dim l0266 As Single
Dim l0268 As Single
Dim l026A As Integer
Dim l026E As Integer
    l025C% = (gv0256% * 2) - 2: l025E% = l025C%
    l0260! = CountMap.Picture1.ScaleMode
    CountMap.Picture1.ScaleMode = 3
    l0262% = FreeFile:
    Open AppResc$ + "\" + "tountxy.vbl" For Random As l0262% Len = 4
    CountMap.Picture1.Enabled = -1
    For l0264% = 1 To gv0254%
        Load CountMap.CountryButton(l0264%)
        l025C% = l025C% + 1
        Get l0262%, l025C%, l0266!
        l0266! = l0266! / 15
        CountMap.CountryButton(l0264%).Left = l0266! - 5
        l025C% = l025C% + 1
        Get l0262%, l025C%, l0268!
        l0268! = l0268! / 15
        CountMap.CountryButton(l0264%).Top = l0268! - 5
        CountMap.CountryButton(l0264%).Height = 10
        CountMap.CountryButton(l0264%).Width = 10
        CountMap.CountryButton(l0264%).Visible = -1
        If gv0260(gv0256% + l0264% - 1).M1EC2 > l026A% And gv0260(gv0256% + l0264% - 1).M1E9A = gv02D6(gv03A4%).M1EA3 Then
            l026A% = gv0260(gv0256% + l0264% - 1).M1EC2
            gv05A0% = l0264%
            End If
        Next
    CountMap.FillStyle = 1
    CountMap.Picture1.Enabled = 1
    CountMap.Picture1.ScaleMode = l0260!
    Close l0262%, l026E%
End Sub

Sub sub04E9(p0278 As String)
Dim l027A As Integer
Dim l027C As String
Dim l027E As String
Dim l0282 As Long
Dim l0286 As Integer
    l027A% = 255
    l027C$ = String$(255, 0)
    l027E$ = String$(255, 0)
    l0282& = mciSendString(p0278, l027C$, l027A%, ContMap.hwnd)
    l0286% = mciGetErrorString(l0282&, l027E$, l027A%)
    If l0282& <> 0 Then
    End If
End Sub

Sub sub04F3()
    Call sub04E9("close all")
    ContMap.Timer1.Enabled = False
    gv0204 = True
End Sub

Sub sub0500()
Dim l028A As Integer
Dim l028C As Integer
' Const mc028E = 5 ' &H5%
Dim l0290 As Integer
    Screen.MousePointer = 11
    l028A% = gv03A4%
    Do
        l028A% = l028A% + 1: l028C% = l028C% + 1
        If l028A% > gv02CA% Then l028A% = 1
        If gv02D6(l028A%).M1F5D <> mc028E Then
            If l028A% <> gv03A4% Then
                    gv03A4% = l028A%: Exit Do
                ElseIf l028C% > 20 Then
                    Exit Do
                End If
            End If
        Loop
    For l028A% = 1 To gv02CA%
        If gv02D6(l028A%).M1F5D <> 5 Then
            l0290% = l0290% + 1: gv055A% = l028A%
            End If
        Next
    If l0290% > 1 Then gv055A% = 0
    Screen.MousePointer = 0
    If gv055A% Then Exit Sub
    gv030A% = gv030A% + 1
    Call sub029D
End Sub

Sub sub050D(p0292 As Variant)
Dim l0296 As Long
Dim l0298 As Long
Dim l029A As Integer
Dim l02A2 As Integer
Dim l02B0 As Integer
Dim l02B2 As String
Dim l02B4 As String
Dim l02B6 As String
Dim l02B8 As String
Dim l02BA As String
Dim l02BC As Integer
    l0296& = 1
    l0298& = InStr(l0296&, p0292, gc07E4)
    gv03A4% = Val(Mid$(p0292, l0296&, l0298& - l0296&))
    l0296& = l0298&
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    gv030A% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    l029A% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    ReDim gv073A%(0)
    For l02A2% = 1 To l029A%
        ReDim Preserve gv073A%(l02A2%)
        l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
        gv073A%(l02A2%) = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
        l0296& = l0298&
        Next
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    gv076C% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    gv076E% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    gv0770% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    ReDim gv0772%(6, 2)
    For l02A2% = 1 To 6
        For l02B0% = 1 To 2
            l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
            gv0772%(l02A2%, l02B0%) = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
            l0296& = l0298&
            Next
        Next
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    gv0554% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    l0298& = InStr(l0296& + Len(gc07E4), p0292, gc07E4)
    gv0556% = Val(Mid$(p0292, l0296& + Len(gc07E4), l0298& - l0296& - Len(gc07E4)))
    l0296& = l0298&
    Screen.MousePointer = 11
    ContMap.Picture3.BackColor = gv02D6(gv03A4%).M1ECC
    ContMap.Box_WhoseTurn.Picture = LoadPicture(AppData$ + "\empfiles\" + "pictemp" + LTrim$(Str$(gv03A4%)) + ".bmp")
    ContMap.PicFlag.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv03A4%)) + ".bmp")
    ContMap.Box_WhoseTurn.Left = ((ContMap.Picture3.Width - ContMap.Box_WhoseTurn.Width) / 2)
    ContMap.Box_WhoseTurn.Top = ((ContMap.Picture3.Height - ContMap.Box_WhoseTurn.Height) / 2)
    ContMap.Refresh
    l02B2$ = "General " + RTrim$(gv02D6(gv03A4%).M1E1E) + "'s turn"
    l02B4$ = ""
    l02B6$ = ""
    l02B8$ = ""
    l02BA$ = ""
    Call sub0253(l02B2$, l02B4$, l02B6$, l02B8$, l02BA$)
    l02BC% = 0
    For l02A2% = 1 To gv02CA%
        If gv02D6(l02A2%).M1F5D = m00AA Then
            gv055A% = l02A2%: l02BC% = l02BC% + 1
            End If
        Next
    If l02BC% = 1 Then gv0716% = -1 Else gv055A% = 0
    If gv055A% Then
            gv0558% = 0
            If gv071A% Then gv0716% = -1
        Else
            gv0558% = 1
            If gv01F6% = 0 Then Call sub02E3("Start.mid")
        End If
    ContMap.Enabled = 0
    TurnForm.Show
End Sub

Sub sub0520()
Dim l02C8 As Integer
    Do While gv0204 = False
    l02C8% = DoEvents()
    Loop
    gv0204 = False
    ContMap.Timer1.Enabled = False
End Sub

Sub sub052C(p02CA As Integer)
Dim l02CC As Long
Dim l02CE As Long
Dim l02D0 As Long
Dim l02D2 As Integer
    CountMap.Box_Attackee_Flag2.Cls
    CountMap.Box_Attackee_Status.Cls
    If RTrim$(gv0260(p02CA%).M1E1E) = "Dominican Republic" Then
            CountMap.Label_Attackee_Name.Caption = Left$(RTrim$(gv0260(p02CA%).M1E1E), 15) + "."
        Else
            CountMap.Label_Attackee_Name.Caption = RTrim$(gv0260(p02CA%).M1E1E)
        End If
    If gv0594% = 1 Then
            If gv0260(p02CA%).M1EAC = gv03A4% Then
                    CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(p02CA%).M1EC2) + "  (1)"
                Else
                    CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(p02CA%).M1EC2) + "  (" + LTrim$(Str$(gv0260(p02CA%).M1EB8)) + ")"
                End If
        Else
            CountMap.Label_Attackee_Armies.Caption = "Armies    :" + Str$(gv0260(p02CA%).M1EC2)
        End If
    CountMap.Label_Attackee_Capitol.Caption = "Capitol     : " + gv0260(p02CA%).M1E40
    CountMap.Label_Attackee_Pop.Caption = "Population: " + gv0260(p02CA%).M1E4B
    CountMap.Label_Attackee_Name.Visible = -1
    CountMap.Box_Attackee_Flag2.Visible = -1
    CountMap.Box_Attackee_Status.Visible = -1
    CountMap.Label_Attackee_Armies.Visible = -1
    CountMap.Label_Attackee_Capitol.Visible = -1
    CountMap.Label_Attackee_Pop.Visible = -1
    If gv0596% Then
        Call sub0223(0, p02CA%, l02CC&, l02CE&, l02D0&, l02D2%)
        CountMap.Label18.Width = (l02CC& * 2300) / l02D2%
        CountMap.Label19.Left = CountMap.Label18.Left + CountMap.Label18.Width
        CountMap.Label19.Width = (l02CE& * 2300) / l02D2%
        CountMap.Label20.Left = CountMap.Label19.Left + CountMap.Label19.Width
        CountMap.Label20.Width = (l02D0& * 2300) / l02D2%
        CountMap.Frame2.Visible = -1
        End If
    CountMap.Box_Attackee_Status.Line (100, 30)-(250, 170), gv0260(p02CA%).M1ECC, BF
    CountMap.Box_Attackee_Status.Line (300, 30)-(450, 170), gv02D6(gv0260(p02CA%).M1EAC).M1ECC, BF
    CountMap.Box_Attackee_Flag2.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv0260(p02CA%).M1E9A)) + ".bmp")
    CountMap.Refresh
End Sub

Sub sub0543()
    ContMap.Refresh
    gv07DE% = 0
    Empire_Query.Label1.Caption = "Abandon Current Game?"
    Empire_Query.Com_True.Caption = "Yes"
    Empire_Query.Com_False.Caption = "Cancel"
    Empire_Query.Show
    Do
        DoEvents
        Loop Until gv07DE%
    If ContMap.Enabled Then ContMap.ComFocus.SetFocus
End Sub

Sub sub0555()
End Sub

Sub sub0561(p02E0 As Integer)
Dim l02E2 As Integer
Dim l02E4 As Integer
Dim l02E6 As Integer
      If gv0714% Then
            l02E2% = FreeFile: Open AppData$ + "\" + "Savegamr.00" + LTrim$(Str$(p02E0%)) For Binary As l02E2%
         Else
            l02E2% = FreeFile: Open AppData$ + "\" + "Savegam4.00" + LTrim$(Str$(p02E0%)) For Binary As l02E2%
         End If
      For l02E4% = 1 To gv02C6%
         Put l02E2%, , gv0260(l02E4%).M1E9A
         Put l02E2%, , gv0260(l02E4%).M1EA3
         Put l02E2%, , gv0260(l02E4%).M1EAC
         Put l02E2%, , gv0260(l02E4%).M1EB8
         Put l02E2%, , gv0260(l02E4%).M1EC2
         Put l02E2%, , gv0260(l02E4%).M1ECC
         Next
      Put l02E2%, , gv02CA%
      Put l02E2%, , gv0594%
      Put l02E2%, , gv0596%
      Put l02E2%, , gv0598%
      Put l02E2%, , gv059A%
      Put l02E2%, , gv03A4%
      Put l02E2%, , gv030C%
      If gv030A% = 0 Then gv030A% = 1
      Put l02E2%, , gv030A%
      For l02E4% = 1 To gv02CA%
         Put l02E2%, , gv0340%(l02E4%)
         Next
      For l02E4% = 1 To gv02CA%
         Put l02E2%, , gv0372%(l02E4%)
         Next
      Put l02E2%, , gv0308%
      For l02E4% = 1 To gv02CA%
         Put l02E2%, , gv02D6(l02E4%)
         Next
      For l02E4% = 1 To gv02CA%
         Put l02E2%, , gv03AE%(l02E4%)
         Next
      Close l02E2%
      l02E4% = 0:
      If gv0714% Then
            l02E6% = FreeFile: Open AppData$ + "\" + "empirer.svd" For Output As l02E6%
         Else
            l02E6% = FreeFile: Open AppData$ + "\" + "empire4.svd" For Output As l02E6%
         End If
      Do Until l02E4% = 8
         l02E4% = l02E4% + 1: Print #l02E6%, gv0418$(l02E4%)
         Loop
      Close l02E6%
End Sub

Sub sub056B()
Dim l02F0 As Integer
Dim l0302() As Integer
Dim l0308 As Integer
Dim l030A As Integer
Dim l030C As Integer
Dim l030E As Integer
Dim l0312 As Integer
Dim l0314() As Integer
Dim l031A() As Integer
Dim l0320 As Integer
Dim l0322 As Integer
Dim l0324 As Integer
Dim l0336 As Integer
    gv0308% = 0: gv030A% = 0: gv030C% = 0
    ReDim gv02D6(8) As T1F42
   For l02F0% = 1 To 8
        gv02D6(l02F0%).M1F5D = mc028E
        Next
    For l02F0% = 1 To 8
        If gv0562%(l02F0%, 1) = 1 Then
            If gv0714% Then
                    gv02D6(l02F0%).M1F50 = gc088E
                Else
                    gv02D6(l02F0%).M1F50 = gc0886
                End If
            gv02D6(l02F0%).M1F5D = m00AA
            gv02D6(l02F0%).M1E1E = ""
            End If
        If gv0562%(l02F0%, 1) = 2 Then
            gv02D6(l02F0%).M1F50 = gc088A
            gv02D6(l02F0%).M1F5D = m00AA
            gv0308% = gv0308% + 1
            gv02D6(l02F0%).M1E1E = gv05DE$(l02F0%)
            End If
        Next
   ReDim l0302%(8): gv02CA% = 8
   Randomize Timer
   Do
      Do
         l0308% = Int((8 - 1 + 1) * Rnd + 1)
         For l030A% = 1 To gv02CA%
            If gv02D6(l0308%).M1F5D = mc028E Then l030C% = 0 Else l030C% = 1: Exit For
            Next
         Loop Until l030C%
      l030E% = l030E% + 1: gv0260(l030E%).M1EA3 = l0308%: gv0260(l030E%).M1EAC = l0308%
      If gv0598% Then gv0260(l030E%).M1E9A = l0308%
      If gv059C% = 1 Then
            gv0260(l030E%).M1EC2 = Int((4 - 1 + 1) * Rnd + 1)
            l0312% = Int((3 - 2 + 1) * Rnd + 2)
            gv0260(l030E%).M1EB8 = l0312%
            If gv0598% Then gv0260(l030E%).M1EC2 = 1
         Else
            gv0260(l030E%).M1EC2 = Int((8 - 1 + 1) * Rnd + 1)
            l0312% = Int((5 - 2 + 1) * Rnd + 2)
            gv0260(l030E%).M1EB8 = l0312%
            If gv0598% Then gv0260(l030E%).M1EC2 = 1
         End If
      If gv0596% Then
          If RTrim$(gv0260(l030E%).M1E1E) = "China" Then gv0260(l030E%).M1E57 = 99
          gv0260(l030E%).M1EC2 = gv0260(l030E%).M1E57
          gv0260(l030E%).M1EB8 = gv0260(l030E%).M1E57 \ 4
          If gv0260(l030E%).M1EB8 < 2 Then gv0260(l030E%).M1EB8 = 2
          End If
      gv0260(l030E%).M1ECC = QBColor(7)
      Loop Until l030E% = gv02C6%
   ReDim l0314%(gv02CA%), l031A%(gv02CA%)
   ReDim gv030E%(gv02CA%), gv0340%(gv02CA%), gv0372%(gv02CA%)
   Randomize Timer
   For l02F0% = 1 To gv02CA%
      If gv02D6(l02F0%).M1F5D <> 5 Then
         If gv0562%(l02F0%, 2) = 0 Then
                 Do
                    l0308% = Int((gv02C6% - 1 + 1) * Rnd + 1)
                    l0320% = 0
                    For l030E% = 1 To gv02CA%
                       If (l0308% = l0314%(l030E%)) Or (l0308% = gv0562%(l030E%, 2)) Then
                          l0320% = 1
                          End If
                       Next
                    If gv0596% Then
                        If l0320% = 0 Then
                            If (gv0260(l0308%).M1E5E < 40) Or (gv0260(l0308%).M1E5E > 70) Then
                                l0320% = 1
                                End If
                            End If
                        End If
                    If l0322% > 4 Then
                        Else
                           For l030E% = 1 To gv02CA%
                              If (gv0260(l0308%).M1E25 = l031A%(l030E%)) Then
                                 l0320% = 1
                                 End If
                              Next
                        End If
                    If l0320% <> 1 Then l0314%(l02F0%) = l0308%: l031A%(l02F0%) = gv0260(l0308%).M1E25
                    Loop While l0320%
                Else
                    l0308% = gv0562%(l02F0%, 2)
                End If
      l0322% = l0322% + 1
      l0324% = l02F0%
         gv0260(l0308%).M1E9A = l0324%
         gv0260(l0308%).M1EA3 = l0324%: gv0260(l0308%).M1EAC = l0324%
         gv030E%(l02F0%) = l0308%
         If gv02D6(l02F0%).M1F50 = gc088A Then
             gv0340%(l02F0%) = gv030E%(l02F0%)
             End If
         If gv059C% = 1 Then
               gv0260(l0308%).M1EC2 = 56
               gv02D6(l02F0%).M1F99 = 56
            Else
               gv0260(l0308%).M1EC2 = 30
               gv02D6(l02F0%).M1F99 = 30
            End If
         gv02D6(l02F0%).M1EA3 = l0324%
         Select Case gv02D6(l02F0%).M1EA3
            Case 1
               gv0260(l0308%).M1ECC = gv04E8&: gv02D6(l02F0%).M1ECC = gv04E8&
            Case 2
               gv0260(l0308%).M1ECC = gv04EC&: gv02D6(l02F0%).M1ECC = gv04EC&
            Case 3
               gv0260(l0308%).M1ECC = gv04F0&: gv02D6(l02F0%).M1ECC = gv04F0&
            Case 4
               gv0260(l0308%).M1ECC = gv04F4&: gv02D6(l02F0%).M1ECC = gv04F4&
            Case 5
               gv0260(l0308%).M1ECC = gv04F8&: gv02D6(l02F0%).M1ECC = gv04F8&
            Case 6
               gv0260(l0308%).M1ECC = gv04FC&: gv02D6(l02F0%).M1ECC = gv04FC&
            Case 7
               gv0260(l0308%).M1ECC = gv0500&: gv02D6(l02F0%).M1ECC = gv0500&
            Case 8
               gv0260(l0308%).M1ECC = gv0504&: gv02D6(l02F0%).M1ECC = gv0504&
            End Select
         End If
      Next
   If gv0598% Then
        For l02F0% = 1 To gv02C6%
            gv0260(l02F0%).M1ECC = gv02D6(gv0260(l02F0%).M1E9A).M1ECC
            Next
        End If
   For l0336% = 1 To gv02CA%
      If gv02D6(l0336%).M1F5D <> 5 Then gv03A4% = l0336%: Exit For
      Next
End Sub

Sub sub057B()
   Screen.MousePointer = 11
   If gv0202% = 0 Then gv0202% = 1: Call sub04F3
   If gv025C% Then
        Call sub0543
        If Not gv024E Then Exit Sub
        End If
    Call sub04F3
    Call sub02AB(0)
    ContMap.Box_WhoseTurn.Visible = 0
    ContMap.PicFlag.Visible = 0
    ContMap.PicFlag.Picture = LoadPicture("")
    ContMap.Box_WhoseTurn.Picture = LoadPicture("")
    ContMap.Picture1.Picture = LoadPicture(AppResc$ + "\" + "cont7.bmp")
    ContMap.Picture3.BackColor = QBColor(7)
    Screen.MousePointer = 11
    If gv0714% Then
            gv03A4% = 0
        Else
            gv03A4% = 1
        End If
    gv07CA% = 0
    gv055A% = 0
    gv0716% = 0
    gv07C0% = 0
    gv07DC% = 0
    Call sub0589
    gv025C% = 0: gv0598% = 0
    Call sub0496(0)
End Sub

Sub sub059B()
Dim l034E As Integer
    On Error Resume Next
    gv03AA = gv03AA + 1
    Get_New_Info.Box_Ideology.Cls
    Get_New_Info.Box_Flag.Cls
    If gv02D6(gv03AA).M1F50 = gc088A And gv02D6(gv03AA).M1F5D = m00AA Then
            l034E% = 3
        Else
            l034E% = 0
        End If
    Get_New_Info.Box_Ideology.Picture = LoadPicture(AppResc$ + "\" + "genr" + LTrim$(Str$(gv03AA + l034E%)) + ".bmp")
    Get_New_Info.Box_Flag.Picture = LoadPicture(AppResc$ + "\" + "tflag" + LTrim$(Str$(gv03AA)) + ".bmp")
    Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
    Get_New_Info.Box_Ideology.Print gv0214$ + gv0214$ + gv0214$ + gv0214$ + gv0214$ + gv0214$
    Get_New_Info.Box_Ideology.AutoRedraw = -1
    Select Case gv03AA
        Case 1
            Get_New_Info.Box_Ideology.Print "You are the popular leader of the"
            Get_New_Info.Box_Ideology.Print "world Populist Movement."
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "You will Begin your quest for Empire"
            Get_New_Info.Box_Ideology.Print "in ";
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print ".  Hail!"
        Case 2
            Get_New_Info.Box_Ideology.Print "Militarist believers cheer your efforts"
            Get_New_Info.Box_Ideology.Print "at attaining a peaceful Empire through"
            Get_New_Info.Box_Ideology.Print "armed force.  Good Luck!"
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "You will Begin from your stronghold"
            Get_New_Info.Box_Ideology.Print "in ";
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case 3
            Get_New_Info.Box_Ideology.Print "Your supporters pepper the globe with"
            Get_New_Info.Box_Ideology.Print "their enthusiastic support.  Time to start"
            Get_New_Info.Box_Ideology.Print "sharing..."
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "Your Socialist legions eagerly await you"
            Get_New_Info.Box_Ideology.Print "in ";
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case 4
            Get_New_Info.Box_Ideology.Print "Realistically, is empire-building fair?"
            Get_New_Info.Box_Ideology.Print "That's a question to be answered after"
            Get_New_Info.Box_Ideology.Print "you've got one, eh?"
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "Realist Armies are already chafing at the"
            Get_New_Info.Box_Ideology.Print "bit in ";
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case 5
            Get_New_Info.Box_Ideology.Print "It took a long time to raise a decent"
            Get_New_Info.Box_Ideology.Print "army from your band of disparate"
            Get_New_Info.Box_Ideology.Print "followers, but you're finally ready!"
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "Even as we speak, Pacifist legions are"
            Get_New_Info.Box_Ideology.Print "waiting in ";
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case 6
            Get_New_Info.Box_Ideology.Print "Looks like good weather, eh?  The stock"
            Get_New_Info.Box_Ideology.Print "market will recover and there'll be"
            Get_New_Info.Box_Ideology.Print "peace in the Middle East when you win!"
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "Optimistic Armies await your leadership"
            Get_New_Info.Box_Ideology.Print "over in ";
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case 7
            Get_New_Info.Box_Ideology.Print "Looks like a storm moving in.  The"
            Get_New_Info.Box_Ideology.Print "less said the better."
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print
            Get_New_Info.Box_Ideology.Print "Everybody's a Pessimist back in old"
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case 8
            Get_New_Info.Box_Ideology.Print "You've achieved equality at last,"
            Get_New_Info.Box_Ideology.Print "Sherry, and are bound to beat those ag-"
            Get_New_Info.Box_Ideology.Print "gressive Chauvinists at their own game."
            Get_New_Info.Box_Ideology.Print ""
            Get_New_Info.Box_Ideology.Print "Feminist Divisions stand ready in"
            Get_New_Info.Box_Ideology.ForeColor = QBColor(15)
            Get_New_Info.Box_Ideology.Print UCase$(RTrim$(gv0260(gv030E%(gv03AA)).M1E1E));
            Get_New_Info.Box_Ideology.ForeColor = QBColor(14)
            Get_New_Info.Box_Ideology.Print "."
        Case Else
        End Select
    If gv02D6(gv03AA).M1F50 = gc0886 And gv02D6(gv03AA).M1F5D = m00AA Then
            Get_New_Info.Text_Player_Entry.Visible = -1
            Get_New_Info.Frame_Player_Entry.Caption = "Your Name, Player" + Str$(gv03AA) + "?"
            Get_New_Info.Text_Player_Entry.Text = ""
        Else
            Get_New_Info.Text_Player_Entry.Visible = 0
            Get_New_Info.Frame_Player_Entry.Caption = "General " + RTrim$(gv02D6(gv03AA).M1E1E) + ":"
            Get_New_Info.Frame_Player_Entry.Refresh
        End If
     gv024A% = gv03AA
     Get_New_Info.Box_Ideology.AutoRedraw = 0
End Sub

Sub sub05AA(p036C As Integer, p036E As Long)
Dim l0370 As Single
Dim l0372 As Integer
Dim l0374 As Integer
Dim l0376 As Single
Dim l0378 As Single
Dim l037A As Long
    l0370! = CountMap.Picture1.ScaleMode
    CountMap.Picture1.ScaleMode = 3
    l0372% = FreeFile
    Open AppResc$ + "\" + "tountxy.vbl" For Random As l0372% Len = 4
    l0374% = ((p036C% - 1) * 2) + 1
    Get l0372%, l0374%, l0376!
    Get l0372%, l0374% + 1, l0378!
    Close l0372%
    l0376! = l0376! / 15
    l0378! = l0378! / 15
    CountMap.Picture1.FillStyle = 0
    If gv0260(p036C%).M1E9A > 0 Then
        CountMap.Picture1.FillColor = 0
        CountMap.Picture1.Circle (l0376! - 3, l0378! + 3), 7, 0
        CountMap.Picture1.FillColor = QBColor(15)
        CountMap.Picture1.Circle (l0376!, l0378!), 7, QBColor(15)
        CountMap.Picture1.FillColor = p036E&
        CountMap.Picture1.Circle (l0376!, l0378!), 6, p036E&
        End If
    l037A& = gv02D6(gv0260(p036C%).M1EAC).M1ECC
    If p036E& <> l037A& Then
        CountMap.Picture1.FillColor = 0
        CountMap.Picture1.Circle (l0376! - 2, l0378! + 2), 3, 0
        End If
    CountMap.Picture1.FillColor = l037A&
    CountMap.Picture1.Circle (l0376!, l0378!), 3, l037A&
    CountMap.Picture1.ScaleMode = l0370!
End Sub

