@echo off
:f
echo ----------------------[AutoUpload] Commiting----------------------
git add -A
git commit -m "Add files via git"
echo ---------------------- [AutoUpload] Pushing ----------------------
set ifSussess = 0
git push 2>%%ifSussess
if %%i equ 0 (
    echo [AutoUpload] Success
) else (
    echo [AutoUpload] Error: %%ifSussess
    timeout /t 5
)
cls
goto f