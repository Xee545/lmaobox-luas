local font = draw.CreateFont("Consolas", 16, 500, FONTFLAG_OUTLINE, FONTFLAG_ADDITIVE)
local steamName = "User"
local InServer = false
local currentMap = "Map"
local fps = "0" 

local function watermark()

    -- Dumb way to do this maybe
    local aimbot = gui.GetValue("aim bot");
    local aim_fov = gui.GetValue("aim fov");
    local aim_method = gui.GetValue("aim method");
    local nospread = gui.GetValue("nospread")
    local norecoil = gui.GetValue("norecoil")
    local crithack = gui.GetValue("crit hack")
    local critmelee = gui.GetValue("melee crits")
    local backtrack = gui.GetValue("fake latency")
    local fl = gui.GetValue("fake latency value")
    local fakelag = gui.GetValue("fake lag")
    local fakelagval = gui.GetValue("fake lag value")
    local antiaim = gui.GetValue("anti aim")
    local pitch = gui.GetValue("anti aim - pitch")
    local yawreal = gui.GetValue("anti aim - yaw (real)")
    local yawfake = gui.GetValue("anti aim - yaw (fake)")
    local spinspeed = gui.GetValue("spin speed")
    local resolver = gui.GetValue("aim resolver")


    draw.SetFont(font)
    draw.Color( 50, 255, 50, 255 )

    if globals.FrameCount() % 100 == 0 then
        fps = math.floor(1 / globals.FrameTime())
    end

    steamName = steam.GetPlayerName(steam.GetSteamID())
    InServer = gamecoordinator.ConnectedToGC()
    currentMap = engine.GetMapName()

    if InServer == true then
        draw.Text( 200, 55, "Connected to Game Coordinator: Yes")
    else
        draw.Text( 200, 55, "Connected to Game Coordinator: No")
    end

    if aimbot == 1 then
        draw.Text( 200, 85, "Aimbot: On")

    else
        draw.Text( 200, 85, "Aimbot: Off")
    end

    if nospread == 1 then
        draw.Text( 200, 130, "No Spread: On")

    else
        draw.Text( 200, 130, "No Spread: Off")
    end

    if norecoil == 1 then
        draw.Text( 200, 145, "No Recoil: On")

    else
        draw.Text( 200, 145, "No Recoil: Off")
    end

    if backtrack == 1 then
        draw.Text( 200, 190, "Fake Latency: On")

    else
        draw.Text( 200, 190, "Fake Latency: Off")
    end

    if fakelag == 1 then
        draw.Text( 200, 220, "Fake Lag: On")

    else
        draw.Text( 200, 220, "Fake Lag: Off")
    end

    if antiaim == 1 then
        draw.Text( 200, 250, "Anti-Aim: On")

    else
        draw.Text( 200, 250, "Anti-Aim: Off")
    end

    if resolver == 1 then
        draw.Text( 200, 325, "AA Resolver: On")

    else
        draw.Text( 200, 325, "AA Resolver: On")
    end

    draw.Text( 200, 10, "LMAOBOX BETA | ShittyGenericWatermark.lua")
    draw.Text( 200, 25, "Welcome "..steamName.."")
    draw.Text( 200, 40, "FPS: "..fps.."")
    --  draw.Text( 200, 55, "Connected to Game Coordinator: ")
    draw.Text( 200, 70, "Map: "..currentMap.."")
    -- draw.Text( 200, 100, "Aimbot: "..aimbot.."")
    draw.Text( 200, 100, "Aim FOV: "..aim_fov.."")
    draw.Text( 200, 115, "Aim Method: "..aim_method.."")
    -- 130
    -- 145
    draw.Text( 200, 160, "Crit Hack: "..crithack.."")
    draw.Text( 200, 175, "Melee Crit Hack: "..critmelee.."")
    -- 190
    draw.Text( 200, 205, "Fake Latency Amount: "..fl.."")
    -- 220
    draw.Text( 200, 235, "Fake Lag Amount: "..fakelagval.."")

    draw.Text( 200, 265, "Pitch: "..pitch.."")
    draw.Text( 200, 280, "Yaw Real: "..yawreal.."")
    draw.Text( 200, 295, "Yaw Fake: "..yawfake.."")
    draw.Text( 200, 310, "Spin Speed: "..spinspeed.."")
    

end

printc(50, 255, 50, 100, "ShittyGenericWatermark.lua | Watermark loaded!")
engine.PlaySound("buttons/button3.wav")

callbacks.Register("Draw", "draw", watermark)