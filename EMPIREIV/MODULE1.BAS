Attribute VB_Name = "MODULE1"
' Module1
Option Explicit

' Winapi Functions
#If Win32 Then
' Winapi32 Functions
' kernel32.dll
Declare Function GetWindowsDirectory Lib "kernel32.dll" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

' user32.dll
Declare Function GetActiveWindow Lib "user32.dll" () As Long
Declare Function WinHelp Lib "user32.dll" Alias "WinHelpA" (ByVal hwnd As Long, ByVal lpHelpFile As String, ByVal wCommand As Long, ByVal dwData As Long) As Long

' gdi32.dll
Declare Function BitBlt Lib "gdi32.dll" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Declare Function CreateCompatibleDC Lib "gdi32.dll" (ByVal hdc As Long) As Long
Declare Function DeleteDC Lib "gdi32.dll" (ByVal hdc As Long) As Long
Declare Function ExtFloodFill Lib "gdi32.dll" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long, ByVal wFillType As Long) As Long
Declare Function FloodFill Lib "gdi32.dll" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long) As Long
Declare Function GetObjectAPI Lib "gdi32.dll" Alias "GetObjectA" (ByVal hObject As Long, ByVal nCount As Long, ByRef lpObject As Any) As Long
Declare Function SelectObject Lib "gdi32.dll" (ByVal hdc As Long, ByVal hObject As Long) As Long
Declare Function SetStretchBltMode Lib "gdi32.dll" (ByVal hdc As Long, ByVal nStretchMode As Long) As Long
Declare Function StretchBlt Lib "gdi32.dll" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long

' winmm.dll
Declare Function mciExecute Lib "winmm.dll" (ByVal lpstrCommand As String) As Long
Declare Function mciGetErrorString Lib "winmm.dll" Alias "mciGetErrorStringA" (ByVal dwError As Long, ByVal lpstrBuffer As String, ByVal uLength As Long) As Long
Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long

#Else
' Winapi16 Functions
' Kernel.dll
Declare Function GetWindowsDirectory Lib "kernel32.dll" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

' User.dll
Declare Function GetActiveWindow Lib "User" () As Integer
Declare Function WinHelp Lib "User" (ByVal hwnd As Integer, ByVal lpHelpFile As String, ByVal wCommand As Integer, ByRef dwData As Any) As Integer

' GDI.dll
Declare Function BitBlt Lib "GDI" (ByVal hDestDC As Integer, ByVal X As Integer, ByVal Y As Integer, ByVal nWidth As Integer, ByVal nHeight As Integer, ByVal hSrcDC As Integer, ByVal xSrc As Integer, ByVal ySrc As Integer, ByVal dwRop As Long) As Integer
Declare Function CreateCompatibleDC Lib "GDI" (ByVal hdc As Integer) As Integer
Declare Function DeleteDC Lib "GDI" (ByVal hdc As Integer) As Integer
Declare Function ExtFloodFill Lib "GDI" (ByVal hdc As Integer, ByVal X As Integer, ByVal Y As Integer, ByVal crColor As Long, ByVal wFillType As Integer) As Integer
Declare Function FloodFill Lib "GDI" (ByVal hdc As Integer, ByVal X As Integer, ByVal Y As Integer, ByVal crColor As Long) As Integer
Declare Function GetObjectAPI Lib "GDI" Alias "GetObject" (ByVal hObject As Integer, ByVal nCount As Integer, lpObject As T2FD8) As Integer
Declare Function SelectObject Lib "GDI" (ByVal hdc As Integer, ByVal hObject As Integer) As Integer
Declare Function SetStretchBltMode Lib "GDI" (ByVal hdc As Integer, ByVal nStretchMode As Integer) As Integer
Declare Function StretchBlt Lib "GDI" (ByVal hdc As Integer, ByVal X As Integer, ByVal Y As Integer, ByVal nWidth As Integer, ByVal nHeight As Integer, ByVal hSrcDC As Integer, ByVal xSrc As Integer, ByVal ySrc As Integer, ByVal nSrcWidth As Integer, ByVal nSrcHeight As Integer, ByVal dwRop As Long) As Integer

' MMSystem.dll
Declare Function mciExecute Lib "MMSYSTEM" (ByVal lpstrCommand As String) As Integer
Declare Function mciGetErrorString Lib "MMSYSTEM" (ByVal wError As Long, ByVal lpstrBuffer As String, ByVal uLength As Integer) As Integer
Declare Function mciSendString Lib "MMSYSTEM" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Integer, ByVal hwndCallback As Integer) As Long
Declare Function sndPlaySound Lib "MMSYSTEM" (ByVal lpszSoundName As String, ByVal uFlags As Integer) As Integer

#End If
