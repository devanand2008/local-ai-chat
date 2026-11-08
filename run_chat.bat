@echo off
cd /d "%~dp0"
set "OLLAMA_MODELS=%~dp0models"
set "OLLAMA_NO_CLOUD=1"
if exist "%~dp0ollama\ollama.exe" set "PATH=%~dp0ollama;%PATH%"
if exist "%LOCALAPPDATA%\Programs\Ollama\ollama.exe" set "PATH=%LOCALAPPDATA%\Programs\Ollama;%PATH%"
where ollama >nul 2>&1 || (echo Ollama not found. Install it from https://ollama.com/download/windows & pause & exit /b 1)
curl -s http://127.0.0.1:11434/api/tags >nul 2>&1 || start "Ollama server" /min cmd /c "ollama serve"
echo Starting local chat at http://127.0.0.1:8765 ...
"%~dp0.venv\Scripts\python.exe" server.py
pause
