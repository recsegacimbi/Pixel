@echo off

endlocal
sc delete "wuauserv" >nul 2>&1
sc delete "WaaSMedicSvc" >nul 2>&1
sc delete "UsoSvc" >nul 2>&1 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v PausedFeatureStatus /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v PausedQualityStatus /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v FlightSettingsMaxPauseDays /t REG_DWORD /d 3650 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseFeatureUpdatesEndTime /t REG_SZ /d "3000-11-06T14:03:37Z" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseFeatureUpdatesStartTime /t REG_SZ /d "2023-11-06T14:03:37Z" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseQualityUpdatesEndTime /t REG_SZ /d "3000-11-06T14:03:37Z" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseQualityUpdatesStartTime /t REG_SZ /d "2023-11-06T14:03:37Z" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseUpdatesExpiryTime /t REG_SZ /d "3000-11-06T14:03:37Z" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v PauseUpdatesStartTime /t REG_SZ /d "2023-11-06T14:03:37Z" /f >nul 2>&1
del "C:\Windows\System32\DoSvc.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\DoSvc.dll.mui" /s /f /q >nul 2>&1
del "C:\Windows\System32\MoNotificationUxStub.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\MusUpdateHandlers.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\MusUpdateHandlers.dll.mui" /s /f /q >nul 2>&1
del "C:\Windows\System32\MusUpdateHandlers1.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\MusUpdateHandlers1.dll.mui" /s /f /q >nul 2>&1
del "C:\Windows\System32\Sihclient.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\sihclient.exe.mui" /s /f /q >nul 2>&1
del "C:\Windows\System32\UIEOrchestrator.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\UpdateAgent.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\UpdateCompression.dll" /s /f /q >nul 2>&1
del "C:\Windows\SysWOW64\UpdateCompression.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\updatecsp.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\updatepolicy.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\UpdatePolicy.dll.mui" /s /f /q >nul 2>&1
del "C:\Windows\System32\UpdateReboot.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\UpgradeResultsUI.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\UpgradeResultsUI.exe.mui" /s /f /q >nul 2>&1
del "C:\Windows\System32\upfc.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\UsoClient.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\WaaSAssessment.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\WaaSMedicPS.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\WaaSMedicSvc.dll" /s /f /q >nul 2>&1
del "C:\Windows\System32\wuauclt.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\wusa.exe" /s /f /q >nul 2>&1
del "C:\Windows\System32\en-US\wusa.exe.mui" /s /f /q >nul 2>&1
del "C:\Windows\SysWOW64\wusa.exe" /s /f /q >nul 2>&1
rd /s /q "C:\Windows\UUS" >nul 2>&1
exit