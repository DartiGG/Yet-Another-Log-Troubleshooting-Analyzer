========================================================================
             YALTA - Quick Start Guide (Windows)
========================================================================

1. INSTALLATION & SETUP
-----------------------
- Extract the archive to any folder.
- Open n8n in your browser (usually http://localhost:5678).
- Import 'YALTA_workflow.json' into n8n.
- Redact "Send to AI" Block with your own model and API
- Enable/Publish the workflow (toggle 'Active' to ON in top-right).

2. USAGE
--------
Open PowerShell or CMD in the folder containing yalta.ps1 and rules, then run:

  .\yalta.ps1 -FilePath "C:\path\to\your.log" -Type "ssh"

Available types: ssh | nginx | journalctl


3. EDITING RULES
----------------
Open 'rules.json' in Notepad to add or modify detection patterns.

Follow this format:

{
  "type1": [
    "string1.1",
    "string1.2"
  ],
  "type2": [
    "string2.1"
  ]
}

Note: Do not put a trailing comma after the last item in a list.
========================================================================