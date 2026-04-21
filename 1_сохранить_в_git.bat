@echo off
cd /d "%~dp0"

echo STEP 1: pull
git pull origin main || exit /b 1

echo STEP 2: add
git add . || exit /b 1

echo STEP 3: commit
set MSG=auto save
git commit -m "%MSG%"

echo STEP 4: push
git push origin main || exit /b 1

echo DONE
