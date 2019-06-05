Attribute VB_Name = "MODULE5"
' Module5
Option Explicit
Const mc0066 = 5 ' &H5%
Const mc0096 = 2 ' &H2%
Const mc00BC = 1 ' &H1%
Const m00E6 = 0 ' &H0%
Const mc0212 = 8913094  ' &H8800C6&
Const mc021A = 6684742  ' &H660046&
Const mc0226 = 1 ' &H1%

Sub sub0264(p022C As String, ByVal p022E As String)
Dim l0230 As String
    l0230$ = Trim$(p022E$) + " "
    p022C$ = l0230$ + p022C$ + gv0214$
    If Len(ContMap.TextWindow.Text) + Len(p022C$) > 12000 Then
        If Len(ContMap.TextWindow.Text) > 4000 Then
                ContMap.TextWindow.Text = Right$(ContMap.TextWindow.Text, 4000)
            Else
                ContMap.TextWindow.Text = p022C$
                ContMap.TextWindow.SelStart = Len(ContMap.TextWindow.Text)
                If gv07AE% Then
                    CountMap.LabelUpdate.Caption = p022C$
                    End If
                Exit Sub
            End If
        End If
    ContMap.TextWindow.SelStart = Len(ContMap.TextWindow.Text)
    ContMap.TextWindow.SelText = p022C$
    If gv07AE% Then
        CountMap.LabelUpdate.Caption = p022C$
        CountMap.LabelUpdate.Refresh
        End If
    ContMap.TextWindow.Refresh
End Sub

Sub sub0273(p016A As String)
Dim l016C As Long
Dim l016E As Long
Dim l0170 As Long
Dim l0172 As String
Dim l0174 As Integer
Dim l0176 As Single
Dim l0178 As Integer
Dim l017A As Integer
Dim l017C As Integer
    If ContMap.IPPort1.Connected Then
            On Error GoTo L134E2
            l016C& = Len(p016A$)
            #If Win32 Then
            l016E& = ContMap.IPPort1.Config("OutBufferSize")
            #Else
            l016E& = ContMap.IPPort1.OutBufferSize
            #End If
            l0170& = 0
            Do While l016C& - (l0170& + l016E&) > 0
                l0172$ = Mid$(p016A$, l0170& + 1, l016E&)
                l0174% = 0: l0176! = Timer + (gv0692%)
                ContMap.IPPort1.DataToSend = l0172$
                l0170& = l0170& + l016E&
                If l0178% Then Exit Do
                Loop
            l0172$ = Mid$(p016A$, l0170& + 1, l016C& - l0170&)
            l0174% = 0: l0176! = Timer + (gv0692%)
            ContMap.IPPort1.DataToSend = l0172$
        Else
            Call sub079D("ViaTalk: " + "Can't Send, Not Connected." + gv0214$)
        End If
Exit Sub

L134E2:
If Err = 25036 Then
        l017A% = ContMap.IPPort1.BytesSent
        If l017A% > 0 Then
                l0172$ = Mid$(l0172$, l017A% + 1)
            Else
                If Timer > l0176! Then
                    Screen.MousePointer = 0
                    Call sub079D("ViaTalk: Send Failed - " + Error$ + gv0214$)
                    l017C% = 1
                    Exit Sub
                    End If
            End If
        DoEvents
        Resume
    Else
        Screen.MousePointer = 0
        Call sub079D("ViaTalk: Send Failed - " + Error$ + gv0214$)
        l017C% = 1
        Exit Sub
    End If
End Sub

Sub sub027D(p0106 As String)
Dim l0108 As Integer
Dim l010C As Single
Dim l0110 As String
Dim l0112 As String
Dim l0114 As String
Dim l0116 As String
Dim l0118 As String
Dim l011C As Integer
    Screen.MousePointer = 11
    MsgBox p0106$
    ContMap.ComConnect.Enabled = 0
    sub0264 "Disconnecting...", "Chip:"
    ContMap.IPPort1.Linger = 0
    ContMap.IPPort1.Connected = 0
    If ContMap.IPD1.Listening Then
        For l0108% = 1 To 32
            If ContMap.IPD1.Connected(l0108%) Then
                ContMap.IPD1.Connected(l0108%) = 0
                End If
            Next
        sub0264 "Shutting Down Host...", "Chip:"
        ContMap.IPD1.Listening = 0
        End If
    ContMap.ComHotLine.Visible = 0
    ContMap.ComWeb.Visible = 0
    gv0710% = 0
    gv071A% = 0
    Unload RoomForm
    ContMap.Enabled = -1
    l010C! = Timer + 2
    Do While Timer < l010C!
        Loop
    gv025C% = 0
    Call sub057B
    Call sub0496(0)
    Call sub02AB(0)
    sub0264 "Goodbye, " + Trim$(gv06A4$), "Chip:"
    ContMap.ComConnect.Caption = "Connect To Host"
    l0110$ = ""
    l0112$ = ""
    l0114$ = ""
    l0116$ = ""
    l0118$ = ""
    Call sub0253(l0110$, l0112$, l0114$, l0116$, l0118$)
    ContMap.ComMode.Visible = -1
    ContMap.Image_Help.Visible = -1
    ContMap.MenuFileNew.Visible = 0
    ContMap.MenuFileSave.Visible = 0
    ContMap.MenuFileLoad.Visible = 0
    ContMap.MenuInternet.Visible = -1
    ContMap.TextWindow.Visible = -1
    ContMap.ComHost.Visible = -1
    ContMap.ComHost.Enabled = -1
    ContMap.ComConnect.Visible = -1
    ContMap.ComConnect.Enabled = -1
    gv071A% = 0
    gv0714% = 1
    ContMap.ComMode.Picture = ContMap.PicLocal.Picture
    ContMap.ComMode.Caption = "Local"
    ContMap.Caption = "World Empire IV (CyberWar)"
    For l0108% = 1 To 8
        If l0108% > 1 Then l011C% = l0108% + 3 Else l011C% = l0108%
        FileCopy AppResc$ + "\genr" + Trim$(Str$(l011C%)) + ".bmp", AppData$ + "\empfiles\pictemp" + Trim$(Str$(l0108%)) + ".bmp"
        Next
    Screen.MousePointer = 0
    ContMap.MousePointer = 0
    gv07D8% = 1
    Unload CountMap
End Sub

Sub sub04C1(ByVal p01AE As String)
Dim l01B2 As String
Dim l01B4 As Single
    If gv0714% Then
        Screen.MousePointer = 11
        l01B2$ = gc07EC + gc0840 + gc07E4 + p01AE$ + gc07E8
        sub0264 "Notifying Host...", "Chip:"
        gv0734% = 0
        Call sub0273(l01B2$)
        l01B4! = Timer + (gv0692%)
        Do Until gv0734% Or Timer > l01B4!
            DoEvents
            Loop
        If gv0734% = 0 Then
            sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
            Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
            Exit Sub
            End If
        sub0264 "Okay.", "Host:"
        Screen.MousePointer = 0
        End If
End Sub

Sub sub068C(p0254 As Variant)
Dim l0258 As Long
Dim l025A As Long
Dim l025C As String
Dim l025E As Long
    RoomForm.ListUsers.Clear
    RoomForm.ListUsers.Refresh
    l0258& = -1
    RoomForm.ListUsers.AddItem "--All--"
    Do
        l025A& = InStr(l0258& + 2, p0254, gc07E4)
        If l025A& > 0 Then
            l025C$ = Mid$(p0254, l0258& + 2, l025A& - l0258& - 2)
            l0258& = l025A&
            l025E& = l025E& + 1
            l025A& = InStr(l0258& + 2, p0254, gc07E4)
            RoomForm.ListUsers.AddItem l025C$
            l0258& = l025A&
            End If
        Loop While l025A& > 0
    RoomForm.ListUsers.Refresh
End Sub

