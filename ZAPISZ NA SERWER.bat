@echo off

set name=UPDATE_%random%_%random%

git add .
git commit -am "%name%"
git push

