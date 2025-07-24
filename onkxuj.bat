@echo off
cls
echo [38;2;50;200;255m[DISK SERIAL NUMBERS][0m
wmic diskdrive get SerialNumber 2>nul | find /v "SerialNumber" || echo [91m[ERROR] Unable to retrieve Disk Serial Numbers.[0m
echo.
echo [38;2;50;200;255m[MOTHERBOARD SERIAL NUMBER][0m
wmic baseboard get SerialNumber 2>nul | find /v "SerialNumber" || echo [91m[ERROR] Unable to retrieve Motherboard Serial Number.[0m
echo.
echo [38;2;50;200;255m[BIOS UUID][0m
wmic csproduct get UUID 2>nul | find /v "UUID" || echo [91m[ERROR] Unable to retrieve BIOS UUID.[0m
echo.
echo [38;2;50;200;255m[ACTIVE MAC ADDRESS][0m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2" get MACAddress 2>nul | find /v "MACAddress" || echo [91m[ERROR] Unable to retrieve MAC Address.[0m
pause