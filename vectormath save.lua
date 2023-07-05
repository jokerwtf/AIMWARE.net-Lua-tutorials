print(vector.Length(100, 100, 100));
print(vector.Add({0, 0, 0}, {100, 100, 100}));
print(vector.Add({0, 0, 0}, 100));
print(vector.Distance(0, 0, 0, 100, 100, 100));
print(vector.Distance({0, 0, 0 }, {100, 100, 100}));

local function OnDrawESP(builder)
    local ent = builder:GetEntity();
    local localply = entities.GetLocalPlayer();

    builder:AddTextTop("Distance: " .. vector.Distance({ent:GetAbsOrigin()}, {localply:GetAbsOrigin()}));
end

callbacks.Register("DrawESP", OnDrawESP);
