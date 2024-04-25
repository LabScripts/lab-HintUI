local hintUISettings = require 'config'

local isOpen = false

--- @param action string
--- @param data any
local function nuiMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

--- @param desc string
--- @param title? string
function Show(desc, title)
	nuiMessage('show', {desc = desc, title = title or hintUISettings.title})
	isOpen = true
end

exports('Show', Show)

function Hide()
	nuiMessage('hide')
    isOpen = false
end

exports('Hide', Hide)

local keybind = lib.addKeybind({
    name = hintUISettings.hide.name,
    description = hintUISettings.hide.description,
    defaultKey = hintUISettings.hide.defaultKey,
    onPressed = function()
    if not isOpen then return end
        Hide()
    end
})

if hintUISettings.testCommand.status then
    RegisterCommand(hintUISettings.testCommand.name, function()
        Show(hintUISettings.testCommand.description, 'Test title')
    end)
end

-- exports['lab-HintUI']:Show(desc, title) -> Title is optional
-- exports['lab-HintUI']:Hide()
