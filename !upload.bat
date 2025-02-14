@echo off
:f
echo ----------------------[AutoUpload] Commiting----------------------
git add -A
git commit -m "Add files via git"
echo ---------------------- [AutoUpload] Pushing ----------------------

git push 2 | set ifSussess = %1
if %%i equ 0 (
    echo [AutoUpload] Success
) else (
    echo [AutoUpload] Error: %ifSussess%
    timeout /t 5
)
cls
goto f