Sub sub069E(p0260 As Variant, p0264 As Integer)
Dim l0266 As Long
Dim l0268 As Long
Dim l026A As String
Dim l026C As String
    Select Case p0264%
        Case 1
            l0266& = 1
            l0268& = InStr(l0266&, p0260, gc07E4)
            l026A$ = Mid$(p0260, l0266&, l0268& - l0266&)
            l0266& = l0268& + Len(gc07E4)
            l0268& = InStr(l0266&, p0260, gc07E4)
            l026C$ = Mid$(p0260, l0266&, l0268& - l0266&)
            l0266& = l0268& + Len(gc07E4)
            gv02D6(Val(l026A$)).M1E1E = l026C$
            gv02D6(Val(l026A$)).M1F50 = gc088E
        Case Else
        End Select
End Sub

Sub sub06AC(ByVal p0270 As String, p0272 As Integer)
    p0272% = 0
    If Len(p0270) > Len(gc07EC) Then
            If Mid$(p0270, 1, Len(gc07EC)) <> gc07EC Then
                p0272% = 1
                End If
        Else
            p0272% = 1
        End If
End Sub

Sub sub06BD(p0274 As String)
Dim l0276 As Integer
Dim l0284 As Integer
Dim l0286 As Integer
Dim l0288 As String
Dim l028A As Integer
Dim l028C() As Integer
Dim l0292 As Integer
Dim l029C As Integer
Dim l029E As Integer
Dim l02A0 As Integer
Dim l02A6 As Integer
Dim l02A8 As Integer
Dim l02AA As String
Dim l02AC As String
Dim l02AE As String
Dim l02B0 As Integer
Dim l02B4 As Integer
Dim l02B6 As Integer
Dim l02C0 As Integer
Dim l02C2 As Integer
    p0274$ = ""
    Screen.MousePointer = 11
    Call sub06D1(gv03A4%, gv055A%, l0276%)
    gv030A% = gv030A% + 1
    p0274$ = p0274$ + Trim$(Str$(gv03A4%)) + gc07E4
    p0274$ = p0274$ + Trim$(Str$(gv030A%)) + gc07E4
    If gv0594% <> 2 Then
        Do
            GoSub L16554
            Loop While gv051C%
        If gv03AE%(gv03A4%) = 0 Then
            For l0284% = 1 To gv02CA%
                If gv02D6(l0284%).M1F5D = m00E6 Then l0276% = l0276% + 1
                Next
            gv03AE%(gv03A4%) = gv030A% + Int(((3 * l0276%) - 1 + 1) * Rnd + 1)
            End If
        End If
    p0274$ = p0274$ + Trim$(Str$(l0286%)) + gc07E4
    p0274$ = p0274$ + l0288$
    l028A% = 1
    ReDim l028C%(6, 2)
    l0292% = 0
    For l028A% = 1 To 6
        l029C% = gv0294(l028A%).M1EFF
        l029E% = gv0294(l028A%).M1F0B
        l02A0% = 1
        For l0284% = l029C% To l029E%
            If (gv0260(l0284%).M1E9A <> gv02D6(gv03A4%).M1EA3) Or gv0596% Then
                l02A0% = 0
                End If
            If gv0260(l0284%).M1E9A = gv02D6(gv03A4%).M1EA3 Then
                l0292% = l0292% + 1
                End If
            Next
        If l02A0% = 1 Then l028C%(l028A%, 1) = 1 Else l028C%(l028A%, 1) = 0
        Next
    gv030C% = l0292% \ 2
    For l0284% = 1 To 6
        If l028C%(l0284%, 1) = 1 Then
            l028C%(l0284%, 2) = gv0294(l0284%).M1F35
            l02A6% = l02A6% + gv0294(l0284%).M1F35
            l02A8% = l02A8% + 1
            End If
        Next
    l02AA$ = Trim$(Str$(l0292%))
    l02AC$ = Trim$(Str$(gv030C%))
    l02AE$ = Trim$(Str$(l02A6%))
    GoSub L16502
    p0274$ = p0274$ + l02AA$ + gc07E4
    p0274$ = p0274$ + l02AC$ + gc07E4
    p0274$ = p0274$ + l02AE$ + gc07E4
    For l0284% = 1 To 6
        For l028A% = 1 To 2
            p0274$ = p0274$ + Trim$(Str$(l028C%(l0284%, l028A%))) + gc07E4
            Next
        Next
    If gv0554% = 0 Then
            gv0554% = 0: gv0556% = 0
            If gv030A% > 16 Then
                l02B0% = 0
                For l0284% = 1 To gv02C6%
                    If gv0260(l0284%).M1E9A = gv03A4% Then
                        l02B0% = l02B0% + 1
                        l02B4% = l0284%
                        End If
                    Next
                If l02B0% < 2 Then
                    If gv0260(l02B4%).M1EC2 < 15 Then
                        gv0554% = gv03A4%
                        Do
                            l02B6% = Int(((8) - 1 + 1) * Rnd + 1)
                            If (gv02D6(l02B6%).M1F5D = m00E6 And l02B6% <> gv03A4%) Then
                                gv0556% = l02B6%: Exit Do
                                End If
                            Loop
                        gv0520% = 0
                        End If
                    End If
                End If
        Else
        End If
    p0274$ = p0274$ + Trim$(Str$(gv0554%)) + gc07E4
    p0274$ = p0274$ + Trim$(Str$(gv0556%)) + gc07E4
    ContMap.ComConnect.Enabled = -1
    ContMap.ComMode.Enabled = -1
    If gv071A% Then
        Call sub0561(gv0720%)
        End If
    gv0554% = 0: gv0556% = 0
    Exit Sub

L16502:
    gv030C% = gv030C% + l02A6%
    gv0484%(gv03A4%) = gv030C%
    gv02D6(gv03A4%).M1F99 = gv02D6(gv03A4%).M1F99 + gv030C%
    Return

L16554:
    If gv03AE%(gv03A4%) <= gv030A% Then
        gv03AE%(gv03A4%) = 0
        l02C0% = 0
        For l02C2% = 1 To gv02C6%
            If gv0260(l02C2%).M1E9A = gv02D6(gv03A4%).M1EA3 Then l02C0% = l02C0% + 1
            Next
        If l02C0% < 2 Then Return
        For l0284% = 1 To gv02C6%
            If gv0260(l0284%).M1E9A = gv02D6(gv03A4%).M1EA3 Then
                If gv0260(l0284%).M1EAC > 0 And (gv0260(l0284%).M1EAC <> gv02D6(gv03A4%).M1EA3) Then
                    If gv0260(l0284%).M1EC2 < gv0260(l0284%).M1EB8 Then
                        l0288$ = l0288$ + Trim$(Str$(l0284%)) + gc07E4
                        l0286% = l0286% + 1
                        gv0260(l0284%).M1E9A = gv0260(l0284%).M1EAC
                        gv0260(l0284%).M1ECC = gv02D6(gv0260(l0284%).M1EAC).M1ECC
                        gv0260(l0284%).M1EA3 = gv02D6(gv0260(l0284%).M1EAC).M1EA3
                        gv0260(l0284%).M1EC2 = 5
                        Call sub02F3(l0284%, gv0260(l0284%).M1ECC)
                        gv02D6(gv0260(l0284%).M1EAC).M1F99 = gv02D6(gv0260(l0284%).M1EAC).M1F99 + 5
                        End If
                    End If
                End If
            Next
        End If
    Return
End Sub

Sub sub06D1(p005A As Integer, p005C As Integer, p005E As Integer)
Dim l0060 As Integer
Dim l0062 As Integer
' Const mc0066 = 5 ' &H5%
    l0060% = p005A%
    Do
        l0060% = l0060% + 1: l0062% = l0062% + 1
        If l0060% > gv02CA% Then l0060% = 1
        If gv02D6(l0060%).M1F5D <> mc0066 Then
            If l0060% <> p005A% Then
                    p005A% = l0060%: Exit Do
                ElseIf l0062% > 20 Then
                    Exit Do
                End If
            End If
        Loop
    For l0060% = 1 To gv02CA%
        If gv02D6(l0060%).M1F5D <> 5 Then
            p005E% = p005E% + 1: p005C% = l0060%
            End If
        Next
    If p005E% > 1 Then p005C% = 0
End Sub

