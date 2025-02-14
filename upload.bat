@echo off
:f
echo ----------------------[AutoUpload] Commiting----------------------
git add -A
git commit -m "Add files via git"
echo ---------------------- [AutoUpload] Pushing ----------------------
if "git push"; then
    echo [AutoUpload] Succeed!
else
    echo [AutoUpload] Failed!
    timeout /t 5
fi
cls
goto f