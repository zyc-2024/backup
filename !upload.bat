@echo off
:f
echo ----------------------[AutoUpload] Commiting----------------------
git add -A
git commit -m "Add files via git"
echo ---------------------- [AutoUpload] Pushing ----------------------
git push 2>%%i
if %%i equ 0 (
    echo [AutoUpload] Success
) else (
    echo [AutoUpload] Error: %%i
    timeout /t 5
)
cls
goto f