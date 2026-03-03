@echo off
if "%~2"=="" (
    echo Usage: copy-img.bat [source-filename] [dest-filename]
    echo Example: copy-img.bat puzzle_ai_preview_123.png puzzle-ai.png
    exit /b 1
)
copy "%USERPROFILE%\.gemini\antigravity\brain\e048c0bf-024d-4480-a7ae-084d2eb81b88\%~1" "%~dp0images\%~2" >nul
if %errorlevel%==0 (
    echo Done! Copied %~2 to images folder.
) else (
    echo Error: Could not find %~1
)