Sub sub06E1(p02C4 As Variant)
Dim l02C8 As Long
Dim l02CA As Long
Dim l02D2 As Integer
    l02C8& = 1
    l02CA& = InStr(l02C8&, p02C4, gc07E4)
    gv0554% = Val(Mid$(p02C4, l02C8&, l02CA& - l02C8&))
    l02C8& = l02CA&
    l02CA& = InStr(l02C8& + Len(gc07E4), p02C4, gc07E4)
    gv0556% = Val(Mid$(p02C4, l02C8& + Len(gc07E4), l02CA& - l02C8& - Len(gc07E4)))
    If gv0554% Then
        gv07C8% = -1
        NoticeForm.Hide
        NoticeForm.Caption = "Flash!"
        NoticeForm.Label1.Visible = -1
        NoticeForm.Label1.Caption = "General " + Trim$(gv02D6(gv0554%).M1E1E) + " Has Surrendered To General " + Trim$(gv02D6(gv0556%).M1E1E) + "!"
        For l02D2% = 1 To gv02C6%
            If gv0260(l02D2%).M1E9A = gv0554% Then
                    gv0260(l02D2%).M1E9A = gv0556%
                    gv0260(l02D2%).M1ECC = gv02D6(gv0556%).M1ECC
                    If gv0260(l02D2%).M1EAC = gv0554% Then
                        gv0260(l02D2%).M1EAC = gv02D6(gv0556%).M1EA3
                        End If
                    gv0260(l02D2%).M1EA3 = gv02D6(gv0556%).M1EA3
                    Call sub02F3(l02D2%, gv0260(l02D2%).M1ECC)
                ElseIf gv0260(l02D2%).M1EAC = gv0554% Then
                    gv0260(l02D2%).M1EAC = gv02D6(gv0556%).M1EA3
                End If
            Next
        gv02D6(gv0554%).M1EA3 = gv02D6(gv0556%).M1EA3
        gv02D6(gv0554%).M1F5D = mc0066
        ContMap.Refresh
        gv0554% = 0: gv0556% = 0
        gv07CA% = 1
        End If
End Sub

Sub sub06F3(p02D6 As Variant)
Dim l02DA As String
Dim l02DC As String
Dim l02DE As String
Dim l02E0 As String
Dim l02E2 As String
    sub0264 "Hail Emperor " + Trim$(gv02D6(Val(p02D6)).M1E1E) + "!", "Chip:"
    sub0264 "You'll Need To Disconnect To Start A New Game.", "Chip:"
    l02DA$ = "Click On 'Disconnect' To End This Game."
    l02DC$ = ""
    l02DE$ = ""
    l02E0$ = ""
    l02E2$ = ""
    Call sub0253(l02DA$, l02DC$, l02DE$, l02E0$, l02E2$)
End Sub

Sub sub0702()
Dim l003E As Integer
Dim l0042 As String
    l003E% = FreeFile
    Open AppData$ + "\empfiles\empserve.cfg" For Append As l003E%
    If LOF(l003E%) > 0 Then
            Close l003E%
            l003E% = FreeFile
            Open AppData$ + "\empfiles\empserve.cfg" For Input As l003E%
            Line Input #l003E%, l0042$
            gv0690% = Val(l0042$)
            Line Input #l003E%, l0042$
            gv069E% = Val(l0042$)
            Line Input #l003E%, l0042$
            gv0692% = Val(l0042$)
            Line Input #l003E%, l0042$
            gv069A$ = l0042$
            Line Input #l003E%, l0042$
            gv06A0$ = l0042$
            Close l003E%
        Else
            Close l003E%
            gv0690% = gv06BC%
            gv069E% = 77
            gv0692% = 45
            gv069A$ = "viablesoftware.com"
            gv06A0$ = ""
            Call sub0715
        End If
    If Trim$(gv069A$) = "" Or Len(gv069A$) < 6 Then gv069A$ = "viablesoftware.com"
End Sub

Sub sub0715()
Dim l013E As Integer
    l013E% = FreeFile
    Open AppData$ + "\empfiles\empserve.cfg" For Output As l013E%
    Print #l013E%, Str$(gv0690%)
    Print #l013E%, Str$(gv069E%)
    Print #l013E%, Str$(gv0692%)
    Print #l013E%, gv069A$
    Print #l013E%, gv06A0$
    Close l013E%
End Sub

Sub sub0729(p0050 As T2762, p0052 As Variant)
Dim l0056 As Long
Dim l0058 As Long
    On Error Resume Next
    Call sub0738(p0050)
    l0056& = 1
    l0058& = InStr(l0056&, p0052, gc07E4)
    p0050.M2796 = Mid$(p0052, l0056&, l0058& - l0056&)
    l0056& = l0058&
    l0058& = InStr(l0056& + Len(gc07E4), p0052, gc07E4)
    p0050.M27C3 = Mid$(p0052, l0056& + Len(gc07E4), l0058& - l0056& - Len(gc07E4))
    l0056& = l0058&
End Sub

Sub sub0738(p006A As T2762)
    p006A.M2775 = ""
    p006A.M2780 = ""
    p006A.M2787 = ""
    p006A.M2796 = ""
    p006A.M27A2 = 0
    p006A.M27AD = 0
    p006A.M1EA3 = 0
    p006A.M27C3 = ""
End Sub

Sub sub0744(p006C, p0070 As Integer)
Dim l0074 As T2762
Dim l0076 As String
Dim l007A As Integer
Dim l007C As Integer
Static m008C As Integer
Dim l0092 As String
' Const mc0096 = 2 ' &H2%
Dim l0098 As String
Dim l009E As String
Dim l00A2 As String
    On Error Resume Next
    l0076$ = ContMap.IPD1.RemoteHost(p0070%)
    gv0736% = 0
    For l007A% = 1 To 32
        If ContMap.IPD1.Connected(l007A%) Then
                gv0736% = gv0736% + 1
            Else
                For l007C% = 1 To 8
                    If gv02D6(l007C%).M1EA3 = gv0894(l007A%).M1EA3 Then
                        gv02D6(l007C%).M1E1E = gv05DE$(l007C%)
                        gv02D6(l007C%).M1F50 = gc088A
                        End If
                    Next
                Call sub0738(gv0894(l007A%))
                gv0894(l007A%).M27B8 = m008C
            End If
        Next
    Call sub0729(l0074, p006C)
    l0076$ = ContMap.IPD1.RemoteHost(p0070%)
    sub0264 "User " + Trim$(l0074.M2796) + " Attempted Logon. Negotiating...", "Host: " + l0076$
    gv0894(p0070%) = l0074
    gv0894(p0070%).M2780 = ContMap.IPD1.RemoteHost(p0070%)
    If gv0736% > gv06B4% Then
        l0092$ = gc07EC + gc0878 + gc07E4 + "Sorry, The Game Is Full. Try Later." + gc07E8
        sub0759 l0092$, p0070%
        sub0264 "Refused. Maximum Players Reached.", "Host: " + l0076$
        Exit Sub
        End If
    If gv07DC% Then
        l0092$ = gc07EC + gc0878 + gc07E4 + "Sorry, This Game Is Already In Progress." + gc07E8
        sub0759 l0092$, p0070%
        sub0264 "Connection Refused. Game In Progress.", "Host: " + l0076$
        Exit Sub
        End If
    gv0894(p0070%).M27B8 = mc0096
    l0092$ = gc07EC + gc0878 + gc07E4 + "Welcome, " + Trim$(gv0894(p0070%).M2796) + "!" + gc07E8
    sub0759 l0092$, p0070%
    Call sub0761(l0092$, p0070%)
    l0098$ = ""
    If Val(TrialDays$) = Int(Val(TrialDays$)) Then
        l0098$ = "Shareware Version" + gv0214$
        End If
    l009E$ = " - Highlight A Name Below To Send Privately" + gv0214$
    l009E$ = l009E$ + " - Highlight '--ALL--' To Send To All" + gv0214$
    l009E$ = l009E$ + " - Double-Click A Name To Ring That User" + gv0214$
    l00A2$ = gc07E0 + gv0214$ + l0098$
    l0092$ = gc07EC + gc07F4 + gc07E4 + l00A2$ + gv0214$ + l009E$ + gv0214$ + gc07E8
    sub0759 l0092$, p0070%
    l0076$ = ContMap.IPD1.RemoteHost(p0070%)
    l0092$ = gc07EC + gc0828 + gc07E4 + gc07E8
    sub0759 l0092$, p0070%
