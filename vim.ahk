﻿; Auto-execute section
VimGroup := "ahk_exe chrome.exe,ahk_exe firefox.exe,ahk_exe notepad++.exe,ahk_exe Skype.exe,ahk_exe Viber.exe,ahk_exe MySQLWorkbench.exe,ahk_exe msedge.exe,ahk_exe notepad.exe,ahk_exe explorer.exe,ahk_exe wordpad.exe,ahk_exe TeraPad.exe,Write:,ahk_exe POWERPNT.exe,ahk_exe WINWORD.exe,ahk_exe Evernote.exe,ahk_exe Code.exe,ahk_exe onenote.exe,OneNote,ahk_exe texworks.exe,ahk_exe texstudio.exe"

VimScriptPath := A_LineFile
Vim := new VimAhk()
Return

#Include %A_LineFile%\..\lib\vim_ahk.ahk
