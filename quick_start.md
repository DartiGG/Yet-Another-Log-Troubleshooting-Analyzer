# Quick Start / Быстрый старт

## EN

### 1. LM Studio Setup
1. Download a standard instruct LLM (non-reasoning, e.g. **ibm/granite-3.1-8b**). For GPUs like RTX 4060, ~8B models are optimal.
2. In Developer Settings, start the local server, select your model, and copy the server URL/IP.

### 2. n8n Setup
1. Import `YALTA_workflow.json` into n8n and make sure the workflow is active.
2. Enter the model details and credentials (any string works as an API Key for LM Studio) in the "Send to AI" block.

### 3. Usage

**PowerShell (Windows):**

.\yalta.ps1 -FilePath "C:\path\to\your.log" -Type "ssh"

Bash (Linux / macOS):

chmod +x yalta.sh
./yalta.sh -f /path/to/your.log -t ssh

Available log types: ssh | nginx | journalctl | syslog | minecraft

## RU
### 1. Настройка LM Studio
1. Скачай обычную instruct-модель (без reasoning-логики вроде DeepSeek R1, например ibm/granite-3.1-8b). Для видеокарт уровня RTX 4060 оптимальны модели на ~8B параметров.
2. В настройках разработчика запусти локальный сервер, выбери модель и скопируй URL/IP сервера.

### 2. Настройка n8n
1. Импортируй файл `YALTA_workflow.json` в n8n и включи воркфлоу.
2. Укажи данные подключения (в качестве API Key для LM Studio можно вписать любой набор символов) в блоке "Send to AI".

### 3. Запуск анализа

**PowerShell (Windows):**

.\yalta.ps1 -FilePath "C:\path\to\your.log" -Type "ssh"

**Bash (Linux / macOS):**

chmod +x yalta.sh
./yalta.sh -f /path/to/your.log -t ssh

Доступные сервисы: ssh | nginx | journalctl | syslog | minecraft