End Sub

Sub sub0759(p0140 As String, p0142 As Integer)
Dim l0144 As Single
Dim l014C As Long
Dim l014E As Long
Dim l0150 As Long
Dim l0152 As String
Dim l0154 As Integer
Dim l0156 As Integer
    If ContMap.IPD1.Connected(p0142%) Then
        l0144! = Timer + gv0692%
        Do While l0144! > Timer And gv06D2%(p0142%)
            DoEvents
            Loop
        If gv06D2%(p0142%) Then Exit Sub
        gv06D2%(p0142%) = 1
        On Error GoTo L13098
        l014C& = Len(p0140$)
        #If Win32 Then
        l014E& = ContMap.IPD1.Config("OutBufferSize")
        #Else
        l014E& = ContMap.IPD1.OutBufferSize
        #End If
        l0150& = 0
        Do While l014C& - (l0150& + l014E&) > 0
            l0152$ = Mid$(p0140$, l0150& + 1, l014E&)
            l0154% = 0: l0144! = Timer + gv0692%
            ContMap.IPD1.DataToSend(p0142%) = l0152$
            l0150& = l0150& + l014E&
            Loop
        l0152$ = Mid$(p0140$, l0150& + 1, l014C& - l0150&)
        l0154% = 0: l0144! = Timer + (gv0692%)
        ContMap.IPD1.DataToSend(p0142%) = l0152$
        gv06D2%(p0142%) = 0
        End If
    Exit Sub

L13098:
If Err = 25036 Then
        ' IPDaemon v6.0 have extra parameters
        #If Win32 Then
        l0156% = ContMap.IPD1.BytesSent(p0142%)
        #Else
        l0156% = ContMap.IPD1.BytesSent
        #End If
        If l0156% > 0 Then
                l0152$ = Mid$(l0152$, l0156% + 1)
            Else
                If Timer > l0144! Then
                    Screen.MousePointer = 0
                    sub0264 "Send Failed - " + Error$, "Host: "
                    gv06D2%(p0142%) = 0
                    Exit Sub
                    End If
            End If
        DoEvents
        Resume
    Else
        Screen.MousePointer = 0
        sub0264 "Send Failed - " + Error$, "Host: "
        gv06D2%(p0142%) = 0
        Exit Sub
    End If
End Sub

Sub sub0761(p0158 As String, p2 As Integer)
' called (p1$, p2%)
Dim l015C As Integer
    p0158$ = gv0214$
    For l015C% = 1 To 32
        If gv0894(l015C%).M27B8 = mc0096 Then
            p0158$ = p0158$ + "    " + Trim$(gv0894(l015C%).M2796)
            p0158$ = p0158$ + gv0214$
            End If
        Next
End Sub

Sub sub0774(ByVal p00A8 As String)
Dim l00AA As Long
Dim l00AC As Long
Dim l00AE As Long
Dim l00B0 As Integer
Dim l00B2 As String
Dim l00B8 As Variant
' Const mc00BC = 1 ' &H1%
Dim l00BE As Integer
Dim l00C2 As Integer
    On Error Resume Next
    l00AA& = InStr(p00A8$, ":")
    If l00AA& > 0 Then
        l00AC& = InStr(Mid$(p00A8$, 1, l00AA&), " To ")
        If l00AC& > 0 Then
            l00AE& = l00AC& + 4
            For l00B0% = l00AE& To l00AA&
                If Mid$(p00A8$, l00B0%, 1) = ":" Or Mid$(p00A8$, l00B0%, 1) = "(" Then
                    l00B2$ = Mid$(p00A8$, l00AC& + 4, l00B0% - l00AE& - 1)
                    If l00B2$ = Trim$(gv02D6(gv07A8%).M1E1E) Then
                        l00B8 = AppResc$ + "\notify2.wav"
                        Call sndPlaySound(l00B8, mc00BC)
                        l00BE% = 1
                        If gv07AE% Then
                            sub0789 p00A8$
                            l00C2% = 1
                            End If
                        End If
                    Exit For
                    End If
                Next
            End If
        End If
    If Len(RoomForm.TextReceive.Text) + Len(p00A8$) > 12000 Then
        If Len(RoomForm.TextReceive.Text) > 4000 Then
                RoomForm.TextReceive.Text = Right$(RoomForm.TextReceive.Text, 4000)
            Else
                RoomForm.TextReceive.Text = p00A8$
                RoomForm.TextReceive.SelStart = Len(RoomForm.TextReceive.Text)
                If gv07AE% And l00C2% = 0 Then
                    sub0789 p00A8$
                    If l00BE% = 0 Then
                        l00B8 = AppResc$ + "\notify2.wav"
                        Call sndPlaySound(l00B8, mc00BC)
                        End If
                    End If
                Exit Sub
            End If
        End If
    RoomForm.TextReceive.SelText = p00A8$
    RoomForm.TextReceive.SelStart = Len(RoomForm.TextReceive.Text)
    If gv07AE% And l00BE% = 0 Then
        sub0789 p00A8$
        If l00BE% = 0 Then
            l00B8 = AppResc$ + "\notify2.wav"
            Call sndPlaySound(l00B8, mc00BC)
            End If
        End If
End Sub

Sub sub0789(ByVal p021E As String)
    CountMap.TextWindow.Text = p021E$
End Sub

Sub sub079D(p1 As String)
End Sub

Sub sub07B0(p00CA As String, p00CC As Integer)
Dim l00CE As String
Dim l00D0 As Single
Dim l00D2 As Integer
Dim l00DA As String
' Const m00E6 = 0 ' &H0%
    On Error Resume Next
    l00CE$ = ""
    p00CA$ = ""
    ContMap.IPPort2.Linger = 0
    ContMap.IPPort2.Connected = 0
    l00D0! = Timer + 0.3
    Do Until Timer > l00D0!
        DoEvents
        Loop
    #If Win32 Then
    ContMap.IPPort2.RemotePort = gv069E%
    l00D0! = Timer + (gv0692% / 2)
    Do
        ContMap.IPPort2.RemoteHost = gv06A0$
        If Err Then Exit Do
        DoEvents
        Loop Until ContMap.IPPort2.RemoteHost <> "0.0.0.0" Or Timer > l00D0!
    If Err Or ContMap.IPPort2.RemoteHost = "0.0.0.0" Or ContMap.IPPort2.RemoteHost = "" Then
        Err = 0
        l00D0! = Timer + (gv0692% / 2)
        Do
            ContMap.IPPort2.RemoteHost = gv069A$
            If Err Then Exit Do
            DoEvents
            Loop Until ContMap.IPPort2.RemoteHost <> "0.0.0.0" Or Timer > l00D0!
        If Err Or ContMap.IPPort2.RemoteHost = "0.0.0.0" Then
            Err = 0
            p00CA$ = "Can't Connect.  Couldn't Reach Name Server."
            Exit Sub
            End If
        End If
    #Else
    ContMap.IPPort2.Port = gv069E%
    l00D0! = Timer + (gv0692% / 2)
    Do
        ContMap.IPPort2.HostAddress = gv06A0$
        If Err Then Exit Do
        DoEvents
        Loop Until ContMap.IPPort2.HostName <> "0.0.0.0" Or Timer > l00D0!
    If Err Or ContMap.IPPort2.HostName = "0.0.0.0" Or ContMap.IPPort2.HostName = "" Then
        Err = 0
        l00D0! = Timer + (gv0692% / 2)
        Do
            ContMap.IPPort2.HostName = gv069A$
            If Err Then Exit Do
            DoEvents
            Loop Until ContMap.IPPort2.HostName <> "0.0.0.0" Or Timer > l00D0!
        If Err Or ContMap.IPPort2.HostName = "0.0.0.0" Then
            Err = 0
            p00CA$ = "Can't Connect.  Couldn't Reach Name Server."
            Exit Sub
            End If
        End If
    #End If
    For l00D2% = 1 To 3
        Screen.MousePointer = 11
        ContMap.IPPort2.Connected = -1
        l00D0! = Timer + (gv0692%)
        Do Until gv06C6% Or gv06C8% Or Timer > l00D0!
            DoEvents
            Loop
        If gv06C6% Or gv06C8% Then Exit For
        ContMap.IPPort2.Linger = 0
        ContMap.IPPort2.Connected = 0
        l00D0! = Timer + 0.3
        Do Until Timer > l00D0!
            DoEvents
            Loop
        Next
    If gv06C6% = 0 And gv06C8% = 0 Then
        p00CA$ = "Timed Out Waiting For Connection"
        Exit Sub
        End If
    If gv06C6% Then
            If p00CC% = 0 Then
                    Call sub07BE(gc0860, l00DA$)
                Else
                    l00DA$ = gc07EC
                    l00DA$ = l00DA$ + gc0868 + gc07E4
                    l00DA$ = l00DA$ + Trim$(gv06A4$) + gc07E4
                    l00DA$ = l00DA$ + Trim$(gv06A8$) + gc07E4
                    l00DA$ = l00DA$ + Trim$(gv06AC$) + gc07E4
                    l00DA$ = l00DA$ + Trim$(gv07B0$) + gc07E4
                    l00DA$ = l00DA$ + Trim$(TrialDays$) + gc07E4
                    For l00D2% = 1 To gv02CA%
                        If gv02D6(l00D2%).M1F5D = m00E6 Then
                            l00DA$ = l00DA$ + Trim$(gv03E6(l00D2%)) + ", "
                            End If
                        Next
                    l00DA$ = Left$(l00DA$, Len(l00DA$) - 2) + gc07E4
                    If gv0598% Then
                            l00DA$ = l00DA$ + "All Countries Conquered"
                        Else
                            l00DA$ = l00DA$ + "All Countries Neutral"
                        End If
                    If gv059C% = 1 Or gv059C% = 0 Then
                            l00DA$ = l00DA$ + ", Normal Play" + gc07E4
                        Else
                            l00DA$ = l00DA$ + ", Expert Play" + gc07E4
                        End If
                    l00DA$ = l00DA$ + gc07E8
                End If
            Call sub07D5(l00DA$)
            l00D0! = Timer + (gv0692%)
            Do Until gv06CE% Or gv06D0% Or Timer > l00D0!
                DoEvents
                Loop
            Select Case p00CC%
                Case 0
                    If gv06D0% Then
                            p00CA$ = "Couldn't Register Host."
                        ElseIf gv06CE% Then
                            gv07D6% = 2
                        End If
                Case 1
                    If gv06D0% Then
                        p00CA$ = "Sorry, Couldn't Post Description."
                        End If
                Case Else
                End Select
        Else
            p00CA$ = "Can't Connect.  Check Port Setting or Name Server Info In Host Setup."
        End If
    gv06C6% = 0: gv06C8% = 0
    gv06CE% = 0: gv06D0% = 0
