**README**

This script enhances in-game notifications provided by txAdmin for events like player bans, warnings, and server restart timers.

**Installation:**

1. **Configure Notification Handlers in Client Script**: Set your preferred notification handler in the client script. Replace the `TriggerEvent('ac-lib:notify', ...)` line with your notification system, such as `exports['qb-core']:Notify(...)` or `ESX.ShowNotification(...)`.

2. **Set Notification Preferences in Server Script**: The notification settings (`kickedNotify`, `bannedNotify`, `warnedNotify`) are defined in the server script. Adjust them according to your preferences.

3. **Disable Chat Warnings in TxAdmin**: Navigate to TxAdmin settings, go to the Restarter section, and disable "Chat Warnings".

4. **Deploy the Script**: Place the script in your server's resource directory.

5. **Restart the Server**: After adding the script, restart your server to apply the changes.

**Installation in German (DE):**

1. **Benachrichtigungshandler im Client-Skript Konfigurieren**: Stelle deinen bevorzugten Benachrichtigungshandler im Client-code ein. Ersetze die Zeile `TriggerEvent('ac-lib:notify', ...)` durch dein Benachrichtigungssystem, z. B. `exports['qb-core']:Notify(...)` oder `ESX.ShowNotification(...)`.

2. **Benachrichtigungseinstellungen im Server-Skript Festlegen**: Die Einstellungen für Benachrichtigungen (`kickedNotify`, `bannedNotify`, `warnedNotify`) sind im Server-code definiert. Passe diese nach deinen Wünschen an.

3. **Chat-Warnungen in TxAdmin Deaktivieren**: Gehe zu den Einstellungen von TxAdmin, zum Bereich Restarter, und deaktiviere "Chat Warnings".

4. **Skript Einsetzen**: Füge  das script in das Ressourcenverzeichnis deines Servers ein.

5. **Server Neustarten**: Nachdem du das script hinzugefügt hast, starten deinen Server neu, um die Änderungen anzuwenden.

**Author:** BeansFL (add on discord for questions)
