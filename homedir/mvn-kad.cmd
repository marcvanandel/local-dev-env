SET HOME_DIR=%userprofile%
SET SCRIPT_DIR=%~dp0
SET M2_SETTINGS_DIR=%HOME_DIR%\.m2
echo.
echo removing soft linked [settings.xml]
echo.
call rm %M2_SETTINGS_DIR%\settings.xml
echo.
echo create soft link to [settings-kadaster.xml]
echo.
call mklink %M2_SETTINGS_DIR%\settings.xml %M2_SETTINGS_DIR%\settings-kadaster.xml
echo.
echo done.