End Sub

Sub sub07BE(ByVal p01BE As String, p01C0 As String)
    p01C0$ = gc07EC
    p01C0$ = p01C0$ + p01BE$ + gc07E4
    p01C0$ = p01C0$ + Trim$(gv06A4$) + gc07E4
    p01C0$ = p01C0$ + Trim$(gv06A8$) + gc07E4
    p01C0$ = p01C0$ + Trim$(gv06AC$) + gc07E4
    p01C0$ = p01C0$ + "" + gc07E4
    p01C0$ = p01C0$ + Trim$(TrialDays$) + gc07E4
    p01C0$ = p01C0$ + gc07E8
End Sub

Sub sub07D5(p017E As String)
Dim l0180 As Long
Dim l0182 As Long
Dim l0184 As Long
Dim l0186 As String
Dim l0188 As Single
Dim l018A As Integer
Dim l018C As Integer
Dim l018E As Integer
    If ContMap.IPPort2.Connected Then
        On Error GoTo L13738
        l0180& = Len(p017E$)
        #If Win32 Then
        l0182& = ContMap.IPPort2.Config("OutBufferSize")
        #Else
        l0182& = ContMap.IPPort2.OutBufferSize
        #End If
        l0184& = 0
        Do While l0180& - (l0184& + l0182&) > 0
            l0186$ = Mid$(p017E$, l0184& + 1, l0182&)
            l0188! = Timer + (gv0692% * 2)
            ContMap.IPPort2.DataToSend = l0186$
            l0184& = l0184& + l0182&
            If l018A% Then Exit Do
            Loop
        l0186$ = Mid$(p017E$, l0184& + 1, l0180& - l0184&)
        l0188! = Timer + (gv0692% * 2)
        ContMap.IPPort2.DataToSend = l0186$
        End If
Exit Sub

L13738:
If Err = 25036 Then
        l018C% = ContMap.IPPort2.BytesSent
        If l018C% > 0 Then
                l0186$ = Mid$(l0186$, l018C% + 1)
            Else
                If Timer > l0188! Then
                    Screen.MousePointer = 0
                    Call sub079D("ViaTalk: Send Failed - " + Error$ + gv0214$)
                    l018E% = 1
                    Exit Sub
                    End If
            End If
        DoEvents
        Resume
    Else
        Screen.MousePointer = 0
        Call sub079D("ViaTalk: Send Failed - " + Error$ + gv0214$)
        l018E% = 1
        Exit Sub
    End If
End Sub

Sub sub07E0(p00F8 As Variant, p00FC As Integer)
Dim l00FE As String
Dim l0100 As Long
Dim l0102 As Long
    l00FE$ = p00F8
    If p00FC% = 0 Then
            If InStr(l00FE$, "IP For") Then
                    gv06CE% = -1
                Else
                    gv06D0% = -1
                End If
        ElseIf p00FC% = 1 Then
            If InStr(l00FE$, "IP Is") Then
                    l0100& = InStr(l00FE$, "-")
                    l0102& = InStr(l0100& + 1, l00FE$, "-")
                    gv06CA$ = Mid$(l00FE$, l0100& + 1, l0102& - (l0100& + 1))
                    gv06CE% = -1
                Else
                    gv06D0% = -1
                End If
        Else
            If InStr(l00FE$, "Description Posted") Then
                    gv06CE% = -1
                Else
                    gv06D0% = -1
                End If
        End If
    l00FE$ = p00F8
    sub0264 l00FE$, "Chip: "
End Sub

