# Local AI Chat

Double-click `run_chat.bat` to open the chat. Keep its window open. Select an installed model, enter a message, and click the arrow or press Enter. Shift+Enter adds a new line. The first response can be slow on an 8 GB computer.

Conversations are saved in this browser. Use **New conversation** to start another, and select a saved conversation in the sidebar to return to it. The trash icon removes that conversation. Existing chat history is carried into the new sidebar. Use **Copy response** below an answer or the export icon at the top to save a conversation as text. Switch light/dark mode at the bottom of the sidebar. On small screens, open the sidebar with the menu button at the top.

Choose a model from the drop-down. `qwen3:1.7b` and `qwen2.5:3b` are general chat models; `qwen2.5-coder:1.5b` is intended for code; `llama3.2:3b` and `gemma3:1b` provide other general-purpose choices. `deepseek-r1:1.5b` is a reasoning model. Models run locally after download; leave web search unchecked to use them offline. Click Refresh models after installing a new one. Larger models can be slower and may need other applications closed to free memory.

Check **Search the web** to send your latest question to a third-party search provider and give the model the returned snippets and links. Search can fail or return inaccurate information; check sources. This feature needs internet and the `ddgs` package in `.venv`.

Double-click `install_model.bat` to download other Ollama models or compatible Hugging Face GGUF repositories, for example `hf.co/USER/REPOSITORY:QUANTIZATION`. Model names and licenses differ; check the model card. Downloads use storage and internet. A full-size model may require hundreds of gigabytes of RAM. The default DeepSeek-R1 1.5B is a smaller distilled model, not the full DeepSeek-R1.

Local inference uses no paid API key or per-token charge. Context length, output length, memory, storage, speed, and search provider availability are finite. ChatGPT's proprietary models are not included. No external access is enabled: the web app listens on localhost only.

The launcher starts Ollama if it is not running. Ollama reads `OLLAMA_MODELS` when its server starts. If an existing server is running with a different model directory, it will use that server's directory. Stop the existing Ollama process before launching to switch directories. Ollama may use a compatible GPU automatically; this machine's Intel UHD graphics may run on CPU instead.
