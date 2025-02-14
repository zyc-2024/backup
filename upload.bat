@echo off
:ooo
git add -A
git commit -m "Add files via git"
git push
@REM timeout /t 5
cls
goto ooo