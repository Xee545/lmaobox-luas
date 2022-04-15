local x = 20
local y = 4
local z = -12

local function override()

  client.RemoveConVarProtection( "tf_viewmodels_offset_override" )
  client.SetConVar( "tf_viewmodels_offset_override", x .. " " .. y .. " " .. z )
  
end

override()
print("VM Override Loaded!")
engine.PlaySound("buttons/button3.wav")