Sub sub07F4(p0124 As String)
Dim l0126 As String
Dim l0128 As Single
Dim l012A As Variant
Dim l012E As Integer
Dim l0130 As String
    On Error Resume Next
    l0126$ = ""
    p0124$ = ""
    ContMap.IPPort2.Linger = 0
    ContMap.IPPort2.Connected = 0
    l0128! = Timer + 0.3
    Do Until Timer > l0128!
        DoEvents
        Loop
    #If Win32 Then
    ContMap.IPPort2.RemotePort = gv069E%
    l0128! = Timer + (gv0692% / 2)
    Do
        ContMap.IPPort2.RemoteHost = gv06A0$
        If Err Then Exit Do
        DoEvents
        Loop Until ContMap.IPPort2.RemoteHost <> "0.0.0.0" Or ContMap.IPPort2.RemoteHost <> "" Or Timer > l0128!
    If Err Or ContMap.IPPort2.RemoteHost = "0.0.0.0" Or ContMap.IPPort2.RemoteHost = "" Then
        Err = 0
        l0128! = Timer + (gv0692% / 2)
        Do
            ContMap.IPPort2.RemoteHost = gv069A$
            If Err Then Exit Do
            DoEvents
            Loop Until ContMap.IPPort2.RemoteHost <> "0.0.0.0" Or Timer > l0128!
        If Err Or ContMap.IPPort2.RemoteHost = "0.0.0.0" Then
            Err = 0
            p0124$ = "Can't Connect.  Couldn't Reach Name Server."
            Exit Sub
            End If
        End If
    #Else
    ContMap.IPPort2.Port = gv069E%
    l0128! = Timer + (gv0692% / 2)
    Do
        ContMap.IPPort2.HostAddress = gv06A0$
        If Err Then Exit Do
        DoEvents
        Loop Until ContMap.IPPort2.HostName <> "0.0.0.0" Or ContMap.IPPort2.HostName <> "" Or Timer > l0128!
    If Err Or ContMap.IPPort2.HostName = "0.0.0.0" Or ContMap.IPPort2.HostName = "" Then
        Err = 0
        l0128! = Timer + (gv0692% / 2)
        Do
            ContMap.IPPort2.HostName = gv069A$
            If Err Then Exit Do
            DoEvents
            Loop Until ContMap.IPPort2.HostName <> "0.0.0.0" Or Timer > l0128!
        If Err Or ContMap.IPPort2.HostName = "0.0.0.0" Then
            Err = 0
            p0124$ = "Can't Connect.  Couldn't Reach Name Server."
            Exit Sub
            End If
        End If
    #End If
    gv06C6% = 0: gv06C8% = 0
    l012A = 1
    For l012E% = 1 To 3
        Screen.MousePointer = 11
        ContMap.IPPort2.Connected = -1
        l0128! = Timer + (gv0692%)
        Do Until gv06C6% Or gv06C8% Or Timer > l0128!
            DoEvents
            Loop
        If gv06C6% Or gv06C8% Then Exit For
        ContMap.IPPort2.Linger = 0
        ContMap.IPPort2.Connected = 0
        l0128! = Timer + 0.3
        Do Until Timer > l0128!
            DoEvents
            Loop
        Next
    l012A = 0
    If gv06C6% = 0 And gv06C8% = 0 Then
        p0124$ = "Timed Out Waiting For Connection"
        Exit Sub
        End If
    If gv06C6% Then
            l0130$ = gc07EC
            l0130$ = l0130$ + gc0864 + gc07E4
            l0130$ = l0130$ + Trim$(gv06A4$) + gc07E4
            l0130$ = l0130$ + Trim$(gv06B0$) + gc07E4
            l0130$ = l0130$ + "" + gc07E4
            l0130$ = l0130$ + "" + gc07E4
            l0130$ = l0130$ + Trim$(TrialDays$) + gc07E4
            l0130$ = l0130$ + gc07E8
            Call sub07D5(l0130$)
            l0128! = Timer + (gv0692%)
            Do Until gv06CE% Or gv06D0% Or Timer > l0128!
                DoEvents
                Loop
            If gv06CE% = 0 And gv06D0% = 0 Then
                p0124$ = "Timed Out Waiting For Connection"
                Exit Sub
                End If
            If gv06D0% Then
                p0124$ = "Can't Connect.  Address Wasn't Found."
                End If
        Else
            p0124$ = "Can't Connect.  Check 'Port' Setting And 'Name Server' DNS/IP In Host Setup."
        End If
    gv06C6% = 0: gv06C8% = 0
    gv06CE% = 0: gv06D0% = 0
End Sub

Sub sub0802(p0136 As Variant)
Dim l013A As String
Dim l013C As Integer
    l013A$ = p0136
    l013C% = FreeFile
    Open AppData$ + "\empfiles\tempgame.vbl" For Binary As l013C%
    Put l013C%, , l013A$
    Close l013C%
End Sub

Sub sub0818(p015E As String, p0160 As Integer)
Dim l0162 As Integer
    p0160% = 0
    For l0162% = 1 To 32
        If ContMap.IPD1.Connected(l0162%) And gv0894(l0162%).M27B8 = mc0096 Then
            p0160% = p0160% + 1
            sub0759 p015E$, l0162%
            End If
        Next
End Sub

Sub sub0827(p0164 As String)
Dim l0166 As Integer
Dim l0168 As Single
    For l0166% = 1 To 3
        Call sub0273(p0164$)
        l0168! = Timer + (gv0692%)
        Do
            DoEvents
            Loop While gv0734% = 0 And Timer < l0168!
        If gv0734% Then Exit For
        Next
End Sub

Sub sub0833(p1 As Variant, p0194 As Integer)
' called (p1 As Variant, p2%)
Dim l0196 As Integer
Dim l019A As String
Dim l019E As String
    l0196% = FreeFile
    Open AppData$ + "\" + "Savegamr.00" + LTrim$(Str$(gv0720%)) For Binary As l0196%
    l019A$ = Space$(LOF(l0196%))
    Get #l0196%, , l019A$
    Close l0196%
    l019A$ = gc07EC + gc082C + gc07E4 + l019A$ + gc07E8
    sub0759 l019A$, p0194%
    l019E$ = gc07EC + gc0828 + gc07E4 + gc07E8
    sub0759 l019E$, p0194%
End Sub

Sub sub0844(p1 As Variant, p01A4 As Integer)
' called (p1 As Variant, p2%)
Dim l01A6 As Integer
Dim l01A8 As String
Dim l01AC As String
    For l01A6% = 1 To gv02CA%
        If Trim$(gv02D6(l01A6%).M1E1E) = Trim$(gv0894(p01A4%).M2796) Then
            l01A8$ = Trim$(Str$(l01A6%))
            Exit For
            End If
        Next
    l01AC$ = gc07EC + gc0834 + gc07E4 + l01A8$ + gc07E8
    sub0759 l01AC$, p01A4%
    Call sub0852
End Sub

Sub sub0852()
Dim l02EE As String
Dim l02F0 As Integer
Dim l02F2 As String
    l02EE$ = ""
    For l02F0% = 1 To 32
        If gv0894(l02F0%).M27B8 = mc0096 Then
            If Trim$(gv0894(l02F0%).M2796) <> "" Then
                l02EE$ = l02EE$ + Trim$(gv0894(l02F0%).M2796) + gc07E4 + l02F2$ + gc07E4
                End If
            End If
        Next
    l02EE$ = gc07EC + gc086C + gc07E4 + l02EE$ + gc07E8
    For l02F0% = 1 To 32
        If ContMap.IPD1.Connected(l02F0%) Then
            sub0759 l02EE$, l02F0%
            End If
        Next
End Sub

Sub sub085E(p01B6 As Integer)
Dim l01B8 As Integer
Dim l01BC As String
    For l01B8% = 1 To 32
        If gv0894(l01B8%).M27B8 = mc0096 Then
            l01BC$ = gc07EC + gc0824 + gc07E4 + Trim$(gv0894(p01B6%).M2796) + " Has Joined The Game For The " + gv03E6(gv0894(p01B6%).M1EA3) + "s." + gc07E8
            sub0759 l01BC$, l01B8%
            End If
        Next
End Sub

