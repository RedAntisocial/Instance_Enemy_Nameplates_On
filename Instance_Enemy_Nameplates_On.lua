local IENOF = CreateFrame("Frame")

-- Run on login and zone changes
IENOF:RegisterEvent("PLAYER_ENTERING_WORLD")
IENOF:RegisterEvent("ZONE_CHANGED_NEW_AREA")
IENOF:RegisterEvent("ZONE_CHANGED_INDOORS")
IENOF:RegisterEvent("ZONE_CHANGED")

local function IENO_UpdateNameplates()
    local inInstance = IsInInstance()
    if inInstance then
        SetCVar("nameplateShowAll", "1")
    else
        SetCVar("nameplateShowAll", "0")
    end
end

IENOF:SetScript("OnEvent", function(self, event, ...)
    IENO_UpdateNameplates()
end)

