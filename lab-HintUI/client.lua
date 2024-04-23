local isOpen = false

function Show(desc)
    SendNUIMessage({
        action = 'show',
        desc = desc,
    })
    isOpen = true
end

function Hide()
	SendNUIMessage({action = 'hide'})
    isOpen = false
end

RegisterCommand('hint', function()
	Show('Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem.')
end)

local keybind = lib.addKeybind({
    name = 'hint',
    description = 'Hide Hint',
    defaultKey = 'G',
    onPressed = function(self)
        if isOpen then
            Hide()
        end
    end
})

-- exports['lab-HintUI']:Show(desc)
-- exports['lab-HintUI']:Hide()