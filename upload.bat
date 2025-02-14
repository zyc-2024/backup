@echo off
:f
echo "[AutoUpload]commiting......"
git add -A
git commit -m "Add files via git"
echo "[AutoUpload]pushing......"
git push
@REM timeout /t 5
cls
goto f