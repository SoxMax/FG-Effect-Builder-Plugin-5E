local function createAbilityEffectString()
    return parentcontrol.window.effect.getStringValue() .. ": " .. number_value.getStringValue()
end

local function createAbilityCheckEffectString()
    return "CHECK: " .. number_value.getStringValue() .. " " .. DataCommon.ability_stol[parentcontrol.window.effect.getStringValue()]
end


function createEffectString()
    if check_bonus.getValue() == 0 then
        return createAbilityEffectString()
    else
        return createAbilityCheckEffectString()
    end
end
