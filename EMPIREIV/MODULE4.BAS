Attribute VB_Name = "MODULE4"
' Module4
Option Explicit
Const mc0020 = 3 ' &H3%
Const mc0030 = 32 ' ? &H 0020 00CC
Const mc0054 = 5 ' &H5%

Function fn0647(p000E As Control, p0012 As Control) As Integer
Dim l0016 As T2FD8
Dim l001C As Integer
Dim l001E As Integer
' Const mc0020 = 3 ' &H3%
Dim l0024 As Integer
Dim l0028 As Integer
Dim l002C As Integer
' Const mc0030 = 32 ' ? &H 0020 00CC
    If TypeOf p000E Is PictureBox Then
    Else
        fn0647 = False
        Exit Function
    End If
    If TypeOf p0012 Is PictureBox Then
    Else
        fn0647 = False
        Exit Function
    End If
    Screen.MousePointer = 11
    l001C% = p0012.ScaleMode
    l001E% = p000E.ScaleMode
    p0012.ScaleMode = mc0020
    p000E.ScaleMode = mc0020
    l0024% = CreateCompatibleDC(p0012.hdc)
    l0028% = SelectObject(l0024%, p0012.Picture)
    l002C% = GetObjectAPI(p0012.Picture, Len(l0016), l0016)
    l002C% = SetStretchBltMode(p000E.hdc, 3)
    fn0647 = StretchBlt(p000E.hdc, 0, 0, p000E.ScaleWidth, p000E.ScaleHeight, p0012.hdc, 0, 0, p0012.ScaleWidth, p0012.ScaleHeight, mc0030)
    l0028% = SelectObject(l0024%, l0028%)
    l002C% = DeleteDC(l0024%)
    p0012.ScaleMode = l001C%
    p000E.ScaleMode = l001E%
    p000E.Refresh
    Screen.MousePointer = 0
End Function

Function fn065E(p003C As Control, p003E As Variant, p0042 As Variant, p0046 As Variant, p004A As Variant) As Integer
Dim l0052 As T2FD8
' Const mc0054 = 5 ' &H5%
Dim l005A As Variant
Dim l005E As Variant
Dim l0062 As Variant
Dim l0066 As Variant
Dim l006A As Variant
Dim l006E As Variant
Dim l0072 As Variant
Dim l0076 As Variant
Dim l007A As Variant
Dim l007E As Variant
Dim l0082 As Integer
Dim l0084 As Integer
Dim l0086 As Integer
    If TypeOf p003C Is PictureBox Then
    Else
        fn065E = False
        Exit Function
    End If
    Screen.MousePointer = 11
    Printer.ScaleMode = mc0054
    l005A = Printer.ScaleWidth
    l005E = Printer.ScaleHeight
    Printer.ScaleMode = mc0020
    l0062 = Printer.ScaleWidth
    l0066 = Printer.ScaleHeight
    l006A = l0062 / l005A
    l006E = l0066 / l005E
    l0072 = p003E * l006A
    l0076 = p0042 * l006E
    l007A = p0046 * l006A
    l007E = p004A * l006E
    p003C.ScaleMode = mc0020
    Printer.ScaleMode = mc0020
    l0082% = CreateCompatibleDC(p003C.hdc)
    l0084% = SelectObject(l0082%, p003C.Picture)
    l0086% = GetObjectAPI(p003C.Picture, Len(l0052), l0052)
    l0084% = SelectObject(l0082%, l0084%)
    l0086% = DeleteDC(l0082%)
    Screen.MousePointer = 0
End Function

