local function ExampleDrawingHook()
    draw.Color(220, 50, 50, 255);
    draw.Text(128, 128, tostring(common.Time()));
end

callbacks.Register("Draw", "ExampleDrawingHook", ExampleDrawingHook);
