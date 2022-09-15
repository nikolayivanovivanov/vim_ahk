#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Vim_Normal"))
; Undo/Redo
u::Send,^z
+u::Send,^z
^r::Send,^y
f::
If WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe firefox.exe")  || WinActive("ahk_exe msedge.exe") {
;IfWinActive, ahk_exe chrome.exe || ahk_exe firefox.exe  || ahk_exe msedge.exe {
  ; Vimium plugin
  SendInput "f"
  ; Switch to insert mode to enter the keys
  Vim.State.SetMode("Insert")
} Else {
	MsgBox "Not supported"
}

Return
+f::MsgBox "Not supported"
t::MsgBox "Not supported"
+t::MsgBox "Not supported"
s::MsgBox "Not supported"
+s::MsgBox "Not supported"
z::MsgBox "Not supported"
,::MsgBox "Not supported"
>::MsgBox "Not supported"
<::MsgBox "Not supported"

; Combine lines
+j:: Send, {End}{Space}{Delete}

; Change case
~::
  bak := ClipboardAll
  Clipboard =
  Send, +{Right}^x
  ClipWait, 1
  if(Clipboard is lower){
    StringUpper, Clipboard, Clipboard
  }else if(Clipboard is upper){
    StringLower, Clipboard, Clipboard
  }
  Send, ^v
  Clipboard := bak
Return

+z::Vim.State.SetMode("Z")
#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Z"))
; Seems to be buggy. Could be because of my OSM QML keys
Z::MsgBox "Not supported"
;+z::MsgBox "Not supported"
;+z::
;  Send, ^s
;  Send, !{F4}
;  Vim.State.SetMode("Vim_Normal")
;Return

;+q::MsgBox "Not supported"
Q::MsgBox "Not supported"
; Seems to be buggy. Could be because of my OSM QML keys
;+q::
;  Send, !{F4}
;  Vim.State.SetMode("Vim_Normal")
;Return

#If Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Vim_Normal"))
Space::Send, {Right}

; period
.::Send, +^{Right}{BS}^v

; Q-dir
#If Vim.IsVimGroup() and WinActive("ahk_group VimQdir") and (Vim.State.Mode == "Vim_Normal")
; For Q-dir, ^X mapping does not work, use !X instead.
; ^X does not work to be sent, too, use Down/Up
; switch to left top (1), right top (2), left bottom (3), right bottom (4)
!u::Send, {LControl Down}{1 Down}{1 Up}{LControl Up}
!i::Send, {LControl Down}{2 Down}{2 Up}{LControl Up}
!j::Send, {LControl Down}{3 Down}{3 Up}{LControl Up}
!k::Send, {LControl Down}{4 Down}{4 Up}{LControl Up}
; Ctrl+q, menu Quick-links
'::Send, {LControl Down}{q Down}{q Up}{LControl Up}
; Keep the e key in Normal mode, use the right button and then press the refresh (e) function, do nothing, return to the e key directly
~e::
Return

#If
