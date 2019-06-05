Attribute VB_Name = "MODUTILS"
' Miscleneaous Utility Module
' Added by Thiekus

Sub SetCenterOfForm(Parent As Form, Frm As Form)
    Frm.Left = (Parent.Left + (Parent.Width / 2)) - (Frm.Width / 2)
    Frm.Top = (Parent.Top + (Parent.Height / 2)) - (Frm.Height / 2)
End Sub

Sub SetCenterOfScreen(Frm As Form)
    Frm.Left = (Screen.Width - Frm.Width) / 2
    Frm.Top = (Screen.Height - Frm.Height) / 2
End Sub

