local last_spam  = globals.TickCount()

local function RadioSpam()
   if globals.TickCount() - last_spam > 32 then
       client.Command("getout")
       last_spam = globals.TickCount()
   end
end

callbacks.Register("Draw", "RadioSpam", RadioSpam);
