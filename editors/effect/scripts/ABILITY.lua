local function createAbilityEffectString()
    return parentcontrol.window.effect.getStringValue() .. ": " .. effect_modifier.getValue()
end

local function createAbilityCheckEffectString()
    return "CHECK: " .. effect_modifier.getValue() .. " " .. DataCommon.ability_stol[parentcontrol.window.effect.getStringValue()]
end


function createEffectString()
    if check_bonus.getValue() == 0 then
        return createAbilityEffectString()
    else
        return createAbilityCheckEffectString()
    end
end
