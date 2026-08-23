# YALTA — Yet Another Log Troubleshooting Analyzer

> **EN:** AI-powered local log analyzer for Windows, Linux, and macOS. Fast threat detection with pattern matching and deep LLM analysis for SSH, Nginx, Journalctl, Syslog, and Minecraft server logs.
>
> **RU:** Локальный ИИ-анализатор логов для Windows, Linux и macOS. Быстрое выявление угроз по правилам и глубокий анализ через LLM для SSH, Nginx, Journalctl, Syslog и серверов Minecraft.

---

## Features / Возможности

> **EN**
* **Dual-Mode Engine:** Runs rule-based pattern matching instantly and escalates anomalies to local LLM/AI.
* **Offline-First:** Continues working in rule-only mode if network/AI is unavailable.
* **Privacy Focused:** Processes logs locally via n8n without sending data to third-party clouds.
* **Cross-Platform CLI:** Native PowerShell (`.ps1`) and Bash (`.sh`) scripts included.
* **Extensible Rules:** Simple JSON structure for custom regex definitions.

> **RU**
* **Два режима работы:** Быстрый поиск совпадений по паттернам и автоматическая передача подозрительных строк нейросети для глубокого анализа.
* **Оффлайн-режим:** Продолжает корректно работать по правилам даже при отсутствии интернета или связи с ИИ.
* **Приватность прежде всего:** Логи обрабатываются исключительно на ваших устройствах и не передаются третьим лицам.
* **Кроссплатформенность:** Нативная поддержка PowerShell (`.ps1`) и Bash (`.sh`) «из коробки».
* **Расширяемые паттерны:** Простая и гибкая JSON-структура правил для кастомизации.

---

## Workflow Preview / Актуальный воркфлоу

<img width="1616" height="611" alt="YALTA n8n Workflow" src="https://github.com/user-attachments/assets/87df8cd7-53b9-409f-972f-36323bcd7c3d" />

---

## Roadmap / Планы по развитию

- [ ] **Telegram & Discord Alerts** — Instant notifications for suspicious log entries.
- [ ] **Daemon Mode & Cron Integration** — Scheduled log checking without manual execution.
- [ ] **Incremental Log Reading** — Parsing only new log lines since the last scan.
- [ ] **New Log Sources** — Out-of-the-box rules for Docker, Fail2ban, and PostgreSQL.
- [ ] **n8n Web UI Form** — Simple web upload interface for non-CLI users.

---

## License

Distributed under the MIT License. See `LICENSE` for more information.
