; Auto-execute section

; To apply these settings, RightClick -> VimMenu -> Settings -> Restore -> OK

;SetTitleMatchMode RegEx

; Vimium works better. No vim in text boxes
;VimGroup := "ahk_exe chrome.exe,ahk_exe firefox.exe,ahk_exe notepad++.exe,ahk_exe Skype.exe,ahk_exe Viber.exe,ahk_exe MySQLWorkbench.exe,ahk_exe msedge.exe,ahk_exe notepad.exe,ahk_exe explorer.exe,ahk_exe wordpad.exe,ahk_exe TeraPad.exe,Write:,ahk_exe POWERPNT.exe,ahk_exe WINWORD.exe,ahk_exe Evernote.exe,ahk_exe onenote.exe,OneNote,ahk_exe texworks.exe,ahk_exe texstudio.exe"
;VimGroup := "ahk_exe notepad++.exe,ahk_exe Skype.exe,ahk_exe Viber.exe,ahk_exe MySQLWorkbench.exe,ahk_exe notepad.exe,ahk_exe explorer.exe,ahk_exe wordpad.exe,ahk_exe TeraPad.exe,Write:,ahk_exe POWERPNT.exe,ahk_exe WINWORD.exe,ahk_exe Evernote.exe,ahk_exe onenote.exe,OneNote,ahk_exe texworks.exe,ahk_exe texstudio.exe"
; the  ahk_exe are RegExp too
VimGroup := "Gmail,Trello,Google Docs,ahk_exe notepad\+\+.exe,ahk_exe Skype.exe,ahk_exe Viber.exe,ahk_exe MySQLWorkbench.exe,ahk_exe notepad.exe,ahk_exe explorer.exe,ahk_exe wordpad.exe,ahk_exe TeraPad.exe,Write:,ahk_exe POWERPNT.exe,ahk_exe WINWORD.exe,ahk_exe Evernote.exe,ahk_exe onenote.exe,OneNote,ahk_exe texworks.exe,ahk_exe texstudio.exe"
VimSetTitleMatchMode := "RegEx"
VimSetTitleMatchModeFS := "Slow"

; When a at the end of the line, do not go to the next one
VimCheckChr := 1
; Milliseconds
VimIconCheckInterval := 15000


VimScriptPath := A_LineFile
Vim := new VimAhk()
Return

#Include %A_LineFile%\..\lib\vim_ahk.ahk
