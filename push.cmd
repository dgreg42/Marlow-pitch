@echo off
REM Marlow investor overview, first push.
REM Remote is already set below. Just double click, or run:  push.cmd
REM Pass a different URL as an argument to override it.
REM Run it from inside this folder. It does not touch the brand kit repo.

setlocal
set REPO=%~1
if "%REPO%"=="" set REPO=https://github.com/dgreg42/Marlow-pitch.git

echo.
echo   Pushing to %REPO%
echo.

git init
git add index.html assets netlify.toml robots.txt README.md
git -c user.email=dangregoras@gmail.com -c user.name="Dan Gregoras" commit -m "marlow investor overview, first pass"
git branch -M main
git remote remove origin 2>nul
git remote add origin %REPO%
git push -u origin main

echo.
echo   Pushed. Now in Netlify: Add new site, Import an existing project,
echo   pick Marlow-pitch, leave the build command empty, publish directory is a single dot.
echo.
pause
endlocal
