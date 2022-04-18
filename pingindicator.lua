local ping = 0 -- Prob useless.
local font = draw.CreateFont("Consolas", 16, 500, FONTFLAG_OUTLINE, FONTFLAG_ADDITIVE)

local function PingIndicator()
  
  local InServer = clientstate.GetClientSignonState() -- Check if the player is fully is a game.
  
  if InServer == true then -- This should work I think. I ain't at my house (as of making this) so I can't test this bs
    
    local me = entities.GetLocalPlayer()
    local ping = entities.GetPlayerResources():GetPropDataTableInt("m_iPing")[me:GetIndex()]
    
    if ping > 100
      
      draw.SetFont(font)
      draw.Color( 250, 255, 0, 255 )
      draw.Text( 10, 500, "⚠ "..ping )
     
    end
end
  
callbacks.Register("Draw", "draw", PingIndicator) 
