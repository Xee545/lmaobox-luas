local ping = 0 -- This might be useless, if so remove it
local font = draw.CreateFont("Consolas", 16, 500, FONTFLAG_OUTLINE, FONTFLAG_ADDITIVE)

local function PingIndicator()
  
  local InServer = clientstate.GetClientSignonState() -- Check if the player is fully is a game.
  -- I'm gonna make a alt version of this bullshit that prints/shows the status of each variable.
  
  if InServer == true then 
    
    local me = entities.GetLocalPlayer()
    local ping = entities.GetPlayerResources():GetPropDataTableInt("m_iPing")[me:GetIndex()]
    -- I don't know why, I dont want to know why, I shouldn't have to wonder why, but ping returns as zero. There has to be a better way of doing this right???
    
    if ping > 100 then -- Could it be because of this? If it is then that is complete bullshit.
                       -- NOTE: My brain caught onto the fact that I didn't add the "then" statement. If this was the fix, I don't deserve to code anymore.
   
      draw.SetFont(font)
      draw.Color( 250, 255, 0, 255 )
      draw.Text( 10, 500, "⚠ "..ping )
     
    end
    
end
  
callbacks.Register("Draw", "draw", PingIndicator) 
