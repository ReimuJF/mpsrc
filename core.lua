local function TakeScreenShot()
	Screenshot()
end
 
local af = CreateFrame("Frame")
af:SetScript("OnEvent", TakeScreenShot)
af:RegisterEvent("CHALLENGE_MODE_COMPLETED")

--local f = CreateFrame("Frame")
--f:SetScript("OnEvent", TakeScreenShot)
--f:RegisterEvent("ACHIEVEMENT_EARNED")