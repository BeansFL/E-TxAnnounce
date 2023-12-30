-- Function to handle notifications
function TriggerNotification(message, type)
    TriggerEvent('ac-lib:notify', message, 8000, type) --- replace to your notify
    -- exports['qb-core']:Notify(message, type, length)
    -- ESX.ShowNotification(message)
end

-- Function to send a restart notification
function SendRestartMessage(timeLeft)
    TriggerNotification("Server restarting in " .. timeLeft, "info")
end

-- Function to send a kicked message notification
function SendKickedMessage(msg)
    TriggerNotification(msg, "info")
end

-- Registering the events
RegisterNetEvent("gh_txAnnouncer:SendRestartMessage", function(timeLeft)
    SendRestartMessage(timeLeft)
end)

RegisterNetEvent("gh_txAnnouncer:SendKickedMessage", function(msg)
    SendKickedMessage(msg)
end)