Sub sub086F()
Dim l01C6 As String
Dim l01CA As Single
Dim l01DC As String
Dim l01DE As String
Dim l01E0 As String
Dim l01E2 As String
Dim l01E4 As String
    DoEvents
    Screen.MousePointer = 11
    RoomForm.Hide
    RoomForm.TextReceive.Text = ""
    RoomForm.TextToSend.Text = ""
    gv07CC% = 0: gv07CE$ = ""
    gv0734% = 0
    l01C6$ = gc07EC
    l01C6$ = l01C6$ + gc07F0 + gc07E4
    l01C6$ = l01C6$ + Trim$(gv06A4$) + gc07E4
    l01C6$ = l01C6$ + Trim$(TrialDays$) + gc07E4
    l01C6$ = l01C6$ + gc07E8
    sub0264 "Registering With Host...", "Chip:"
    Call sub0827(l01C6$)
    If gv0734% = 0 Then
        sub0264 "Host Did Not Respond.  Disconnecting.", "Chip:"
        Call sub027D("Host Did Not Respond.  Disconnecting.")
        Exit Sub
        End If
    l01CA! = Timer + gv0692%
    Do Until gv07CC% Or Timer > l01CA!
        DoEvents
        Loop
    If gv07CC% = 1 Then
            sub0264 gv07CE$, "Host:"
            Call sub027D(gv07CE$)
            Exit Sub
        ElseIf gv07CC% = 0 Then
            sub0264 "Can't Connect. Reason Unknown.", "Chip:"
            Call sub027D("Host Did Not Respond.  Disconnecting.")
            Exit Sub
        ElseIf gv07CC% = 2 Then
            sub0264 gv07CE$, "Host:"
        End If
    Screen.MousePointer = 11
    l01C6$ = gc07EC + gc0830 + gc07E4 + gc07E8
    sub0264 "Downloading Game...", "Chip:"
    gv0734% = 0
    Call sub0827(l01C6$)
    If gv0734% = 0 Then
        sub0264 "Game Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Game Did Not Transfer Properly.  Disconnecting.")
        Exit Sub
        End If
    l01C6$ = gc07EC + gc082C + gc07E4 + Trim$(gv06A4$) + gc07E4 + Trim$(TrialDays$) + gc07E4 + gc07E8
    gv0734% = 0
    Call sub0827(l01C6$)
    If gv0734% = 0 Then
        sub0264 "Game Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Game Did Not Transfer Properly.  Disconnecting.")
        Exit Sub
        End If
    l01CA! = Timer + (gv0692%)
    Do Until gv07AA% Or Timer > l01CA!
        DoEvents
        Loop
    If gv07AA% = 0 Then
        sub0264 "Game Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Game Did Not Transfer Properly.  Disconnecting.")
        Exit Sub
        End If
    ContMap.Refresh
    Call sub047A(100)
    If gv071A% = 0 Then
            Screen.MousePointer = 11
            gv06BA% = 1
            ContMap.Enabled = 0
            gv07C2% = 0
            StatusForm.Show
            Do Until gv07C2%
                DoEvents
                Loop
        Else
            gv06B6$ = "1"
        End If
    Screen.MousePointer = 11
    l01C6$ = gc07EC + gc085C + gc07E4 + gv06B6$ + gc07E4 + Trim$(gv06A4$) + gc07E4 + Trim$(TrialDays$) + gc07E4 + gc07E8
    sub0264 "Registering Ideology...", "Chip:"
    gv0734% = 0
    Call sub0827(l01C6$)
    If gv0734% = 0 Then
        sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
        Exit Sub
        End If
    gv07A8% = Val(gv06B6$)
    Screen.MousePointer = 11
    l01C6$ = gc07EC + gc0834 + gc07E4 + Trim$(gv06A4$) + gc07E4 + Trim$(TrialDays$) + gc07E4 + gc07E8
    sub0264 "Retrieving Your Status...", "Chip:"
    gv0734% = 0
    Call sub0827(l01C6$)
    If gv0734% = 0 Then
        sub0264 "Status Info Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Game Did Not Transfer Properly.  Disconnecting.")
        Exit Sub
        End If
    sub0264 "Initializing Game...", "Chip:"
    Screen.MousePointer = 11
    gv025C% = 1
    Call sub0484
    Screen.MousePointer = 11
    gv06BA% = 0
    gv07C2% = 0
    StatusForm.Show
    Do Until gv07C2%
        DoEvents
        Loop
    Call sub0496(-1)
    If gv071A% Then
            Call sub02AB(-1)
            l01DC$ = "When Everyone Is Connected, Press 'Start' To Begin The Game."
            l01DE$ = ""
            l01E0$ = ""
            l01E2$ = ""
            l01E4$ = ""
            Call sub0253(l01DC$, l01DE$, l01E0$, l01E2$, l01E4$)
        Else
            Call sub02AB(0)
            l01DC$ = "Waiting For Host..."
            l01DE$ = ""
            l01E0$ = ""
            l01E2$ = ""
            l01E4$ = ""
            Call sub0253(l01DC$, l01DE$, l01E0$, l01E2$, l01E4$)
        End If
    gv025C% = 1
    Call sub02BB(0)
    ContMap.Image_Surrend.Visible = 0
    ContMap.ComConnect.Caption = "Disconnect"
    ContMap.ComConnect.Enabled = -1
    ContMap.ComHost.Enabled = 0
    Call sub0446
    ContMap.MenuFileNew.Visible = 0
    ContMap.MenuFileLoad.Visible = 0
    ContMap.MenuFileSave.Visible = 0
    gv0712% = 1
    ContMap.ComHotLine.Visible = -1
    ContMap.ComWeb.Visible = -1
    ContMap.Refresh
    If gv071A% Then sub0264 "Standing By For Connections...", "Host:"
    sub0264 "Ready.", "Chip:"
    Screen.MousePointer = 0
    If gv071A% Then Call sub0883
End Sub

Sub sub0883()
Dim l0028 As String
Dim l002E As Single
Dim l0030 As Integer
Dim l0032 As Integer
    On Error GoTo L10A8E
    Do
        If gv071A% And gv03A4% > 1 And gv02D6(gv03A4%).M1F50 <> gc088A Then
            ContMap.Command1.Caption = "Force Pass"
            ContMap.Command1.Visible = -1
            End If
        Do Until gv07C0% Or gv0716%
            DoEvents
            If ContMap.IPPort1.Connected = 0 Then gv0716% = -1: gv055A% = 0
            Loop
        ContMap.MousePointer = 11
        If gv0716% = 0 Then
            If gv0554% Then
                GoSub L10A9A
                If ContMap.IPPort1.Connected = 0 Then gv0716% = -1: gv055A% = 0
                End If
            End If
        If gv0716% = 0 Then
            l0028$ = gc07EC + gc0838 + gc07E4 + gc07E8
            sub0264 "Passing Turn...", "Chip:"
            gv0734% = 0
            Call sub0273(l0028$)
            l002E! = Timer + (gv0692%)
            Do Until gv0734% Or Timer > l002E!
                DoEvents
                Loop
            If gv0734% = 0 Then
                sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
                Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
                gv0716% = -1: gv055A% = 0
                Exit Do
                End If
            gv07C0% = 0
            sub0264 "Okay.", "Host:"
            ContMap.MousePointer = 0
            If gv0716% = 0 And gv02D6(gv03A4%).M1F50 = gc088A Then
                Call sub061F(l0030%, l0032%)
                gv07C0% = -1
                If ContMap.IPPort1.Connected = 0 Then gv0716% = -1: gv055A% = 0
                End If
            End If
        Loop Until gv0716%
    Screen.MousePointer = 0
    ContMap.MousePointer = 0
    If gv055A% Then
        Call sub08C3
        End If
    Exit Sub

L10A8E:
Resume Next

L10A9A:
    l0028$ = gc07EC + gc0870 + gc07E4 + Trim$(Str$(gv0554%)) + gc07E4 + Trim$(Str$(gv0556%)) + gc07E4 + gc07E8
    sub0264 "Surrendering Player...", "Chip:"
    gv0734% = 0
    Call sub0273(l0028$)
    l002E! = Timer + (gv0692%)
    Do Until gv0734% Or Timer > l002E!
        DoEvents
        Loop
    If gv0734% = 0 Then
        sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
        gv07C6% = 0
        Return
        End If
    sub0264 "Okay.", "Host:"
    ContMap.MousePointer = 0
    Return
End Sub

Sub sub088C(p01E8 As Variant)
Dim l01EC As Long
Dim l01EE As Long
Dim l01F0 As Integer
Dim l01F2 As Integer
Dim l01FC As String
Dim l01FE As String
Dim l0200 As String
Dim l0202 As String
Dim l0204 As String
Dim l0206 As Integer
Dim l0208 As Integer
Dim l020A As Integer
Dim l020C As Integer
Dim l020E As Integer
Dim l0210 As Integer
' Const mc0212 = 8913094& ' &H8800C6&
Dim l0218 As Integer
' Const mc021A = 6684742& ' &H660046&
    l01EC& = 1
    l01EE& = InStr(l01EC&, p01E8, gc07E4)
    l01F0% = Val(Mid$(p01E8, l01EC&, l01EE& - l01EC&))
    l01EC& = l01EE& + Len(gc07E4)
    l01EE& = InStr(l01EC&, p01E8, gc07E4)
    l01F2% = Val(Mid$(p01E8, l01EC&, l01EE& - l01EC&))
    l01FC$ = "Attacking: " + RTrim$(gv0260(l01F0%).M1E1E) + " From " + RTrim$(gv0260(l01F2%).M1E1E)
    l01FE$ = ""
    l0200$ = ""
    l0202$ = ""
    l0204$ = ""
    Call sub0253(l01FC$, l01FE$, l0200$, l0202$, l0204$)
    l0206% = FreeFile
    Open AppResc$ + "\" + "tontxy2.vbl" For Random As l0206% Len = 2
    l0208% = gv0260(l01F2%).M1E65
    Get l0206%, l0208%, l020A%
    Get l0206%, l0208% + 1, l020C%
    l0208% = gv0260(l01F0%).M1E65
    Get l0206%, l0208%, l020E%
    Get l0206%, l0208% + 1, l0210%
    Close l0206%
    ContMap.Refresh
    If l020E% >= l020A% Then
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E% - 2, l0210% - 5, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E% - 2, l0210% - 5, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.LArrowShad.hdc, 0, 0, mc021A&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E%, l0210% - 10, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E%, l0210% - 10, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.Picture2.hdc, 0, 0, mc021A&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A% - 22, l020C% - 5, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A% - 22, l020C% - 5, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.RArrowShad.hdc, 0, 0, mc021A&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A% - 20, l020C% - 10, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A% - 20, l020C% - 10, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.Picture5.hdc, 0, 0, mc021A&)
        Else
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A% - 2, l020C% - 5, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A% - 2, l020C% - 5, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.LArrowShad.hdc, 0, 0, mc021A&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A%, l020C% - 10, ContMap.Picture4.Width, ContMap.Picture4.Height, ContMap.Picture4.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020A%, l020C% - 10, ContMap.Picture2.Width, ContMap.Picture2.Height, ContMap.Picture2.hdc, 0, 0, mc021A&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E% - 22, l0210% - 5, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E% - 22, l0210% - 5, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.RArrowShad.hdc, 0, 0, mc021A&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E% - 20, l0210% - 10, ContMap.Picture6.Width, ContMap.Picture6.Height, ContMap.Picture6.hdc, 0, 0, mc0212&)
            l0218% = BitBlt(ContMap.Picture1.hdc, l020E% - 20, l0210% - 10, ContMap.Picture5.Width, ContMap.Picture5.Height, ContMap.Picture5.hdc, 0, 0, mc021A&)
        End If
