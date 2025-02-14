@echo off
:f
echo ----------------------[AutoUpload] Commiting----------------------
git add -A
git commit -m "Add files via git"
echo ---------------------- [AutoUpload] Pushing ----------------------
git push >nul 2>&1
if %errorlevel% equ 0 (
    echo Success
) else (
    echo Error
)
goto f