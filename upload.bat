@echo off
:ooo
git add -A
git commit -m "Add files via git"
git push
timeout /t 5
cls
goto ooo