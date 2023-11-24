@echo off

:a
git pull
timeout /nobreak 3 >nul
goto a
