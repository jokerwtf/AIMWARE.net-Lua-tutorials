local msc_ref = gui.Reference("MISC", "Part 1");
local msc_lua_checkbox = gui.Checkbox(msc_ref, "msc_lua_checkbox", "Lua Checkbox", false);

local wnd_luatest = gui.Window("wnd_luatest", "Lua GUI", 200, 200, 200, 400);
local lua_checkbox = gui.Checkbox(wnd_luatest, "lua_checkbox", "Checkbox", false);
local lua_slider = gui.Slider(wnd_luatest, "lua_slider", "Slider", 0, 0, 100);
local lua_keybox = gui.Keybox(wnd_luatest, "lua_keybox", "Keybox", 0);
local lua_combobox = gui.Combobox(wnd_luatest, "lua_combobox", "Combobox", "Combo1", "Combo2", "Combo3");

local lua_groupbox = gui.Groupbox(wnd_luatest, "Groupbox", 16, 200, 168, 100);
local lua_groupcheckbox = gui.Checkbox(lua_groupbox, "lua_groupcheckbox", "Group Checkbox", true);

local debugFont = draw.CreateFont("Tahoma", 60);

local function OnDraw()
    draw.SetFont(debugFont);
    if lua_checkbox:GetValue() then
        draw.Text(200, 200, "Checkbox is checked");
    end
    draw.Text(200, 300, "Slider: " .. lua_slider:GetValue());
end

callbacks.Register("Draw", "LuaGuiTest", OnDraw);
