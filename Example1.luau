local library, themes = loadstring(game:HttpGet("https://raw.githubusercontent.com/visnoukkk/Solaria.lol/refs/heads/main/Library.luau"))()

local dim2 = UDim2.new
local hex = Color3.fromHex 

	local window = library:window({name = "solaria.lol", size = dim2(0, 750, 0, 782)})

	local Legit = window:tab({name = "Legit"})
	local Rage = window:tab({name = "Rage"})
	local World = window:tab({name = "World"})
	local Visuals = window:tab({name = "Visuals"})
	local Misc = window:tab({name = "Misc"})

	Legit.open_tab() 

library:config_list_update()

for index, value in themes.preset do 
	pcall(function()
		library:update_theme(index, value)
	end)
end

task.wait()

library.old_config = library:get_config()
