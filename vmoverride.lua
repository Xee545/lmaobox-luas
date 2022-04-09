local font = draw.CreateFont("Consolas", 0, 0)

-- This is a really stupid way of getting a loop to work, too bad.
local function why()

    draw.SetFont(font)
    draw.Color( 0, 0, 0, 0 )

    client.Command( "tf_viewmodels_offset_override 20 4 -12", true )

    draw.Text( 1, 1, "" )

end

print("VM Override Loaded!")
engine.PlaySound("buttons/button3.wav")

callbacks.Register("Draw", "draw", why)
