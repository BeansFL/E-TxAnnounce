local notifySettings = {
    kickedNotify = true,
    bannedNotify = true,
    warnedNotify = true
}


local function sendRestartAnnouncement(secondsRemaining)
    local timeAnnouncements = {
        [3600] = '60 Minutes',
        [1800] = '30 Minutes',
        [900] = '15 Minutes',
        [600] = '10 Minutes',
        [300] = '5 Minutes',
        [240] = '4 Minutes',
        [180] = '3 Minutes',
        [120] = '2 Minutes',
        [60] = '1 Minute'
    }

    local message = timeAnnouncements[secondsRemaining]
    if message then
        TriggerClientEvent('gh_txAnnouncer:SendRestartMessage', -1, message)
    end
end


local function sendPlayerActionMessage(eventData, action, settingKey)
    if notifySettings[settingKey] then
        local message = string.format("Player ID %s got %s by %s Reason: %s", eventData.target, action, eventData.author, eventData.reason)
        TriggerClientEvent('gh_txAnnouncer:SendKickedMessage', -1, message)
    end
end


AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    sendRestartAnnouncement(eventData.secondsRemaining)
end)

AddEventHandler('txAdmin:events:playerKicked', function(eventData)
    sendPlayerActionMessage(eventData, 'kicked', 'kickedNotify')
end)

AddEventHandler('txAdmin:events:playerBanned', function(eventData)
    sendPlayerActionMessage(eventData, 'banned', 'bannedNotify')
end)

AddEventHandler('txAdmin:events:playerWarned', function(eventData)
    sendPlayerActionMessage(eventData, 'warned', 'warnedNotify')
end)
