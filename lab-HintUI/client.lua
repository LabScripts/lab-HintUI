local isOpen = false

function Show(desc, title)
	if title then
		title = title
	else
		title = 'Current Task'
	end
    	SendNUIMessage({
        	action = 'show',
        	desc = desc,
		title = title,
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

-- exports['lab-HintUI']:Show(desc, title) -> Title is optional
-- exports['lab-HintUI']:Hide()