End Sub

Sub sub089A(p0220 As Long)
Dim l0222 As Variant
' Const mc0226 = 1 ' &H1%
Dim l022A As Integer
    Screen.MousePointer = 11
    #If Win32 Then
    l022A% = WinHelp&(l0222, AppDir$ + "\empire.hlp", mc0226, ByVal p0220&)
    #Else
    l022A% = WinHelp%(l0222, AppDir$ + "\empire.hlp", mc0226, ByVal p0220&)
    #End If
    Screen.MousePointer = 0
End Sub

Sub sub08A6(p0232 As Variant, p0236 As Integer)
Dim l0238 As Long
Dim l023A As Long
Dim l023C As Integer
Dim l023E As Integer
Dim l0240 As Integer
Dim l0242 As Integer
Dim l0244 As Integer
Dim l0246 As String
Dim l0248 As String
Dim l024A As String
Dim l024C As String
Dim l024E As String
    ContMap.Picture1.Refresh
    l0238& = 1
    l023A& = InStr(l0238&, p0232, gc07E4)
    l023C% = Val(Mid$(p0232, l0238&, l023A& - l0238&))
    l0238& = l023A& + Len(gc07E4)
    l023A& = InStr(l0238&, p0232, gc07E4)
    l023E% = Val(Mid$(p0232, l0238&, l023A& - l0238&))
    l0238& = l023A& + Len(gc07E4)
    l023A& = InStr(l0238&, p0232, gc07E4)
    l0240% = Val(Mid$(p0232, l0238&, l023A& - l0238&))
    l0238& = l023A& + Len(gc07E4)
    l023A& = InStr(l0238&, p0232, gc07E4)
    l0242% = Val(Mid$(p0232, l0238&, l023A& - l0238&))
    l0238& = l023A& + Len(gc07E4)
    l023A& = InStr(l0238&, p0232, gc07E4)
    l0244% = Val(Mid$(p0232, l0238&, l023A& - l0238&))
    gv0260(l023C%).M1EC2 = l0240%
    gv0260(l023E%).M1EC2 = l0242%
    If p0236% = 0 Then
            gv0260(l023C%).M1E9A = gv0260(l023E%).M1E9A
            gv0260(l023C%).M1EA3 = gv0260(l023E%).M1EA3
            gv0260(l023C%).M1ECC = gv0260(l023E%).M1ECC
            gv02D6(gv03A4%).M1FA8 = gv02D6(gv03A4%).M1FA8 + l0244%
            Call sub02F3(l023C%, gv0260(l023C%).M1ECC)
            l0246$ = Trim$(gv02D6(gv03A4%).M1E1E) + " Conquered " + RTrim$(gv0260(l023C%).M1E1E) + " Losing" + Str$(l0244%) + " Armies"
            l0248$ = ""
            l024A$ = ""
            l024C$ = ""
            l024E$ = ""
            Call sub0253(l0246$, l0248$, l024A$, l024C$, l024E$)
        ElseIf p0236% = 1 Then
            l0246$ = Trim$(gv02D6(gv03A4%).M1E1E) + " Withdrew From " + RTrim$(gv0260(l023C%).M1E1E) + " After Losing" + Str$(l0244%) + " Armies"
            l0248$ = ""
            l024A$ = ""
            l024C$ = ""
            l024E$ = ""
            Call sub0253(l0246$, l0248$, l024A$, l024C$, l024E$)
        ElseIf p0236% = 2 Then
            l0246$ = Trim$(gv02D6(gv03A4%).M1E1E) + " Has Transferred " + Str$(l0244%) + " Armies To " + RTrim$(gv0260(l023C%).M1E1E)
            l0248$ = ""
            l024A$ = ""
            l024C$ = ""
            l024E$ = ""
            Call sub0253(l0246$, l0248$, l024A$, l024C$, l024E$)
        ElseIf p0236% = 3 Then
            l0246$ = Trim$(gv02D6(gv03A4%).M1E1E) + " Has Occupied " + RTrim$(gv0260(l023C%).M1E1E) + " With" + Str$(l0244%) + " Armies"
            l0248$ = ""
            l024A$ = ""
            l024C$ = ""
            l024E$ = ""
            Call sub0253(l0246$, l0248$, l024A$, l024C$, l024E$)
        ElseIf p0236% = 4 Then
            l0246$ = Trim$(gv02D6(gv03A4%).M1E1E) + " Has Assigned " + Str$(l0244%) + " New Armies To " + RTrim$(gv0260(l023C%).M1E1E)
            l0248$ = ""
            l024A$ = ""
            l024C$ = ""
            l024E$ = ""
            Call sub0253(l0246$, l0248$, l024A$, l024C$, l024E$)
        End If
End Sub

Sub sub08B5(p0250 As Variant)
    gv06B6$ = p0250
End Sub

Sub sub08C3()
Dim l02F8 As String
Dim l02FA As Single
    l02F8$ = gc07EC + gc0874 + gc07E4 + Trim$(Str$(gv055A%)) + gc07E8
    sub0264 "A Winner!", "Chip:"
    gv0734% = 0
    Call sub0273(l02F8$)
    l02FA! = Timer + (gv0692%)
    Do Until gv0734% Or Timer > l02FA!
        DoEvents
        Loop
    If gv0734% = 0 Then
        sub0264 "Message Did Not Transfer Properly.  Disconnecting.", "Chip:"
        Call sub027D("Message Did Not Transfer Properly.  Disconnecting.")
        Exit Sub
        End If
    sub0264 "Okay.", "Host:"
    ContMap.MousePointer = 0
End Sub

Sub sub08D3(p02E4 As Variant)
Dim l02E8 As String
Dim l02EA As Long
Dim l02EC As Integer
    l02E8$ = p02E4
    sub0264 l02E8$, "Host:"
    If InStr(p02E4, "Has Joined") Then
            l02EA& = InStr(p02E4, " Has Joined")
            l02E8$ = Mid$(p02E4, 1, l02EA& - 1)
            If gv0710% Then
                RoomForm.ListUsers.AddItem l02E8$
                End If
        ElseIf InStr(p02E4, "Has Left") Then
            l02EA& = InStr(p02E4, " ")
            l02E8$ = Mid$(p02E4, 1, l02EA& - 1)
            If gv0710% Then
                For l02EC% = 1 To RoomForm.ListUsers.ListCount
                    If RoomForm.ListUsers.List(l02EC% - 1) = l02E8$ Then
                        RoomForm.ListUsers.RemoveItem l02EC% - 1
                        Exit For
                        End If
                    Next
                End If
        ElseIf InStr(p02E4, "Latest Version") Then
            gv06D0% = -1
            gv07D6% = 1
        End If
End Sub

