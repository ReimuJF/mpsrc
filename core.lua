local ae = 1;


local function mpscrSlashCmdList(msg, editbox)
   if ( msg == "enable" ) then
      ae = 1;
      print("mpscr enabled")
      
   elseif( msg == "disable") then
      ae = 0;
      print("mpscr disabled")    
   elseif ( msg == "help") then
      print("use /enable or /disable argument")
   else
      if ae==1 then 
         print("mpscr ON")
      else
         print("mpscr OFF")
      end
   end
end

SLASH_MPSCR1 ='/mpscr'

SlashCmdList["MPSCR"] = mpscrSlashCmdList

local function TakeScreenShot()
   if ae == 1 then
      Screenshot()
   else
      print(":)")
   end 
end

local function delayTakeScreenshot()
   --print("test")
   C_Timer.After(3, function() TakeScreenShot() end)
end

local af = CreateFrame("Frame")
af:RegisterEvent("BANKFRAME_OPENED")
af:SetScript("OnEvent", delayTakeScreenshot)
