# EN

## **LM Studio**
1. Download a standard instruct LLM (non-reasoning, e.g. **ibm/granite-3.1-8b**). For an RTX 4060, ~8B models are optimal.
2. In Developer Settings, start the local server, select your model, and copy the server URL/IP.

## **n8n**
1. Import "YALTA_workflow.json" into n8n.
2. Enter the model details and credentials (API Key for LM Studio can be any placeholder string) in "send to AI" block.

## **cmd/powershell**
`.\yalta. -FilePath "C:\path\to\your.log" -Type "ssh"`

Available types: ssh | nginx | journalctl

## **Bash**

  `chmod +x yalta.sh`
  
  `./yalta.sh -f /path/to/your.log -t ssh`
  
  Available types: ssh | nginx | journalctl


---

# RU

## **LM Studio**
1. Установите обычную instruct-модель (без reasoning-логики вроде DeepSeek R1, например **ibm/granite-3.1-8b**). Для карт уровня RTX 4060 оптимальны модели на ~8B параметров.
2. В настройках разработчика запустите локальный сервер, выберите модель и скопируйте URL/IP сервера.

## **n8n**
1. Импортируйте файл "YALTA_workflow.json" в n8n.
2. Укажите данные подключения (в качестве API Key для LM Studio можно вписать любой случайный набор символов) в блоке "Send to AI"

## **cmd/powershell**
  `.\yalta.ps1 -FilePath "C:\path\to\your.log" -Type "ssh"`
  
Доступные сервисы: ssh | nginx | journalctl

## **Bash**

   `chmod +x yalta.sh`
   
  `./yalta.sh -f /path/to/your.log -t ssh`
  
  Доступные сервисы: ssh | nginx | journalctl
