@echo off
cd /d "%~dp0"
set "OLLAMA_MODELS=%~dp0models"
if exist "%~dp0ollama\ollama.exe" set "PATH=%~dp0ollama;%PATH%"
if exist "%LOCALAPPDATA%\Programs\Ollama\ollama.exe" set "PATH=%LOCALAPPDATA%\Programs\Ollama;%PATH%"
where ollama >nul 2>&1 || (echo Install Ollama first: https://ollama.com/download/windows & pause & exit /b 1)
curl -s http://127.0.0.1:11434/api/tags >nul 2>&1 || (start "Ollama server" /min cmd /c "ollama serve" & timeout /t 5 >nul)
echo Enter an Ollama model name, for example deepseek-r1:1.5b or qwen2.5:1.5b.
echo Hugging Face GGUF example: hf.co/USER/REPOSITORY:QUANTIZATION
set /p "MODEL=Model: "
if not defined MODEL exit /b 0
ollama pull "%MODEL%"
pause
